# PDF Source Template

Use this template when ingesting a PDF document. The clipping markdown lives in `raw/<title>.md` and the PDF itself in `raw/assets/<title>.pdf`. This is the same layout Obsidian Web Clipper produces by default.

> **Important**: extraction itself is governed by [`pdf-extraction.md`](../rules/pdf-extraction.md). This template just defines the clipping-file shape so the extraction step can find and update it consistently.

## Layout on disk

```
raw/
  <Title>.md          ← clipping file (this template)
  assets/
    <Title>.pdf       ← the actual PDF
```

The clipping `.md` file uses an Obsidian embed (`![[Title.pdf]]`) so the PDF renders inline in Obsidian, plus an injected `## Extracted Text` block (added by the extraction protocol) that holds the searchable plain text.

## Frontmatter

```yaml
---
title: "{Document Title}"
source: "{URL where the PDF was downloaded — leave blank if local-only}"
author:
  - "[[Author Name]]"
published: YYYY-MM-DD
created: YYYY-MM-DD
description: "{1–2 sentence summary if known, otherwise blank}"
tags:
  - "clippings"
  - "pdf"
---
```

If the clipping was created by Obsidian Web Clipper, several of these fields may be blank — the agent should fill them in during ingest using the extracted text and the URL bar / file metadata.

## Body shape (post-extraction)

After running the [PDF extraction protocol](../rules/pdf-extraction.md), the body should look like:

```markdown
![[Title.pdf]]

<!-- pdf-extract:begin tool=<tool_name> version=<version> date=YYYY-MM-DD -->
## Extracted Text

> Extracted YYYY-MM-DD via {tool}. Source: `raw/assets/{filename}`. {N} pages.

{full extracted text — paragraphs preserved, page breaks marked with blank lines}
<!-- pdf-extract:end -->
```

The Obsidian embed (`![[Title.pdf]]`) is preserved at the top so the PDF still renders inline in Obsidian's reader view. The extracted text below it is what the LLM actually reads during the rest of the ingest.

## After extraction, ingest as normal

Once the extracted text block exists, the clipping MD is treated like any other markdown source:

1. Phase 1 of [`ingest.md`](../prompts/ingest.md) — pre-ingest assessment (still pauses for user approval)
2. Phase 2 — write source summary + entity/concept pages
3. Phase 3 — update index, log, hot, overview, tasks
4. Phase 4 — generate memories
5. Phase 5 — archive the clipping MD **and** the PDF asset to `raw/archive/` and `raw/assets/archive/` respectively, then commit

## Special considerations for PDFs

- **Source summaries**: a typical PDF (research paper, white paper, policy document) is denser than a YouTube transcript. Aim for the same ~500-word source-summary target but expect the source itself to need more careful reading. Cite section/page numbers in the summary where they help anchor specific claims.
- **No sponsorship section** — PDFs don't have sponsors. Use a "Funding & Affiliation Notes" section instead, capturing the publishing org, any grants/funders mentioned in the document, and any disclosed conflicts of interest.
- **Author handling**: if the PDF has multiple authors, create person pages for each named author the wiki cares about (typically the first author, the corresponding author, or anyone with a public profile). Lower-priority co-authors can be listed in the source summary without their own pages.
- **Tags**: always include `pdf` in addition to the format/domain tags. This makes it easy to filter the wiki by document type later.

## See Also

- [`pdf-extraction.md`](../rules/pdf-extraction.md) — the extraction protocol
- [`source-summary.md`](source-summary.md) — base source-summary template
- [`ingest.md`](../prompts/ingest.md) — the ingest prompt
