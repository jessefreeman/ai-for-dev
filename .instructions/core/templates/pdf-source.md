# PDF Source Template

> **Extension** of [`source-summary.md`](source-summary.md). Use the base template's shape; this file documents only the PDF-specific overrides — the on-disk layout, the extracted-text injection block, the Funding & Affiliation Notes section that replaces YouTube's Sponsorship & Bias Notes, and the Phase 5 archive note for the PDF asset.

> **Extraction itself** is governed by [`../rules/pdf-extraction.md`](../rules/pdf-extraction.md). This template just defines the clipping-file shape so the extraction step can find and update it consistently.

## On-disk layout

```
raw/
  <Title>.md          ← clipping file (this template)
  assets/
    <Title>.pdf       ← the actual PDF
```

The clipping `.md` uses an Obsidian embed (`![[Title.pdf]]`) so the PDF renders inline in Obsidian, plus an injected `## Extracted Text` block that holds the searchable plain text.

## Frontmatter override

Web Clipper-style frontmatter is fine; the agent fills in missing fields during ingest using the extracted text and metadata:

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

## Body shape (post-extraction)

After running the [PDF extraction protocol](../rules/pdf-extraction.md):

```markdown
![[Title.pdf]]

<!-- pdf-extract:begin tool=<tool_name> version=<version> date=YYYY-MM-DD -->
## Extracted Text

> Extracted YYYY-MM-DD via {tool}. Source: `raw/assets/{filename}`. {N} pages.

{full extracted text}
<!-- pdf-extract:end -->
```

The Obsidian embed at the top is preserved so the PDF renders inline. The extracted text below is what the LLM reads during ingest.

## Source-summary page (the wiki page itself)

Once the clipping has the extracted text inline, write the source-summary page using [`source-summary.md`](source-summary.md) as the base. The only PDF-specific section to add is **Funding & Affiliation Notes** in place of YouTube's Sponsorship & Bias Notes — insert it between Key Points and Notable Quotes:

```markdown
## Funding & Affiliation Notes

**Publisher / publishing org:** {name + relevant context — is this a vendor whitepaper, an academic paper, a think-tank report, a government document?}

**Funders / grants:** {any funding sources disclosed in the document; "none disclosed" if absent}

**Conflicts of interest:** {any disclosed conflicts; flag if the publisher is an interested party in the topic}

**Editorial framing to discount:** {one or two notes about where the publisher's interest may have shaped the framing — e.g., a vendor whitepaper proposing regulation that exempts them}
```

PDFs from interested parties (vendor whitepapers, lobbying documents, position papers) should always have a substantive Funding & Affiliation Notes section. Academic papers and government docs often have less to flag, but the section should still exist.

## Author handling

If the PDF has multiple authors, create person pages for each named author the wiki cares about (typically the first author, the corresponding author, or anyone with a public profile). Lower-priority co-authors can be listed in the source summary without their own pages.

## Phase 5 archive (PDF-specific)

In addition to moving the clipping `.md` from `raw/` to `raw/archive/`, also move the asset:

```
raw/assets/<Title>.pdf  →  raw/assets/archive/<Title>.pdf
```

Create `raw/assets/archive/` if it doesn't exist yet. Both the clipping MD and the PDF asset get moved in the same Phase 5 commit.

## See Also
- [`source-summary.md`](source-summary.md) — base template (this file extends it)
- [`../rules/pdf-extraction.md`](../rules/pdf-extraction.md) — extraction protocol
- [`../prompts/ingest.md`](../prompts/ingest.md) — ingest prompt
