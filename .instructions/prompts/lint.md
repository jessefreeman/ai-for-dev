# Prompt: Lint Pass

> Use this prompt by saying *"run the lint prompt"* or *"lint the wiki"*.

You are doing a quality pass on the wiki. The goal is to surface problems, **not** to fix them yet.

## Protocol

### Phase 1 — Audit (read-only)

Walk the wiki and produce a single report covering:

1. **Duplicates** — pages covering the same entity or concept under different filenames. Propose a canonical name and which to merge.
2. **Orphans** — pages with no inbound links from any other wiki page. (Use the [orphans prompt](orphans.md) if you want a deeper pass.)
3. **Contradictions** — claims that conflict across pages. Quote both, name both pages.
4. **Stale content** — pages where a newer source has clearly superseded the claims. Name the superseding source.
5. **Off-topic pages** — anything that drifted away from the wiki's declared scope (see `CLAUDE.md` for the current scope statement).
6. **Missing pages** — entities or concepts mentioned in `[[wikilinks]]` that have no actual page. List the dangling links and which pages reference them.
7. **Stub pages** — pages with less than ~150 words or only a title and a See Also section.
8. **Frontmatter drift** — pages missing required frontmatter fields (type, sources, created, updated, tags) per [page-conventions](../rules/page-conventions.md).
9. **Index/log drift** — entries in `wiki/index.md` that point to nonexistent files, or recent ingests in `wiki/log.md` whose pages aren't in the index.
10. **Tag inconsistency** — same concept tagged different ways across pages.

### Phase 2 — Report and pause

Present all findings as a single structured report grouped by category. For each finding include:
- The page path(s)
- The specific problem
- A proposed fix (merge X into Y, delete, link from Z, add frontmatter, etc.)

**Stop and wait for the user to approve fixes.** Do not modify any file until the user says go on specific items. The user may approve some, reject others, or ask for more detail.

### Phase 3 — Apply approved fixes

After approval:
- Make exactly the approved changes, nothing more.
- Update `wiki/index.md`, `wiki/log.md`, and `wiki/hot.md` to reflect any deletions, merges, or renames.
- Append a dated entry to `wiki/log.md` titled `lint: <date>` with a one-line summary of every change made.
- Commit with message `lint: <date> — <short description>`.

## Don'ts
- Never delete a page without explicit user approval.
- Never auto-merge — even obvious duplicates need a human call on which name wins.
- Never edit individual pages during Phase 1. Audit only.
