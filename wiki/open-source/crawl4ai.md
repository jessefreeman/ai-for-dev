---
type: entity
sources: ["Turn ANY Website into LLM Knowledge in Seconds - EVOLVED.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [open-source, web-scraping, rag, llm-tooling, markdown]
---

# Crawl4AI

Open-source web-to-markdown library optimized for LLM knowledge ingestion. **42K+ GitHub stars.** The wiki's canonical "scrape a docs site for an agent" primitive — feeds any downstream RAG pipeline ([[dify|Dify]], custom Postgres+PGVector setups, [[context-augmented-generation|CAG]] pre-load caches, [[context7|Context7]]-style curated indexes).

- **Repo**: github.com/unclecode/crawl4ai
- **Stars**: 42K+ (per [[summary-cole-medin-crawl4ai-v2|Cole's recording]])
- **License**: open-source
- **Output**: markdown optimized for LLM understanding (not raw HTML)

## The three crawl strategies

Most "scrape a docs site" tasks fall into one of three patterns. Crawl4AI handles all three:

| Strategy | When to use | How it works |
|---|---|---|
| **Sitemap-based** | Site exposes `sitemap.xml` | Batch-parallel crawl, 5-20 URLs at a time |
| **Recursive** | No sitemap | Depth-limited explore from a root URL |
| **`llms.txt` single-page** | Site provides curated llms.txt | Fetch the one file |

Cole Medin's [Pydantic AI + Chroma DB template](https://github.com/coleam00/) auto-detects the right strategy from the URL.

## Demo scale (per the source)

- Crawl4AI's own docs → **457 chunks**
- Pydantic docs → **2,420 chunks**
- LangGraph docs → **788 chunks**

All processed in seconds-to-minutes with parallel batching.

## Where it fits in the wiki

Crawl4AI is the **upstream primitive** for nearly every RAG / knowledge-base pattern in the wiki:

```
Crawl4AI → markdown chunks → choose your downstream
     ├── Vector store ([[supabase]] PGVector / Qdrant / Chroma) → traditional RAG
     ├── Long-context model ([[gemini]] 2.0 Flash) → [[context-augmented-generation|CAG]]
     ├── Curated MCP server → [[context7]]-style
     └── This wiki's own ingest pipeline (manual curation)
```

## Sources

- [[summary-cole-medin-crawl4ai-v2|Turn ANY Website into LLM Knowledge — EVOLVED]] ([[cole-medin|Cole Medin]], 2025-04-30)

## See Also

- [[context-augmented-generation|CAG]] — natural downstream consumer
- [[context7|Context7]] — curated-corpus alternative for the same use case
- [[rag-vs-wiki|RAG vs Wiki]]
- [[dify|Dify]] — no-code RAG that consumes Crawl4AI-style markdown
- [[cole-medin|Cole Medin]]
