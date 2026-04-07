# PDF Extraction Rules

How the LLM agent extracts text from PDFs during ingest. PDFs are different from markdown clippings — the source-of-truth text isn't already in the file the agent reads, so an extraction step has to happen first and the result has to be persisted into the clipping markdown so the wiki keeps a permanent searchable record.

> **Why these rules exist**: PDF tools are OS-specific and shouldn't pollute the repo. The extracted text *should* be persisted because it's the data the wiki is built from.

## Protocol

### Phase 1 — Detect a working PDF→text tool

Check in priority order. **First match wins.**

1. **`pdftotext`** (poppler-utils) — fastest, most reliable, plain-text output
   - macOS install: `brew install poppler`
   - Debian/Ubuntu: `apt-get install poppler-utils`
   - Detect: `which pdftotext`
2. **`mutool`** (MuPDF tools) — fallback if pdftotext not present
   - macOS install: `brew install mupdf-tools`
   - Detect: `which mutool`
3. **Local pure-Python install at `.instructions/tools/pdf-extract/`** with `pypdf`
   - Pure Python, no system packages, works anywhere `python3` exists
   - Detect: `test -f .instructions/tools/pdf-extract/extract.py && /usr/bin/python3 .instructions/tools/pdf-extract/extract.py --check`
   - **Bootstrap if missing** — see "Bootstrap" below

If none of the above are present and bootstrap fails, **halt the ingest** and tell the user explicitly which tools were tried and why each failed. Do not silently fall back to skipping the PDF.

### Phase 2 — Extract text

Run the chosen tool on the PDF in `raw/assets/<filename>.pdf`. Capture stdout. Verify the output is non-empty and looks like text (not binary garbage). If verification fails, escalate to the next tool in the priority list.

**Verification heuristic**: at least 200 characters of output, with a printable-ASCII ratio above 0.85. If a PDF is image-based / scanned and produces no usable text, **halt** and tell the user — OCR is out of scope for this rule. The user can run OCR separately and provide a text version.

### Phase 3 — Inject extracted text into the clipping MD

Find the clipping `.md` file in `raw/` that references the PDF (typically the file that contains `![[<PDF filename>.pdf]]` as an Obsidian embed). If no clipping file exists, create a minimal one using the [PDF source template](../templates/pdf-source.md).

Inject the extracted text **below** any existing content using these exact markers so future runs can detect prior extractions:

```markdown
<!-- pdf-extract:begin tool=<tool_name> version=<version> date=<YYYY-MM-DD> -->
## Extracted Text

> Extracted YYYY-MM-DD via {tool name + version}. Source: `raw/assets/{pdf filename}`.
> {page count, e.g. "13 pages"}.

{full extracted text}
<!-- pdf-extract:end -->
```

The markers are HTML comments so they survive Obsidian rendering without showing up in the reader view, and they let an idempotent re-extract replace the block in place if you ever re-run with a better tool.

If a `pdf-extract:begin` block already exists in the file, **do not duplicate it** — either skip extraction (if the tool/date/length match what's already there) or replace the block in place (if re-extracting with a better tool).

### Phase 4 — Continue ingest as normal

Once the clipping MD has the extracted text inline, the rest of the ingest follows the standard [ingest prompt](../prompts/ingest.md). The clipping MD is now just a normal markdown source. **Phase 1 of ingest still pauses for user approval before any wiki pages get written.**

## Bootstrap (pure Python with `pypdf`, network-share friendly)

When the priority-1 and priority-2 system tools are missing, install `pypdf` to a local target directory under `.instructions/tools/pdf-extract/lib`. **This entire directory is gitignored** — the canonical recreation steps live in this rule file.

> **Why `--target` and not `python3 -m venv`?** Venvs use symlinks and run an `ensurepip` bootstrap that performs many small file operations. On macOS over SMB/NFS network shares (the original setup target), the venv approach is fragile: `ensurepip` can hang on file locks, and the resulting `bin/` may be missing `pip` entirely. The `--target` approach uses one big extract and avoids symlinks — much more reliable on network shares.

### One-time install

```bash
mkdir -p .instructions/tools/pdf-extract/lib
/usr/bin/pip3 install --quiet --target .instructions/tools/pdf-extract/lib pypdf
```

**Note on speed over network shares**: a fresh install of `pypdf` over SMB/NFS can take 2–5 minutes because each file in the package round-trips over the network. This is normal — wait it out. On a local SSD, the same install completes in under 5 seconds.

### Verify the install

```bash
PYTHONPATH=.instructions/tools/pdf-extract/lib /usr/bin/python3 -c "import pypdf; print('pypdf', pypdf.__version__)"
```

Should print `pypdf 6.x.x` (or whatever was installed). If it prints `ModuleNotFoundError`, the install is incomplete — re-run the install command.

### Drop the extractor script

Save the following as `.instructions/tools/pdf-extract/extract.py`. **This is the canonical source — recreate from here on a fresh clone**, since `.instructions/tools/` is gitignored.

```python
#!/usr/bin/env python3
"""PDF text extractor for the wiki ingest workflow.

Usage: python extract.py <path-to-pdf>
Prints extracted text to stdout. Exit code 0 on success, non-zero on failure.

Extraction uses pypdf. The first line of output is a header in the form:
    # pypdf <version> | <pages> pages | <pdf filename>
so the caller can capture provenance metadata for the injection block.

Bootstrap location: this script lives in `.instructions/tools/pdf-extract/extract.py`
and expects the pypdf package to be installed alongside it under `lib/`.
The canonical source for this file is `.instructions/rules/pdf-extraction.md` —
recreate from there on a fresh clone.
"""
import sys
from pathlib import Path

# Add the local --target install directory to sys.path so pypdf can be imported
# without needing a venv (more robust on network shares).
HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE / "lib"))

try:
    import pypdf
except ImportError:
    print("ERROR: pypdf not installed. Run: pip3 install --target {}/lib pypdf".format(HERE), file=sys.stderr)
    sys.exit(2)

if len(sys.argv) != 2:
    print("Usage: python extract.py <path-to-pdf>", file=sys.stderr)
    sys.exit(64)

pdf_path = Path(sys.argv[1])
if not pdf_path.is_file():
    print(f"ERROR: not a file: {pdf_path}", file=sys.stderr)
    sys.exit(66)

try:
    reader = pypdf.PdfReader(str(pdf_path))
except Exception as e:
    print(f"ERROR: pypdf failed to open {pdf_path}: {e}", file=sys.stderr)
    sys.exit(74)

pages = []
for i, page in enumerate(reader.pages):
    try:
        pages.append(page.extract_text() or "")
    except Exception as e:
        print(f"WARNING: page {i+1} extraction failed: {e}", file=sys.stderr)
        pages.append("")

text = "\n\n".join(pages).strip()

# Verify the output looks like text (not binary garbage / not empty)
if len(text) < 200:
    print(f"ERROR: extracted text suspiciously short ({len(text)} chars) — PDF may be image-based / scanned", file=sys.stderr)
    sys.exit(65)

printable = sum(1 for c in text if c.isprintable() or c in "\n\r\t")
ratio = printable / max(1, len(text))
if ratio < 0.85:
    print(f"ERROR: printable-ASCII ratio {ratio:.2f} below 0.85 — looks like binary garbage", file=sys.stderr)
    sys.exit(65)

# Header line for provenance capture by the caller
print(f"# pypdf {pypdf.__version__} | {len(reader.pages)} pages | {pdf_path.name}")
print()
print(text)
```

### Running the extractor

```bash
/usr/bin/python3 .instructions/tools/pdf-extract/extract.py "raw/assets/<filename>.pdf"
```

The first line of stdout is the provenance header (use it for the injection block); the rest is the extracted text. Non-zero exit means extraction failed — read stderr for the reason. Always invoke via `/usr/bin/python3` (Apple's vendored Python) to keep behavior consistent across Macs sharing the install.

## Cross-Mac portability (when the repo lives on a shared drive)

If multiple Macs share the same repo over a network share, **the `.instructions/tools/pdf-extract/` install IS portable across them** — but only because of two specific design choices:

1. **`pypdf` is pure Python** (no compiled C extensions). The bytecode and .py files in `lib/` work on any Python 3.8+ regardless of which Mac built them.
2. **The script invokes `/usr/bin/python3` explicitly**, which is Apple's vendored Python from Command Line Tools. This is present on every modern Mac and ABI-compatible across Macs running the same major macOS version family.

**What would break portability**:
- Adding any package with compiled extensions (e.g., `lxml`, `pillow`, `numpy`, `cryptography`, `pdfplumber`'s full dependency tree). These ship `.so` files compiled for one specific Python ABI and CPU architecture (arm64 vs x86_64) and **will not work** on a different Mac without reinstalling.
- Switching to a venv-based install. Venvs symlink to a specific Python interpreter path, which may differ between Macs (e.g., one has Xcode installed and one doesn't).
- Using a third-party Python (Homebrew Python, pyenv, conda) instead of `/usr/bin/python3`. The third-party Python may not exist on the other Mac.

**Discipline for future additions to `.instructions/tools/`**: prefer pure-Python packages. If a non-pure-Python tool is needed, document explicitly in this rule that it must be reinstalled per-Mac and consider whether the wiki can do without it.

## Failure modes the agent should call out explicitly

| Symptom | What it means | What to do |
|---|---|---|
| All three tools missing and bootstrap fails | No Python 3, or pip install blocked | **Halt**. Tell the user the exact error and ask permission before installing system packages. |
| `pip install` hangs >5 min over network share | Network share is slow but install is progressing | **Wait it out**. Check `ps` to confirm pip is still running before killing. Look for files appearing under `lib/` to confirm progress. |
| `python3 -m venv` produces a `bin/` with no `pip` | Network share + ensurepip incompatibility | **Don't use venv**. Use the `pip3 install --target` path documented above. |
| `rm -rf` of a partial venv install fails with "Directory not empty" | Background `ensurepip` process still holding files open | `ps aux \| grep ensurepip` and `kill -9` the orphaned PID, then retry `rm -rf`. |
| Extracted text < 200 chars | PDF is image-based, scanned, or encrypted | **Halt**. Tell the user OCR is out of scope; they can run `ocrmypdf` themselves or provide a text version. |
| Printable ratio < 0.85 | Binary garbage (encrypted PDF, font-substitution failure) | **Halt**. Same as above. |
| Some pages extract, others don't | Mixed text + image PDF | **Continue** but flag the warnings in the injection block's preamble so future-you knows to re-extract with a better tool. |
| `pdf-extract:begin` block already present | Prior extraction exists | **Skip re-extraction** unless the user explicitly asked for a re-run with a different tool. |

## What this rule does NOT do

- **Does not commit any tool installation.** `.instructions/tools/` is gitignored. Re-bootstrap is part of the rule.
- **Does not OCR scanned PDFs.** OCR adds significant dependencies (Tesseract, etc.) and is out of scope. The user can pre-process scanned PDFs externally.
- **Does not modify wiki files.** Only the clipping MD in `raw/` is modified. The standard ingest prompt handles wiki page creation, with the usual Phase 1 user-approval pause.
- **Does not commit tool name or version mentions to the wiki.** The injection block lives in `raw/` (gitignored). Wiki source-summary pages can mention "PDF source" generically but should not pin a specific extractor — that's per-installation detail.

## See Also

- [`pdf-source.md` template](../templates/pdf-source.md) — clipping template for fresh PDF sources
- [`ingest.md` prompt](../prompts/ingest.md) — the standard ingest flow that runs after PDF extraction
- [`page-conventions.md`](page-conventions.md) — wiki frontmatter and structure rules
