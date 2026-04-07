# LLM Wiki Schema

This vault is a **personal knowledge base** maintained by an LLM agent. The human curates sources, directs analysis, and asks questions. The LLM does all summarizing, cross-referencing, filing, and maintenance.

## Wiki Scope

This wiki tracks **AI tools, techniques, and workflows for developers** — production agent architecture, the planning-first AI coding stack, the local-AI throughput layer, agent proactivity/memory primitives, AI ethics and policy as industry-observability signal, business models in the post-SaaS world, and personal hardware capacity for local inference. Adjacent topics are in scope when they materially affect the above (e.g., self-hosting infrastructure, defensive network security for self-hosted AI rigs).

> **Important**: this scope statement is the **only** place where the wiki's topic focus lives. Everything in `.instructions/` is intentionally topic-agnostic — the same prompts, templates, and rules would work for any LLM-maintained personal knowledge base. When the lint prompt asks "is this page off-topic?", the answer is determined by *this section* of `CLAUDE.md`, not by any rule file.

## Git Rules

- Never add `Co-Authored-By` or any Claude attribution to commit messages.
- Commits should appear under the repo owner's account only.

## Roles

- **Human**: Adds sources to `raw/`, asks questions, directs analysis, reviews wiki pages.
- **LLM**: Reads sources, writes and maintains all files in `wiki/`, updates index and log. After ingesting a source, moves it from `raw/` to `raw/archive/`.

## Directory Structure

**Generic structure** (works for any LLM-maintained second brain):

```
research/
  CLAUDE.md          # Top-level rules + topic scope + project-specific declarations
  .instructions/     # Versioned, reusable prompts, templates, and detailed rules
    prompts/         # Callable prompts (ingest, lint, clean-data, orphans, ...)
    templates/       # Page templates (source-summary, person-page, ...)
    rules/           # Detailed protocols referenced from prompts
    tools/           # ⚠️ GITIGNORED — per-installation helpers (PDF extractors, etc.)
  raw/               # Unprocessed source documents (gitignored except memories/)
    archive/         # Already-ingested sources
    assets/          # Downloaded images and attachments
      archive/       # Archived asset files paired with archived clipping MDs
    memories/        # Atomized memory snippets for RavenBrain MCP (versioned)
    *.md             # New sources awaiting ingest
  wiki/              # LLM-generated and LLM-maintained markdown
    index.md         # Page catalog
    log.md           # Chronological record of operations
    overview.md      # High-level synthesis
    hot.md           # Hot cache: ~500 words of current context (read first)
    tasks.md         # Running investigation checklist
    people/          # Person entity pages
    tools/           # Commercial / hosted tool entity pages
    open-source/     # OSS project entity pages
    concepts/        # Idea / framework / technique pages
    analyses/        # Analysis and comparison pages
    sources/         # Source summaries and notable-document entity pages
```

**Project-specific additions** for this wiki (declared here, not in `.instructions/`):

```
research/
  raw/
    benchmarks/      # Raw Geekbench AI exports (project: hardware benchmarks)
  wiki/
    business/        # Business patterns / sales playbooks (project: AI as business)
    benchmarks/      # Personal hardware benchmark section (project: hardware benchmarks)
```

When adding a new project-specific data subdirectory under `raw/` or new wiki section, add it to the project-specific block above so the ingest prompt knows to skip it during source listing.

## Reusable prompts

The user invokes these by name (e.g. *"run the ingest prompt"*). Each one is a complete, self-contained protocol. **Read the prompt file when invoked — do not summarize from memory.**

| Prompt | Path | Purpose |
|--------|------|---------|
| Ingest | `.instructions/prompts/ingest.md` | Add new sources from `raw/` into the wiki |
| Lint | `.instructions/prompts/lint.md` | Quality audit — duplicates, contradictions, stale content |
| Orphans | `.instructions/prompts/orphans.md` | Link-graph audit — orphaned pages and dangling links |
| Clean Data | `.instructions/prompts/clean-data.md` | Mechanical hygiene — frontmatter, naming, tags, encoding |
| Benchmark Add | `.instructions/prompts/benchmark-add.md` | Add or update a Geekbench AI rig benchmark |

## Templates

| Template | Path | Used by |
|----------|------|---------|
| Source summary | `.instructions/templates/source-summary.md` | Ingest prompt |
| YouTube source | `.instructions/templates/youtube-source.md` | Ingest prompt (whenever the source is a YouTube video — has additional sponsor/bias rules) |
| PDF source | `.instructions/templates/pdf-source.md` | Ingest prompt (whenever the source is a PDF — paired with PDF extraction rule) |
| Person page | `.instructions/templates/person-page.md` | Ingest prompt (for any new author) |
| Memory snippet | `.instructions/templates/memory.md` | Ingest prompt (Phase 4) |
| Benchmark rig | `.instructions/templates/benchmark-rig.md` | Benchmark Add prompt |

**Important YouTube rule:** when ingesting a YouTube video, never create a wiki entity for the video's sponsor, even if the sponsor is on-topic. See [`youtube-source.md`](.instructions/templates/youtube-source.md) for the full sponsorship and product-placement bias protocol.

## Rules

Detailed rules live in `.instructions/rules/`. Read these on demand, not preemptively.

| Rules file | Covers |
|-----------|--------|
| `.instructions/rules/page-conventions.md` | Frontmatter, page types & folders, wikilinks, quality bar |
| `.instructions/rules/memory-rules.md` | RavenBrain memory format, tag taxonomy, what to capture |
| `.instructions/rules/hot-cache-rules.md` | What goes in `wiki/hot.md` and what doesn't |
| `.instructions/rules/index-rules.md` | Format and content of `wiki/index.md` |
| `.instructions/rules/pdf-extraction.md` | How to detect/install/run a PDF→text tool and inject the result into the clipping MD |

## Operations (high-level)

- **Ingest** — see [`.instructions/prompts/ingest.md`](.instructions/prompts/ingest.md). Always pause for approval after the Phase 1 plan.
- **Query** — read `wiki/hot.md` then `wiki/index.md`, then load only the relevant pages. Synthesize with citations. Optionally file the answer as an `analysis` page if the user agrees.
- **Lint** — see [`.instructions/prompts/lint.md`](.instructions/prompts/lint.md). Audit-only first; never fix without approval.
- **Benchmark add** — see [`.instructions/prompts/benchmark-add.md`](.instructions/prompts/benchmark-add.md). A rig is identified by CPU + motherboard.

## Session Start Checklist

1. Read `CLAUDE.md` (this file).
2. Read `wiki/hot.md` — fast context, do not skip.
3. Read `wiki/index.md` — full page catalog.
4. Read last ~20 entries of `wiki/log.md` — recent activity.
5. Glance at `wiki/tasks.md` — note any open items relevant to the session.
6. Do **not** read individual wiki pages unless the user's request requires it.
7. Ask the user what they'd like to do: ingest, query, lint, or explore.
