---
type: source-summary
sources: ["Turn ANY Website into LLM Knowledge in Seconds - EVOLVED.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, crawl4ai, web-scraping, rag, pydantic-ai]
---

# Turn ANY Website into LLM Knowledge in Seconds — EVOLVED (Crawl4AI v2)

**Source**: YouTube — [[cole-medin|Cole Medin]], published 2025-04-30
**Tool**: [[crawl4ai|Crawl4AI]]

## Summary

[[cole-medin|Cole Medin]]'s evolved guide to **[[crawl4ai|Crawl4AI]]**, the open-source web-to-markdown library (42K+ GitHub stars) optimized for LLM knowledge ingestion. The headline insight: most "scrape this docs site" tasks fall into one of **three patterns**, and Crawl4AI handles all three with different strategies:

1. **Sitemap-based** — site has `sitemap.xml` → batch-parallel crawl (5-20 URLs at a time)
2. **Recursive navigation** — no sitemap → depth-limited explore from a root URL
3. **`llms.txt` single-page** — site provides a curated single-file LLM-friendly doc → fetch the one file

Cole publishes a **Pydantic AI + Chroma DB RAG agent template** that auto-detects which strategy applies based on URL type and runs the right one. Demoes crawling Crawl4AI's own docs (457 chunks), Pydantic's docs (2,420 chunks), and LangGraph's docs (788 chunks).

## Key facts

- **Crawl4AI**: open-source, **42K+ GitHub stars**, fastest markdown extraction for LLM consumption
- **Three crawl strategies**: sitemaps (parallel), recursive (depth-limited), llms.txt (single page)
- **Parallel batching**: 5-20 URLs at a time
- **Chunking**: split by headers/subheaders to preserve section context
- **Output format**: markdown optimized for LLM understanding (vs raw HTML)
- **Demo template**: Pydantic AI + Chroma DB; auto-detects strategy from URL
- **Scale demo**: Crawl4AI docs → 457 chunks; Pydantic → 2,420 chunks; LangGraph → 788 chunks

## Why it matters

Crawl4AI is the **canonical "build your own knowledge base" primitive** for the wiki's RAG cluster. It's the upstream tool that feeds [[dify|Dify]], [[context7|Context7]]-style curated indexes, [[summary-cole-medin-local-supabase-rag|Cole's local Supabase RAG]], and any custom pipeline that needs structured docs as input.

The **three-strategy framing** is the part most beginners miss — they pick one strategy (usually recursive) and hit edge cases with sites that don't fit. Cole's auto-detection template is the production-grade version of that decision.

The wiki also gets a new connection point: **Crawl4AI is the upstream of [[context-augmented-generation|CAG]]** — to load a whole API doc into context, you first need to scrape it, and Crawl4AI is the tool. The two pages now form a complete pipeline (Crawl4AI → CAG → Gemini 2.0).

## See Also

- [[crawl4ai|Crawl4AI]]
- [[context-augmented-generation|CAG]] — natural downstream consumer
- [[context7|Context7]] — the curated alternative
- [[rag-vs-wiki|RAG vs Wiki]]
- [[summary-cole-medin-local-supabase-rag|Local Supabase RAG]] — sibling Cole video, same week
- [[cole-medin|Cole Medin]]
