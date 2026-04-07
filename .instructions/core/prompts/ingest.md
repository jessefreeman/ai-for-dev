# Prompt: Ingest Sources

> Use this prompt by saying *"run the ingest prompt"* or *"ingest the new sources in raw/"*.

You are ingesting one or more new source documents into the wiki. Follow this protocol exactly.

## Inputs
- New `.md`, `.html`, `.pdf`, or transcript files in `raw/` (not in `raw/archive/`).
- If the user names a specific file, ingest only that one. Otherwise list every un-archived source file directly under `raw/` and confirm the list with the user before proceeding. Skip the standard subdirectories: `raw/archive/`, `raw/assets/`, `raw/memories/`, and any project-specific data subdirectories declared in `CLAUDE.md`.

## PDF sources

If a source is a PDF (clipping `.md` contains `![[<filename>.pdf]]` or the file in `raw/` is a `.pdf` directly): run [`pdf-extraction.md`](../rules/pdf-extraction.md) first to extract text into the clipping markdown, then proceed with Phase 1 below treating the text-augmented clipping as a normal source. Clipping shape: [`pdf-source.md`](../templates/pdf-source.md). Phase 5 archives both the clipping MD and the PDF asset.

## Protocol

### Phase 1 — Pre-ingest assessment (REQUIRED PAUSE)

For **each** source, before creating any pages:

1. **Read** the source fully.
2. **Report** back to the user with:
   - A 2–3 sentence summary of what the source covers.
   - Overlap with existing wiki pages (check `wiki/index.md`).
   - Any content that's off-topic or low-value for this wiki.
   - **Proposed page list:** every page you would create OR update, with type and folder.
3. **STOP and wait for approval.** The user may say skip, merge, or abort. Do not start writing pages until you get a clear go.

### Phase 2 — Write pages

After approval, for each source:

1. **Source summary** — create `wiki/sources/summary-<slug>.md` (type `source-summary`). Dense: a 5,000-word article → ~500-word summary.
2. **Entity & concept pages** — create or update pages in the correct subfolder (`wiki/people/`, `wiki/tools/`, `wiki/open-source/`, `wiki/concepts/`, `wiki/business/`). Add new info only — don't duplicate.
3. **Person pages** must follow the [person page template](../templates/person-page.md). Always update "Content in This Wiki" with the new source.
4. **Cross-reference** every page in both directions with `[[wikilinks]]`. Every page must link to at least one other page.
5. **Frontmatter** must conform to [page-conventions](../rules/page-conventions.md).

### Phase 3 — Update wiki state

1. Append entries to `wiki/index.md` per [index rules](../rules/index-rules.md).
2. Revise `wiki/overview.md` to reflect the new source.
3. Append a dated entry to `wiki/log.md` listing what was ingested and what pages were created/updated.
4. Rewrite `wiki/hot.md` per [hot-cache rules](../rules/hot-cache-rules.md). Max 500 words. Rewrite, don't append.
5. Update `wiki/tasks.md` with any new tools/projects/repos worth investigating, as `- [ ] **Name** — why [[source-page]]`. Skip anything already covered by an existing wiki page.

### Phase 4 — Generate memories

Create 3–8 atomized memory files in `raw/memories/` per [memory rules](../rules/memory-rules.md). Skip anything already obvious from a wiki page title.

### Phase 5 — Archive & commit

1. Move the source file from `raw/` to `raw/archive/`.
   - **For PDF sources**: also move the asset from `raw/assets/<filename>.pdf` to `raw/assets/archive/<filename>.pdf`.
2. Stage all changed wiki files and new memory files.
3. Commit with message `ingest: <source-slug>`. Never add `Co-Authored-By` or any Claude attribution.
4. Each source is its own commit (rollback point).

### Phase 6 — Lint reminder

Check the count of `## [` ingest entries in `wiki/log.md`. If it's a multiple of 5 since the last lint, remind the user: *"You've ingested X sources — recommend running the lint prompt to catch orphans, duplicates, and stale content."*

## Quality bar
- Every claim must be traceable to a source via links.
- Precise language only. No filler, no hedging, no marketing voice.
- If new info contradicts existing pages, note the contradiction and update.
- The wiki must be browsable in Obsidian without an LLM.

## Don'ts
- Never start writing pages before the user approves the Phase 1 plan.
- Never create stub person pages (no channel info → mark unknown, don't omit).
- Never duplicate content across pages — link instead.
- Never re-process anything in `raw/archive/`.
