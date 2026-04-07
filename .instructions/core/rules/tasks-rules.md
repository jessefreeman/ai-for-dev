# Tasks Rules

`wiki/tasks.md` is **only for things that need user input or judgment**. It is not a backlog, not a wishlist, and not a "future work" pile.

## Why this restriction exists

Earlier iterations of `tasks.md` mixed three different kinds of things — LLM-actionable backlog (pages to create when threshold is met), aspirational vision items, and actual user-decision questions. The result: the file grew unbounded, the LLM never trimmed it, and real questions got buried in noise. This rule keeps the file focused so a `task-review` session can resolve everything in 10 minutes.

## What belongs in `tasks.md`

- **Decisions**: "Should I do A or B for this thread?"
- **Clarifications**: "When you said X, did you mean X1 or X2?"
- **Editorial judgment calls**: "These two pages overlap — merge them or keep separate?"
- **Strategic asks**: "Your business vision mentions Y — should I do research on it?"
- **Methodology questions**: "Should the X rule be tightened?"
- **Validation requests**: "I made an editorial decision — was that the right call?"

## What does NOT belong

- **"Ingest source X someday"** → just put X in `raw/` when ready. The wiki doesn't need a clipping queue.
- **"Create entity page for tool/model/org Y"** → auto-detected at the next ingest per `page-conventions.md` condition (b). No tracking needed.
- **"Investigate concept Z deeper"** → either ingest a source about Z, or note it in the relevant page's "Open questions" section.
- **Aspirational vision items** → live as inline notes on the relevant wiki page, not as a global queue line.
- **Resolved items** → deleted, not archived. The `wiki/log.md` is the historical record.

## Format

```markdown
- [ ] **{Short title}** — {Context: what's the situation, what's blocked, what
      have you tried, what's referenced.}
      **What I need from you:** {The exact decision or input required. Sized
      for response: approve/reject, short answer, or "discuss".}
      *Referenced from:* [[page]], [[other-page]]
```

The `**What I need from you:**` line is required. If you can't write it, the entry doesn't belong in `tasks.md` — it's not a real user-input item.

## Categories

Use lightweight section headers when you have ≥3 items in a category:

- `## Decisions`
- `## Clarifications`
- `## Editorial judgment`
- `## Strategic / vision`
- `## Methodology`

Below 3 items in a category, just list them under `## Open` without subdivision.

## Volume target

`tasks.md` should fit on **one screen** — typically **3–10 active items**, hard cap at **15**. If it grows past 15, the LLM is using it wrong: either non-question items are creeping in, or items are being added without ever being resolved.

When tasks.md crosses 15 items, the LLM should flag it during the next lint pass and propose pruning.

## Lint integration (auto-cleanup)

Every `lint` pass walks the active section of `tasks.md` and flags:

1. **Resolved by page creation** — if an item references a wikilink that now resolves to an existing page, the underlying question is likely answered. Lint flags it for removal during Phase 3 (with user approval).

2. **Resolved by source ingest** — if an item references a `raw/archive/` filename and the source has been archived, same treatment.

3. **Threshold-met for entity-page creation** — if an item asks "should X get a page" and X now has ≥2 inbound source-summary references, lint flags it as "promote during Phase 3."

4. **Stale items** — items unchanged for >30 days flagged for review (not auto-deleted; the user might want to defer them longer).

5. **Volume warning** — if active item count >15, lint surfaces this as a separate finding and asks the user to prune.

**Lint never auto-deletes from `tasks.md` without user approval**. It surfaces candidates and waits.

## Resolution flow

When the user resolves an item via `task-review` or directly:

1. **Delete the entry from `tasks.md`** (do not move to a Completed section)
2. **Make the actual change** the resolution requires (create the page, update the rule, run the ingest, etc.)
3. **Append a one-line entry to `wiki/log.md`** under a `task-review: <date>` heading naming what was resolved and the commit it landed in
4. **Commit** with `task-review: <short summary>` or fold into the broader commit if part of a larger workflow

The historical record lives in `log.md`. `tasks.md` only ever shows the active queue.

## Adding to tasks.md during ingest

During Phase 1 of an ingest, if the LLM identifies something that genuinely needs user input (not just "this could become a page later"), it proposes adding to `tasks.md` as part of the Phase 1 plan. The user approves or rejects during the standard pause. **Never add to `tasks.md` silently** — every new entry should appear in a Phase 1 report.

## See Also

- [`task-review.md`](../prompts/task-review.md) — interactive walk-through for resolving open items
- [`lint.md`](../prompts/lint.md) — defines the audit step that flags resolved/stale tasks
- [`page-conventions.md`](page-conventions.md) — the entity-page convention that handles "should X get a page" automatically
