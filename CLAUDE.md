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
    index.md         # Page catalog — one line per page, no prose.
    log.md           # Chronological record of all operations.
    overview.md      # High-level synthesis of the entire knowledge base.
    hot.md           # Hot cache: ~500 words of current context. Read this first.
    tasks.md         # Running checklist of tools, projects, and resources to investigate.
    people/          # Entity pages: people.
    tools/           # Entity pages: commercial and hosted tools.
    open-source/     # Entity pages: open source projects and libraries.
    concepts/        # Concept pages: ideas, frameworks, techniques.
    business/        # Business patterns: selling AI, ROI frameworks, automation use cases.
    analyses/        # Analysis and comparison pages.
    sources/         # Source summaries and source entity pages.
  raw/
    memories/        # Atomized memory snippets for RavenBrain MCP ingestion.
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
| `entity` (tool/product) | `wiki/tools/` | A commercial or hosted tool | "Claude Code", "Obsidian" |
| `entity` (open source) | `wiki/open-source/` | An open source project or library | "LangChain", "Ollama" |
| `entity` (article/source) | `wiki/sources/` | A notable article or document | "AI 2027" |
| `concept` | `wiki/concepts/` | An idea, framework, technique | "RAG", "Knowledge Graph" |
| `business` | `wiki/business/` | Selling AI, ROI frameworks, automation patterns for clients | "AI Automation Workflows" |
| `comparison` | `wiki/analyses/` | Side-by-side analysis of 2+ things | "RAG vs. Wiki Pattern" |
| `analysis` | `wiki/analyses/` | Answer to a query, filed as a page | "Why wikis beat chat history" |
| `overview` | `wiki/` (root) | High-level synthesis of the whole KB | The single `overview.md` |

### Person Page Structure

Every person page is an **author hub** — it should be the single place to find everything this person has contributed to the wiki. Required sections:

```markdown
# Name

One-sentence description of who they are and their focus.

## Channels

List every platform they publish on with a link and one-phrase description.
- **YouTube**: [Channel Name](url) — what they cover
- **Newsletter**: [name](url) — what they cover
- **Site**: url
- **X/Twitter**: @handle
- **GitHub**: url
(Include only channels confirmed from ingested sources.)

## Content in This Wiki

List every source ingested from this person, linked to its source-summary page.
- [[source-slug|Source Title]] — one-sentence description of what it covers

## Key Ideas

3–6 bullet points capturing the person's most notable claims, frameworks, or quotes found across all their ingested content.

## See Also
- Links to concepts, tools, and other pages their content touches
```

**Rules:**
- Update a person page every time a new source from that person is ingested — add the new source to "Content in This Wiki" and any new key ideas.
- Never create a stub person page. If you don't have channel info yet, note it as unknown rather than omitting the section.
- "Content in This Wiki" is the authoritative list of what's been ingested from this person. Keep it complete.

## Operations

### 1. Ingest

When the human adds a new source to `raw/` and asks to ingest it:

1. **Read** the source fully.
2. **Pre-ingest assessment** — before creating any pages, report:
   - A 2-3 sentence summary of what the source covers
   - Any content that significantly overlaps with existing wiki pages
   - Any content that seems off-topic or low-value for this wiki
   - A proposed page list (what would be created or updated)
   Then **pause and ask the human to approve** before proceeding. The human may tell you to skip certain pages, merge content, or abort entirely.
3. **Create** a `source-summary` page in `wiki/sources/` named `summary-<slug>.md`.
4. **Update or create** pages for every approved person, organization, idea, or term. Place them in the correct subfolder. Add new information only — do not duplicate what's already in existing pages.
5. **Cross-reference**: Add `[[wikilinks]]` in both directions. Every page must link to at least one other page.
6. **Update `wiki/index.md`**: One line per page — title and one-phrase description only. No prose.
7. **Update `wiki/overview.md`**: Revise the synthesis to reflect the new source.
8. **Append to `wiki/log.md`**: Record what was ingested and what pages were created/updated.
9. **Update `wiki/hot.md`**: Rewrite to reflect current state. Max 500 words. See Hot Cache rules.
10. **Generate memories**: Create atomized memory files in `raw/memories/`. See Memory Rules below.
11. **Update `wiki/tasks.md`**: Add any tools, projects, repos, or resources mentioned in the source that are worth investigating but not yet in the wiki. Format as a checkbox: `- [ ] **Name** — why it's worth checking out [[source-page]]`. Do not add things already covered by existing wiki pages.
12. **Move source** from `raw/` to `raw/archive/`.
13. **Commit**: Stage and commit all changed wiki files and new memory files with the message `ingest: <source-slug>`. This creates a rollback point for every ingest.
14. **Lint prompt**: After every 5th ingest (check log count), remind the human: *"You've ingested X sources — recommend running a lint pass to catch orphans, duplicates, and stale content."*

### 2. Query

When the human asks a question:

1. **Read `wiki/hot.md`** for immediate context, then **`wiki/index.md`** to locate relevant pages.
2. **Read only the relevant wiki pages** — do not crawl the full wiki unless the question requires it.
3. **Synthesize** an answer with citations to wiki pages and sources.
4. **Optionally file** the answer as a new wiki page (type: `analysis` or `comparison`) if the human agrees it's worth keeping. Update index, log, and hot cache.

### 3. Lint

When triggered manually or prompted automatically:

1. **Duplicates**: Flag pages covering the same entity or concept. Propose merges.
2. **Orphans**: Find pages with no inbound links. Propose linking or deleting.
3. **Contradictions**: Flag claims that conflict across pages.
4. **Stale content**: Identify pages that newer sources have superseded.
5. **Off-topic pages**: Flag pages that don't serve the wiki's focus. Propose removal.
6. **Missing pages**: Concepts or entities mentioned in links but lacking their own page.
7. **Gaps**: Suggest questions to investigate or sources to find.
8. Present all findings to the human before making any changes. Only act on approved items.
9. **Log** the lint pass and all changes made.

## Memory Rules

`raw/memories/` holds atomized memory snippets ingested by the RavenBrain MCP server. Each file is one atomic fact, concept, or recall item — the kind of thing someone would ask an agent: *"How did Nate reduce token costs?"* or *"What video covered Paperclip?"*

### Format

```markdown
---
title: Short Descriptive Title
summary: One sentence — what this memory captures.
tags: [person_name, tool_name, topic_name, source_slug]
---

# Short Descriptive Title

## Context

Where this came from. Link to the source-summary wiki page and any relevant entity/concept pages.
Example: From [[summary-nate-herk-ollama-claude-code|Nate Herk's Ollama + Claude Code video]]. See also [[Open-Source Model Integration]].

## Content

The atomic fact, method, claim, or concept. Write it as a self-contained answer — someone reading only this file should get the complete answer without needing to open the source.
```

### Tag Taxonomy

Use YAML arrays for Obsidian compatibility: `tags: [person_nate_herk, tool_claude_code]`
- `person_[firstname_lastname]` — e.g. `person_nate_herk`
- `tool_[toolname]` — e.g. `tool_claude_code`, `tool_ollama`
- `concept_[name]` — e.g. `concept_multi_agent`, `concept_token_budget`
- `topic_[name]` — broad grouping — e.g. `topic_cost_reduction`, `topic_local_ai`
- `source_[slug]` — e.g. `source_nate_herk_ollama`

### What to Capture

Good memories:
- Specific methods or steps (*"How do you configure OpenRouter in Claude Code?"*)
- Key claims with numbers (*"MiniMax M2.7 is 20x cheaper than Opus 4.6"*)
- Named frameworks or patterns (*"The clogged pipe diagnostic"*)
- Important distinctions (*"Workflow state vs conversation state"*)
- Tool overviews (*"What is Paperclip and what does it solve?"*)
- Quotes or theses worth recalling (*"Building agents is 80% plumbing"*)

Skip:
- Information already obvious from a wiki page title
- Full summaries (that's `wiki/sources/`)
- Redundant memories covering the same fact

### Naming

Use kebab-case descriptive slugs: `openrouter-all-models-config-pitfall.md`, `paperclip-heartbeat-pattern.md`.

### Volume

Aim for **3–8 memories per source** depending on density. Prefer fewer high-quality memories over many redundant ones.

## Hot Cache Rules

`wiki/hot.md` must stay under 500 words. It is read every session — every word costs tokens.

**Include only:**
- What topics are currently in the wiki (one sentence)
- The 5-10 most linked-to or important pages
- What was most recently added
- Open gaps or questions worth investigating

**Strip out:**
- Descriptions of how the wiki works (that's CLAUDE.md's job)
- Full summaries of individual pages
- Anything that hasn't changed since the last ingest
- Historical context that's already captured in log.md

Rewrite from scratch on every update — do not append.

## Index Rules

`wiki/index.md` is a navigation file, not a summary document. Keep it scannable.

**Format strictly as:**
```
## Section
- [[page-title|Display Name]] — one phrase description
```

**Never include:**
- Multi-sentence descriptions
- Prose between entries
- Duplicate entries
- Pages that no longer exist

## Wikilink Conventions

- Use `[[Page Title]]` for wiki-to-wiki links.
- Use `[[raw/archive/filename|Display Name]]` for citations to raw sources.
- Prefer short, clear page titles: "Retrieval-Augmented Generation" not "A Summary of RAG Techniques".
- Use lowercase-kebab-case for filenames: `retrieval-augmented-generation.md`.

## Frontmatter Tags

- Domain tags: `ai`, `llm`, `knowledge-management`, `productivity`, `health`, `business`, etc.
- Format tags: `article`, `paper`, `book-chapter`, `podcast`, `video`, `transcript`, etc.

## Quality Standards

- Every claim must be traceable to a source via links.
- When new information contradicts existing content, note the contradiction and update to reflect best current understanding.
- Precise language only. No filler, no hedging.
- Dense summaries. A 5000-word article → ~500-word summary.
- The wiki must be browsable by a human in Obsidian with no LLM assistance.

## Session Start Checklist

1. Read `CLAUDE.md` (this file).
2. Read `wiki/hot.md` — fast context, do not skip.
3. Read `wiki/index.md` — full page catalog.
4. Read last ~20 entries of `wiki/log.md` — recent activity.
5. Glance at `wiki/tasks.md` — note any open items relevant to the session.
6. Do **not** read individual wiki pages unless the human's request requires it.
6. Ask the human what they'd like to do: ingest, query, lint, or explore.
