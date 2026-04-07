# Hot Cache Rules

`wiki/hot.md` is read every session — every word costs tokens. Stay under **500 words**.

## Include only

- What topics are currently in the wiki (one sentence)
- The 5–10 most linked-to or important pages
- What was most recently added
- Open gaps or questions worth investigating

## Strip out

- Descriptions of how the wiki works (that's CLAUDE.md's job)
- Full summaries of individual pages
- Anything that hasn't changed since the last ingest
- Historical context that's already captured in `log.md`

## Update style

**Rewrite from scratch on every update — do not append.**
