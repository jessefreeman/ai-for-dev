# Prompt: Find Orphans & Dangling Links

> Use this prompt by saying *"run the orphans prompt"* or *"find orphaned pages"*.

You are doing a focused link-graph audit. The goal: every wiki page should have at least one inbound link, and every `[[wikilink]]` should resolve to a real page.

## Protocol

### Phase 1 — Build the link graph

1. List every `.md` file under `wiki/` (excluding `wiki/index.md`, `wiki/log.md`, `wiki/hot.md`, `wiki/tasks.md`).
2. For each file, extract every `[[target]]` or `[[target|display]]` link in its body.
3. Build:
   - **Inbound count** per page (how many other pages link TO it)
   - **Dangling links** (links whose target doesn't match any actual file)

### Phase 2 — Report

Produce three lists:

1. **Orphan pages** — pages with zero inbound links. For each, propose:
   - Which existing page(s) should plausibly link to it (based on topic overlap)
   - OR a recommendation to delete if the page no longer fits the wiki
2. **Dangling links** — `[[targets]]` that don't resolve. For each, list:
   - The source page and the broken link text
   - Whether it should become a new page (and what type/folder), be retargeted to an existing page, or be removed
3. **Weakly linked pages** — pages with only 1 inbound link. Surface these as candidates for additional cross-linking, especially if they're entity hubs (people/tools).

### Phase 3 — Pause and wait

Present the report. **Do not modify anything.** Wait for the user to approve specific actions: link X from Y, delete Z, create new page for W, etc.

### Phase 4 — Apply approved fixes

After approval:
- Add the approved cross-links.
- Create approved new pages (use the appropriate template from `.instructions/core/templates/`).
- Delete approved orphans (and remove them from `wiki/index.md`).
- Append a `lint: orphans <date>` entry to `wiki/log.md`.

## Don'ts
- Don't treat `index.md`, `hot.md`, `log.md`, or `tasks.md` as inbound link sources for orphan detection — they're navigation, not content.
- Don't delete a page just because it's orphaned. Many orphans are legitimately new — they need linking, not removal.
