# Source Summary Template

A `source-summary` page lives at `wiki/sources/summary-<slug>.md` and is the dense, citable record of one ingested source.

```markdown
---
type: source-summary
sources: ["raw/archive/<source-filename>"]
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [<format-tag>, <domain-tags>]
---

# {Source Title}

**Author / channel:** [[person-slug|Person Name]]
**Format:** article | video | podcast | paper | transcript | ...
**Source:** [[raw/archive/<filename>|Original]]
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
- Always link the original source via `[[raw/archive/<filename>|...]]`.
