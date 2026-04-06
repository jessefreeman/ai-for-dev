---
type: comparison
sources: ["Andrej Karpathy Just 10x'd Everyone's Claude Code.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [ai, llm, knowledge-management, rag]
---

# RAG vs Wiki

A comparison of traditional Retrieval-Augmented Generation (semantic search RAG) and the [[LLM Wiki Pattern]] for knowledge management.

## Comparison

| Aspect | LLM Wiki | Semantic Search RAG |
|--------|----------|-------------------|
| **Search** | Reads index files, follows wikilinks | Embedding similarity search |
| **Infrastructure** | Markdown files only | Embedding model + vector DB + chunking pipeline |
| **Cost** | Token usage only | Ongoing compute + storage |
| **Maintenance** | Lint passes + source additions | Re-embedding when data changes |
| **Scale ceiling** | Hundreds of pages | Millions of documents |
| **Relationship depth** | Deep — explicit links and cross-references | Shallow — chunk-level similarity |
| **Knowledge persistence** | Compiled once, updated incrementally | Re-derived on every query |
| **Setup time** | ~5 minutes | Hours to days |

## When to Use Which

**LLM Wiki** is better for:
- Personal knowledge bases
- Research projects with dozens to hundreds of sources
- Cases where deep synthesis and cross-referencing matter
- Low-infrastructure environments

**Traditional RAG** is better for:
- Enterprise-scale document collections (millions of docs)
- Cases where exact retrieval precision matters more than synthesis
- Frequently changing document collections at scale

## Key Stat

One user reported a **95% reduction in token usage** after converting 383 scattered files and 100+ meeting transcripts from a traditional approach to a structured wiki.

## See Also
- [[LLM Wiki Pattern]]
- [[summary-karpathy-10x-claude-code|Source: Karpathy 10x'd Claude Code]]
