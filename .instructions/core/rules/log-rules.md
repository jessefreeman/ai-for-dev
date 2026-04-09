# Log Rules

`wiki/log.md` is a **rolling window of recent operations with interpretation** — not a permanent changelog. Git is the historical record.

## Why this restriction exists

Earlier the log grew unbounded (hundreds of entries, tens of KB) because every ingest, lint, and skip got a verbose entry. Most of that information is already in `git log -- wiki/` — the log file was duplicating git history with extra prose. The new shape: log only what `git log` cannot tell you, and only keep the recent window.

## What belongs

- **Ingest decisions with rationale** — *why* this source was worth ingesting, what thread it advances, what it contradicts or corroborates
- **Methodology shifts** — rule changes, new prompts, refactors of `.instructions/`
- **Lint passes** — what was found and what was decided (not what was already git-visible)
- **Editorial reframing** — when the wiki's framing of a source differs meaningfully from the source's own framing
- **task-review sessions** — see [`task-review.md`](../prompts/task-review.md) Phase 4

## What does NOT belong

- "Created page X" with no rationale — `git log` covers it
- Routine skips without an interesting reason — just delete the source from `raw/` and move on
- Per-file diffs — that's what `git diff` is for

## Format

```markdown
## [YYYY-MM-DD] {operation} | {short title}
- **Source / scope**: ...
- **Notes**: the *interpretation* — what makes this entry worth keeping over `git log`
```

## Volume cap

**10 entries maximum.** Rewrite in place. When adding an 11th entry, delete the oldest. Older history is recoverable via `git log -- wiki/log.md`.

## Lint integration

The [`lint`](../prompts/lint.md) prompt's size-compliance check (Phase 1) flags `wiki/log.md` if it exceeds 10 entries.

## See Also

- [`hot-cache-rules.md`](hot-cache-rules.md) — companion rule for `wiki/hot.md`
- [`tasks-rules.md`](tasks-rules.md) — companion rule for `wiki/tasks.md`
