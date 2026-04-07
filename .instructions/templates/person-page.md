# Person Page Template

Every person page is an **author hub** — the single place to find everything this person has contributed to the wiki.

## Required structure

```markdown
---
type: entity
sources: ["summary-slug-1.md", "summary-slug-2.md"]
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [person, ai, ...]
---

# Name

One-sentence description of who they are and their focus.

## Channels

List every platform they publish on with a link and one-phrase description.
- **YouTube**: [Channel Name](url) — what they cover
- **Newsletter**: [name](url) — what they cover
- **Site**: url
- **X/Twitter**: @handle
- **GitHub**: url

(Include only channels confirmed from ingested sources. If unknown, write "unknown" — never omit the section.)

## Content in This Wiki

Every source ingested from this person, linked to its source-summary page.
- [[summary-slug|Source Title]] — one-sentence description of what it covers

## Key Ideas

3–6 bullets capturing the person's most notable claims, frameworks, or quotes across all their ingested content.

## See Also
- Links to concepts, tools, and other pages their content touches
```

## Rules

- Update this page **every time** a new source from this person is ingested. Add the new source to "Content in This Wiki" and any new key ideas.
- **Never create a stub.** If you don't have channel info yet, mark it `unknown` rather than omitting the section.
- "Content in This Wiki" is the authoritative list of what's been ingested from this person. Keep it complete.
