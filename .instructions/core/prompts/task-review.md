# Prompt: Task Review

> Use this prompt by saying *"run the task-review prompt"*, *"walk through tasks"*, or *"review open questions"*.

You are walking the user through the open questions in `wiki/tasks.md`, one at a time, helping them resolve or defer each one. The whole session should be **focused and short** — ideally 10 minutes for a typical 3–10 item queue. If the queue is bigger than 15 items, that's a signal something has gone wrong with how items are being added; flag it before walking through.

## Protocol

### Phase 1 — Inventory

1. Read `wiki/tasks.md` (active section only — there is no "Completed" section per [`tasks-rules.md`](../rules/tasks-rules.md)).
2. Count the active items.
3. If count > 15: **stop**. Tell the user the volume target is being violated and propose pruning before working through individual items. Wait for direction.
4. Otherwise, list the items as a numbered queue with a 1-line summary each. Don't expand context yet — that happens per-item.
5. Ask the user how they want to proceed:
   - **Walk through all** in order
   - **Pick specific items** by number
   - **Skip stale items** (any flagged by the most recent lint as stale)

### Phase 2 — Walk one at a time

For each selected item:

1. **Present the full context**:
   - The question text
   - The "What I need from you" line
   - Any referenced wiki pages (link them as wikilinks, with one-sentence reminders of what they cover)
   - When the item was added, if known
   - Any related items in the queue that might affect this one

2. **Offer the standard options**:
   - **Answer it now** — user gives direction. You then act on it: create the page, run the ingest, update the rule, or whatever the resolution requires. Make the change in the same response.
   - **Defer with new context** — user adds information but isn't ready to decide. Update the entry's body with the new context but leave it open.
   - **Delete** — user decides this isn't needed anymore. Remove the entry; note the deletion in the log.
   - **Convert** — user wants to split the question into more specific sub-questions or escalate it to a separate ingest. Create the new entries; remove the old one.
   - **Skip for now** — move to the next item without changing this one.

3. **Wait for the user's response before moving on**. Do not chain through multiple items in one tool turn.

### Phase 3 — Apply changes per item

When the user answers an item:

- **Make the actual change** the resolution requires. If they say "yes, create the page," create it. If they say "no, this isn't needed," delete the entry and stop. If they say "go research X," propose how you'll research it before doing anything.
- **Delete the resolved entry** from `tasks.md` (do not move to a Completed section — that's not part of the new format per `tasks-rules.md`)
- **Track the resolution** for the Phase 4 log entry

### Phase 4 — Log and commit

When the session ends (either all items walked, or user says "stop"):

1. Append a single dated entry to `wiki/log.md`:
   ```markdown
   ## [YYYY-MM-DD] task-review
   - Resolved: {N items, brief list}
   - Deferred with new context: {N items}
   - Deleted: {N items}
   - Skipped: {N items}
   - Remaining open: {N}
   ```

2. **One commit per significantly distinct resolution**, OR a single bundled commit if the resolutions were small. Use the message `task-review: <date> — <short summary>` for a bundled commit, or normal per-resolution commit messages if you split them.

3. Push.

4. Report the summary back to the user.

## Don'ts

- **Don't combine task-review with ingest** in the same session unless the user explicitly asks. The point of task-review is focus.
- **Don't add new questions to `tasks.md`** during task-review unless the user explicitly directs you to. The exception: if a resolution naturally generates a follow-up question, ask the user before adding it.
- **Don't move items to a Completed section** — there isn't one. Resolved items get deleted. The historical record lives in `log.md`.
- **Don't auto-resolve "obvious" items** without asking. Even items where the answer seems clear should be confirmed with the user — that's the entire point of `tasks.md`.
- **Don't walk past the user's "stop" signal**. If they say they're done after 3 items, commit what's been resolved and end.

## Edge cases

- **Empty `tasks.md`**: report "no open questions" and ask if there's anything they'd like to add explicitly.
- **All items stale** (none modified recently): suggest a deletion sweep before doing detailed walkthrough.
- **User wants to bulk-delete several items**: confirm each one individually, but accept short answers ("yes, yes, yes, no").

## See Also

- [`tasks-rules.md`](../rules/tasks-rules.md) — defines what belongs in tasks.md
- [`lint.md`](lint.md) — auto-flags resolved/stale items during regular lint passes
