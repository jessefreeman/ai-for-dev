# Person Page Template

Every person page is an **author hub** — the single place to find everything this person has contributed to the wiki.

## Required structure

```markdown
---
type: entity
sources: ["summary-slug-1.md", "summary-slug-2.md"]
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [person, <domain-tag>, ...]
---

# Name

One-sentence description of who they are and their focus.

## Channels

List the platforms they actually publish on. One bullet per channel, formatted as
`- **Platform**: [link or handle](url) — one-phrase description of what they cover`.
Include only channels confirmed from ingested sources — don't pad with empty fields.
If you have nothing, write "unknown" rather than omitting the section.

## Content in This Wiki

Every source ingested from this person, linked to its source-summary page.
- [[summary-slug|Source Title]] — one-sentence description of what it covers

## Key Ideas

3–6 bullets capturing the person's most notable claims, frameworks, or quotes across all their ingested content.

## See Also
- Links to concepts, tools, and other pages their content touches
```

### Common channel types

Pick whichever fit the person; this list is illustrative, not exhaustive:

- **Video / audio**: YouTube, podcast, TikTok, Twitch
- **Long-form text**: Substack, Newsletter, Blog, Medium
- **Site**: personal homepage
- **Short-form social**: X/Twitter, Mastodon, Bluesky, Threads
- **Code**: GitHub, GitLab, Codeberg
- **Visual**: Instagram, Pinterest, ArtStation
- **Professional**: LinkedIn

The wiki's specific topic determines which platforms matter most — see `CLAUDE.md` for the wiki's domain.

## Rules

- Update this page **every time** a new source from this person is ingested. Add the new source to "Content in This Wiki" and any new key ideas.
- **Never create a stub.** If you don't have channel info yet, mark it `unknown` rather than omitting the section.
- "Content in This Wiki" is the authoritative list of what's been ingested from this person. Keep it complete.
