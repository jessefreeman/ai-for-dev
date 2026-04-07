# Prompt: Clean Data

> Use this prompt by saying *"run the clean-data prompt"* or *"clean up the data"*.

A maintenance pass focused on **mechanical consistency** across the wiki — frontmatter, naming, formatting, and tag hygiene. Distinct from `lint.md` (which is about content quality) and `orphans.md` (which is about the link graph).

## Protocol

### Phase 1 — Scan

Walk every `.md` file under `wiki/` and `raw/memories/` and produce a report on:

1. **Frontmatter completeness**
   - Wiki pages missing any of: `type`, `sources`, `created`, `updated`, `tags`
   - Memory files missing any of: `title`, `summary`, `tags`
   - `tags` fields that are flat strings instead of YAML arrays
   - `created` or `updated` dates not in `YYYY-MM-DD` form
   - `type` values not in the allowed set per [page-conventions](../rules/page-conventions.md)

2. **Filename hygiene**
   - Files not in lowercase-kebab-case
   - Files with spaces, capital letters, or non-ASCII characters
   - Files in the wrong folder for their `type`

3. **Tag taxonomy drift** (memories)
   - Tags not following the `person_*`, `tool_*`, `concept_*`, `topic_*`, `source_*` prefixes
   - Inconsistent capitalization or spelling for the same concept across files

4. **Wikilink syntax**
   - Broken markdown links that should be `[[wikilinks]]`
   - Wikilinks pointing into `raw/` without the `raw/archive/` prefix
   - Display-text links where the display text matches the target (redundant `[[foo|foo]]`)

5. **Encoding & whitespace**
   - Files with trailing whitespace, mixed line endings, or BOM
   - Files with smart quotes inside frontmatter (breaks YAML)

### Phase 2 — Report

Group findings by category. For each, include the file path and a one-line proposed fix.

### Phase 3 — Pause and wait

Stop and wait for approval. The user may approve all, approve a subset, or veto categories entirely.

### Phase 4 — Apply approved fixes

- Make every approved fix in a single batch.
- Append a `clean: <date>` entry to `wiki/log.md` summarizing what was changed.
- Commit with message `clean: <short summary>`.

## Don'ts
- Don't rename files without checking that no other page links to the old name. If links exist, update them in the same commit.
- Don't normalize tags by guessing — surface ambiguous cases for the user to decide.
