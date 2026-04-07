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
6. **Missing pages** — entities or concepts mentioned in `[[wikilinks]]` that have no actual page. List the dangling links and which pages reference them. **Skip wikilinks that appear inside `wiki/log.md`** — the changelog documents historical broken state by design (lint entries quote the bugs they fixed; ingest entries may reference pages that were later renamed or deleted), so flagging them every pass is just noise. **Also skip wikilinks inside fenced code blocks** in any file — those are template examples or syntax demonstrations, not active links. Apply both filters before producing the dangling-link report.
7. **Stub pages** — pages with less than ~150 words or only a title and a See Also section.
8. **Frontmatter drift** — pages missing required frontmatter fields (type, sources, created, updated, tags) per [page-conventions](../rules/page-conventions.md).
9. **Index/log drift** — entries in `wiki/index.md` that point to nonexistent files, or recent ingests in `wiki/log.md` whose pages aren't in the index.
10. **Tag inconsistency** — same concept tagged different ways across pages.
11. **Tasks.md validation** — walk the active section of `wiki/tasks.md` per [tasks-rules](../rules/tasks-rules.md) and flag:
    - **Resolved by page creation** — items referencing a wikilink that now resolves to an existing page
    - **Resolved by source ingest** — items referencing a `raw/archive/` filename that has been archived
    - **Threshold-met for entity-page creation** — items asking "should X get a page" where X now has ≥2 inbound source-summary references
    - **Stale items** — items unchanged for >30 days
    - **Volume warning** — if active item count >15, surface as a separate finding and propose pruning
    Never auto-delete from `tasks.md`. Surface candidates and wait for user approval in Phase 3.

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

## Lint script convention

When the agent runs the dangling-link check via an ad-hoc script (the typical pattern), the script should:

1. Walk every `.md` under `wiki/` **except `wiki/log.md`** — the changelog is documentation of historical state, not active content
2. **For `wiki/tasks.md`**, only process the body **before** the `## Completed` section. Completed entries quote historical fixes that may reference removed slugs.
3. Strip **fenced code blocks** (` ``` ... ``` `) from each file's body before extracting wikilinks — code blocks contain template examples and syntax demonstrations, not real links
4. Strip **inline code spans** (`` ` ... ` ``) too — wikilink-syntax demonstrations like `` `[[Page Title]]` `` are documentation, not active links
5. Resolve wikilinks against both filename slugs and H1 titles (Obsidian-style title aliasing)
6. Produce the dangling list from the surviving links only

Reference Python implementation:

```python
import re

def clean_for_lint(text):
    text = re.sub(r'```.*?```', '', text, flags=re.S)   # fenced blocks
    text = re.sub(r'`[^`\n]*`', '', text)                # inline code
    return text

def lint_target(path, content):
    if path.endswith('wiki/log.md'):
        return None  # skip entirely
    if path.endswith('wiki/tasks.md'):
        content = content.split('## Completed', 1)[0]    # active section only
    return clean_for_lint(content)
```

This avoids the recurring noise of `[[Page Title]]` example placeholders in template documentation, `[[raw/archive/...]]` historical bug references in `log.md`, completed-task references to slugs that were intentionally removed, and other documentation artifacts that the regex would otherwise match.

**Intentional dangling links** (entities the wiki references but hasn't built a page for yet) should be left in place unless the user explicitly asks for them to be converted to plain text. The convention: a dangling link signals "this page should exist eventually." Track candidates in `wiki/tasks.md` and create the page when there's enough material.

## Don'ts
- Never delete a page without explicit user approval.
- Never auto-merge — even obvious duplicates need a human call on which name wins.
- Never edit individual pages during Phase 1. Audit only.
