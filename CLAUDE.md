# LLM Wiki Schema

## Git Rules

- Never add `Co-Authored-By` or any Claude attribution to commit messages.
- Commits should appear under the repo owner's account only.

This vault is a **personal knowledge base** maintained by an LLM agent. The human curates sources, directs analysis, and asks questions. The LLM does all summarizing, cross-referencing, filing, and maintenance.

## Directory Structure

```
Research/
  CLAUDE.md          # This file. Schema and rules for the LLM.
  raw/               # Unprocessed source documents. Ingest these.
    archive/         # Already-ingested sources. Don't reprocess.
    assets/          # Downloaded images and attachments.
    *.md             # New articles, notes, transcripts, papers awaiting ingest.
  wiki/              # LLM-generated and LLM-maintained markdown files.
    index.md         # Content catalog of all wiki pages.
    log.md           # Chronological record of all operations.
    overview.md      # High-level synthesis of the entire knowledge base.
    hot.md           # Hot cache: ~500 words of current context. Read this first.
    people/          # Entity pages: people.
    tools/           # Entity pages: tools and products.
    concepts/        # Concept pages: ideas, frameworks, techniques.
    analyses/        # Analysis and comparison pages.
    sources/         # Source summaries and source entity pages.
```

## Roles

- **Human**: Adds sources to `raw/`, asks questions, directs analysis, reviews wiki pages.
- **LLM**: Reads sources, writes and maintains all files in `wiki/`, updates index and log. After ingesting a source, moves it from `raw/` to `raw/archive/`.

## Page Conventions

Every wiki page uses this structure:

```markdown
---
type: source-summary | entity | concept | comparison | analysis | overview
sources: ["source-filename.md", ...]
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [tag1, tag2]
---

# Page Title

Content here. Use [[wikilinks]] to link to other wiki pages.
Link to sources as [[raw/filename|display name]].

## See Also
- [[Related Page 1]]
- [[Related Page 2]]
```

### Page Types

| Type | Folder | Purpose | Example |
|------|--------|---------|---------|
| `source-summary` | `wiki/sources/` | Summary of a single raw source | Summary of an article or paper |
| `entity` (person) | `wiki/people/` | A person | "Andrej Karpathy" |
| `entity` (tool/product) | `wiki/tools/` | A tool, product, or company | "Claude Code", "Obsidian" |
| `entity` (article/source) | `wiki/sources/` | A notable article or document | "AI 2027" |
| `concept` | `wiki/concepts/` | An idea, framework, technique | "RAG", "Knowledge Graph" |
| `comparison` | `wiki/analyses/` | Side-by-side analysis of 2+ things | "RAG vs. Wiki Pattern" |
| `analysis` | `wiki/analyses/` | Answer to a query, filed as a page | "Why wikis beat chat history" |
| `overview` | `wiki/` (root) | High-level synthesis of the whole KB | The single `overview.md` |

## Operations

### 1. Ingest

When the human adds a new source to `raw/` and asks to ingest it:

1. **Read** the source fully. If it contains image references, read the text first, then view key images separately.
2. **Discuss** key takeaways with the human. Ask what to emphasize if unclear.
3. **Create** a `source-summary` page in `wiki/sources/` named `summary-<slug>.md`.
4. **Update or create** pages for every notable person, organization, idea, or term mentioned. Place them in the correct subfolder (see Page Types table). Add new information; don't duplicate what's already there.
5. **Cross-reference**: Add `[[wikilinks]]` in both directions between related pages. Every page should link to at least one other page.
6. **Update `wiki/index.md`**: Add or update entries for every page touched.
7. **Update `wiki/overview.md`**: Revise the synthesis to reflect the new source.
8. **Append to `wiki/log.md`**: Record what was ingested and what pages were created/updated.
9. **Update `wiki/hot.md`**: Rewrite with the current context — what was just ingested, what's active, what pages are most relevant right now. Keep it under 500 words. This is the first thing any agent reads.
10. **Move source** from `raw/` to `raw/archive/`. This marks it as processed. Any files remaining in `raw/` (not in subfolders) are unprocessed and should be ingested.

### 2. Query

When the human asks a question:

1. **Read `wiki/hot.md`** for immediate context, then **`wiki/index.md`** to locate relevant pages.
2. **Read only the relevant wiki pages** — do not crawl the full wiki unless the question requires it.
3. **Synthesize** an answer with citations to wiki pages and sources.
4. **Optionally file** the answer as a new wiki page (type: `analysis` or `comparison`) if the human agrees it's worth keeping. Update index, log, and hot cache.

### 3. Lint

When the human asks for a health check, or periodically after major ingests:

1. **Contradictions**: Flag claims that conflict across pages.
2. **Stale content**: Identify pages that newer sources have superseded.
3. **Orphans**: Find pages with no inbound links.
4. **Missing pages**: Concepts or entities mentioned in links but lacking their own page.
5. **Gaps**: Suggest questions to investigate or sources to find.
6. **Log** the lint pass and any fixes made.

## Hot Cache

`wiki/hot.md` is a short (~500 word) file that captures the current state of the wiki in plain language. It is **not** a summary of every page — it is a snapshot of what's most active and relevant right now.

Update it after every ingest or significant query. It should answer:
- What topics are currently in the wiki?
- What was most recently added?
- What are the most connected/important pages?
- What gaps or questions are open?

Any agent pointing at this wiki should read `hot.md` first and only go deeper into the wiki if the query requires it.

## Wikilink Conventions

- Use `[[Page Title]]` for wiki-to-wiki links.
- Use `[[raw/archive/filename|Display Name]]` for citations to raw sources (sources live in archive after ingest).
- Prefer short, clear page titles: "Retrieval-Augmented Generation" not "A Summary of RAG Techniques".
- Use lowercase-kebab-case for filenames: `retrieval-augmented-generation.md`.

## Frontmatter Tags

Use tags from this evolving list. Add new tags as needed but prefer reusing existing ones:

- Domain tags: `ai`, `llm`, `knowledge-management`, `productivity`, `health`, `business`, etc.
- Format tags: `article`, `paper`, `book-chapter`, `podcast`, `video`, `transcript`, etc.

## Quality Standards

- Every claim should be traceable to a source via links.
- When new information contradicts existing wiki content, note the contradiction explicitly and update the page to reflect the best current understanding.
- Prefer precise language. Avoid filler and hedging.
- Keep summaries dense. A 5000-word article should become a ~500-word summary, not a 3000-word paraphrase.
- The wiki should be browsable by a human in Obsidian with no LLM assistance.

## Session Start Checklist

At the start of every conversation:

1. Read `CLAUDE.md` (this file) to load the schema.
2. Read `wiki/hot.md` for immediate context on what's active.
3. Read `wiki/index.md` to understand the full scope of the wiki.
4. Read `wiki/log.md` (last ~20 entries) to understand recent activity.
5. Do **not** read individual wiki pages unless the human's request requires it.
6. Ask the human what they'd like to do: ingest, query, lint, or explore.
