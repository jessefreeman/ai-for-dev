---
type: log
updated: 2026-04-06
---

# Wiki Log

Chronological record of all operations.

## [2026-04-06] init | Wiki Initialized
- Created directory structure: `raw/`, `raw/assets/`, `wiki/`
- Created `CLAUDE.md` schema file
- Created `wiki/index.md`, `wiki/log.md`, `wiki/overview.md`
- Wiki is empty and ready for first source ingest.

## [2026-04-06] maintenance | Wiki Reorganized into Subdirectories
- **Reason**: Flat wiki/ layout produces an endless article list on the public Quartz site.
- **Structure**: Introduced five subdirectories under `wiki/`:
  - `people/` — andrej-karpathy, nate-herk
  - `tools/` — claude-code, obsidian, obsidian-web-clipper
  - `concepts/` — llm-wiki-pattern
  - `analyses/` — rag-vs-wiki
  - `sources/` — summary-karpathy-10x-claude-code, ai-2027
- **Root** (`wiki/`): index.md, overview.md, log.md unchanged.
- **Updated**: `CLAUDE.md` (directory structure, Page Types table, Ingest step 3–4), `wiki/index.md` (section headers match new folders).
- **Wikilinks**: No body link changes required — Obsidian and Quartz both resolve `[[filename]]` links by filename regardless of folder.

## [2026-04-06] ingest | Andrej Karpathy Just 10x'd Everyone's Claude Code
- **Source**: YouTube transcript by Nate Herk on Karpathy's LLM Wiki pattern
- **Pages created** (9):
  - `summary-karpathy-10x-claude-code.md` — Source summary
  - `andrej-karpathy.md` — Entity: AI researcher, LLM Wiki creator
  - `nate-herk.md` — Entity: YouTube creator, demo author
  - `claude-code.md` — Entity: Anthropic's CLI tool
  - `obsidian.md` — Entity: Markdown note-taking app
  - `obsidian-web-clipper.md` — Entity: Browser extension for clipping
  - `ai-2027.md` — Entity: Forecasting article used as demo
  - `llm-wiki-pattern.md` — Concept: LLM-maintained knowledge bases
  - `rag-vs-wiki.md` — Comparison: LLM Wiki vs semantic search RAG
- **Updated**: `index.md`, `overview.md`
