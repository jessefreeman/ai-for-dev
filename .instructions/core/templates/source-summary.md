# Source Summary Template

A `source-summary` page lives at `wiki/sources/summary-<slug>.md` and is the dense, citable record of one ingested source. This is the **base template** — the YouTube and PDF templates layer format-specific overrides on top of this shape.

## Frontmatter

```yaml
---
type: source-summary
sources: ["<raw-filename>.md"]
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [<format-tag>, <domain-tags>]
---
```

`tags` must be a YAML array. Format tags are reusable (`article`, `paper`, `video`, `podcast`, ...); domain tags come from the wiki's topic scope declared in `CLAUDE.md`.

## Body shape

```markdown
# {Source Title}

**Author / channel:** [[person-slug|Person Name]]
**Format:** article | video | podcast | paper | transcript | ...
**Source:** [Original](../../raw/archive/<filename>.md)
**Published:** YYYY-MM-DD (if known)

## Summary

2–4 sentence high-density abstract. What's the source about, what's its thesis, why does it matter for this wiki?

## Key Points

- Bullet 1 — claim, framework, or fact (with numbers when applicable)
- Bullet 2 — ...
- Bullet 3 — ...

(Aim for 5–12 bullets. A 5,000-word source → ~500 words total on this page.)

## Notable Quotes

> "Quote here." — speaker/author, context

(Optional. Only include quotes worth remembering verbatim.)

## Connected Pages

- [[concept-slug|Concept]] — how this source relates
- [[tool-slug|Tool]] — how this source relates
- [[person-slug|Person]] — author hub

## See Also
- [[related-source-summary]] — adjacent source
```

## Rules

- Dense, not exhaustive. Strip filler.
- Every claim should be traceable to the original source via context, not just by reference.
- Always link to the author's person page.
- Cite the original raw source via a **relative markdown link**: `[Original](../../raw/archive/<filename>.md)` — see [page-conventions.md → Wikilink rules](../rules/page-conventions.md#wikilink-rules) for why wikilinks don't work for paths outside `wiki/`.

## Format-specific extensions

This is the base template. Use one of these instead when the source format demands extra structure:

- **YouTube videos**: [`youtube-source.md`](youtube-source.md) — adds Sponsorship & Bias Notes plus the video-specific header fields (Channel / URL / Length / Sponsor)
- **PDFs**: [`pdf-source.md`](pdf-source.md) — adds Funding & Affiliation Notes plus the PDF-specific archive instructions and embed handling

Both extensions reuse this base shape and only document their deltas.
