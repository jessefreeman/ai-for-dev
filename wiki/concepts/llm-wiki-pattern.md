---
type: concept
sources: ["Andrej Karpathy Just 10x'd Everyone's Claude Code.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [llm, knowledge-management, methodology]
---

# LLM Wiki Pattern

A method for building personal knowledge bases where an LLM incrementally constructs and maintains a structured wiki of interlinked markdown files, rather than using traditional RAG (retrieve-and-generate-on-the-fly).

## How It Works

**Three-layer architecture:**
1. **Raw sources** — Immutable source documents (articles, papers, transcripts). The LLM reads but never modifies these.
2. **Wiki** — LLM-generated markdown files: summaries, entity pages, concept pages, cross-references. The LLM owns this layer entirely.
3. **Schema** — A configuration file (e.g., `CLAUDE.md`) defining conventions, page types, and workflows.

**Three operations:**
1. **Ingest** — Process a new source: summarize, create/update entity and concept pages, cross-reference, update index and log.
2. **Query** — Answer questions by reading the index, following links, and synthesizing across pages. Good answers can be filed back as new wiki pages.
3. **Lint** — Health-check the wiki: find contradictions, stale content, orphan pages, missing pages, gaps.

## Key Insight

The wiki is a **persistent, compounding artifact**. Unlike RAG, which re-derives knowledge on every query, the wiki pre-compiles cross-references, flags contradictions, and builds synthesis incrementally. Each source added makes the whole wiki richer.

## Scale

Works well up to hundreds of pages with good indexes. [[Andrej Karpathy]] runs ~100 articles / ~500K words this way. At millions of documents, traditional [[RAG vs Wiki|RAG approaches]] are more appropriate.

## Origin

Conceived by [[Andrej Karpathy]] (April 2026 gist). Related in spirit to Vannevar Bush's Memex (1945) — a personal knowledge store with associative trails between documents.

## See Also
- [[RAG vs Wiki]]
- [[Claude Code]]
- [[Obsidian]]
- [[summary-karpathy-10x-claude-code|Source: Karpathy 10x'd Claude Code]]
