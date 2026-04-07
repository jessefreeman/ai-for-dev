---
type: source-summary
sources: ["Andrej Karpathy Just 10x'd Everyone's Claude Code.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [article, video, llm, knowledge-management, claude-code, obsidian]
---

# Andrej Karpathy Just 10x'd Everyone's Claude Code

**Source**: YouTube video by [[Nate Herk]] (published 2026-04-05)
**Raw**: [Original Transcript](../../raw/archive/Andrej%20Karpathy%20Just%2010x%27d%20Everyone%27s%20Claude%20Code.md)

## Summary

Nate Herk walks through [[Andrej Karpathy]]'s viral LLM Wiki idea and demonstrates how to implement it in ~5 minutes using [[Obsidian]] and [[Claude Code]]. The core pattern: drop raw source documents into a folder, let Claude Code read and organize them into a structured, interlinked wiki of markdown files.

Herk shows two working implementations:
1. **YouTube Transcript Wiki** — 36 videos ingested in ~14 minutes, producing entity pages for tools, techniques, people, and concepts with full cross-references
2. **Personal Second Brain** — meeting recordings, business notes, ClickUp summaries organized into a queryable wiki that his AI executive assistant can reference

## Key Details

- **Setup**: Create an Obsidian vault with `raw/` and `wiki/` folders. Paste Karpathy's idea file into Claude Code. Done.
- **Ingesting**: Use [[Obsidian Web Clipper]] to clip articles into `raw/`. Tell Claude Code to ingest. A single article ([[AI 2027]]) generated 23 wiki pages in ~10 minutes.
- **Querying**: Ask questions against the wiki. Claude reads the index, follows links, synthesizes answers. Valuable answers can be filed back as wiki pages.
- **Linting**: Periodic health checks — find contradictions, stale data, orphan pages, gaps. The LLM can suggest new sources to fill gaps.
- **Hot Cache**: A small file (~500 words) summarizing the most recent context. Useful when another agent needs quick access without crawling the full wiki.
- **Cross-project use**: The wiki directory can be referenced by other Claude Code projects (e.g., an executive assistant) by pointing to the wiki path in their `CLAUDE.md`.

## LLM Wiki vs Traditional RAG

| Aspect | LLM Wiki | Semantic Search RAG |
|--------|----------|-------------------|
| Search method | Index files + wikilinks | Embedding similarity |
| Infrastructure | Markdown files only | Embedding model + vector DB + chunking pipeline |
| Cost | Token usage only | Ongoing compute + storage |
| Maintenance | Lint + add sources | Re-embed on changes |
| Scale | Hundreds of pages | Millions of documents |
| Depth | Deep relationships via links | Surface-level chunk similarity |

The wiki approach wins for personal/small-scale knowledge bases. Traditional RAG is needed at enterprise scale (millions of documents).

## Notable Claims

- One X user reduced token usage by 95% after converting 383 scattered files + 100 meeting transcripts into a wiki.
- Karpathy intentionally left the idea vague so users could customize it to their domain.
- Karpathy manages ~100 articles / ~500K words with this approach, using index files instead of embedding-based retrieval.

## See Also
- [[Andrej Karpathy]]
- [[LLM Wiki Pattern]]
- [[Claude Code]]
- [[Obsidian]]
- [[RAG vs Wiki]]
