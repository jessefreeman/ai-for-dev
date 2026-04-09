# Overview Rules

`wiki/overview.md` is a **high-level synthesis of the wiki's current state** — the page someone reads to understand what this knowledge base covers and why it matters.

## What belongs

- The wiki's current themes and threads
- The most important pages and how they connect
- Open questions worth investigating at the synthesis level
- The "shape" of what's been learned

## What does NOT belong

- Per-source listings (those live in `wiki/sources/` and `wiki/index.md`)
- Full summaries of individual pages
- Historical context already captured in `wiki/log.md`
- Anything that hasn't changed since the last refresh

## Volume cap

**1,500 words maximum.** Rewrite in place — do not append. When new themes emerge, retire old framings rather than stack them.

## Update style

Rewrite from scratch on every refresh. The overview is a snapshot, not a journal.

## Lint integration

The [`lint`](../prompts/lint.md) prompt's size-compliance check (Phase 1) flags `wiki/overview.md` if it exceeds 1,500 words.

## See Also

- [`hot-cache-rules.md`](hot-cache-rules.md) — companion rule for `wiki/hot.md` (the in-session cache)
- [`index-rules.md`](index-rules.md) — companion rule for `wiki/index.md` (the navigation file)
