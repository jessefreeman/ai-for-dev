---
type: concept
sources: ["Don't do RAG - This method is way faster & accurate....md"]
created: 2026-04-08
updated: 2026-04-08
tags: [concept, rag-alternative, context-engineering, llm-app-architecture]
---

# Context Augmented Generation (CAG)

Pattern for LLM-app data access that **pre-loads the entire dataset into the model's context window** instead of retrieving chunks from a vector store. The model itself does the relevance work over the full corpus on every call. CAG only works when the dataset fits the context window — but at modern context sizes (1M+ tokens) and modern token prices ($0.01/M for Gemini 2.0 Flash), the dataset that fits "in context" is much bigger than people assume.

## CAG vs RAG

| | RAG | CAG |
|---|---|---|
| Data layer | Vector store + chunking | None — dataset is loaded into context |
| Per-query cost | Embedding + retrieval + LLM call | One LLM call (with full context) |
| Failure mode | Missed retrievals, bad chunks, reranker noise | Context-window overflow |
| Tuning surface | Chunk size, overlap, embedding model, reranker, top-K | Prompt + which subset to load |
| Best when | Dataset huge, query narrow | Dataset fits context, query benefits from full visibility |

## Why it works now (and didn't before)

The economics inverted in 2024–2025:

- **Context windows**: Gemini 2.0 ships with **1M+ tokens** and near-perfect needle-in-haystack recall. GPT-4 shipped with 8K.
- **Per-token cost**: Gemini 2.0 Flash input is **$0.01 per million tokens** — ~96% cheaper than GPT-4o ($2.50/M) at the time of [[summary-ai-jason-cag-context-augmented-generation|the source]]. Loading a 27-page API doc per query costs ~$0.006.
- **Latency**: ~3.4 seconds for the same demo. Not free, but no slower than a tuned RAG pipeline.

The combination kills the "RAG saves money" argument for any dataset that fits the window.

## Practical pattern (from the AI Jason demo)

1. Use a scraper (Firecrawl) to pull the entire corpus once, cache locally
2. Wrap it as an MCP server
3. On each MCP call, pass the full corpus + the user query to Gemini 2.0
4. Return the top-K relevant snippets

No vector DB, no chunking heuristics, no reranking step.

## Where CAG sits in the wiki's RAG-skepticism thread

CAG joins two other entries in the wiki that argue against semantic retrieval as the default LLM-app data layer:

- **[[rag-vs-wiki|RAG vs Wiki]]** — structured wiki links beat vector search for *personal* knowledge bases
- **[[summary-cole-medin-rag-for-code|RAG for Code vs Knowledge]]** — coding tools (Claude Code, Cursor) have abandoned RAG entirely
- **CAG** — for any *bounded* dataset, full-context loading beats retrieval

All three replace retrieval with something more direct. The wiki's macro view: **RAG was a bridge technology** that papered over context-window scarcity. With cheap long context, RAG's reason-to-exist shrinks to "the dataset is larger than any feasible context window."

## Limits

- Hard ceiling: dataset must fit the context window. For multi-GB knowledge bases, RAG still wins.
- No incremental updates within a single call — the whole corpus reloads each time.
- Cost scales linearly with corpus size × call rate; high-traffic apps may still want a retrieval layer.
- Long-context recall is *near-perfect*, not perfect — adversarial cases exist.

## Sources

- [[summary-ai-jason-cag-context-augmented-generation|Don't Do RAG — This Method Is Way Faster & Accurate]] ([[ai-jason|AI Jason]], 2025-03-26) — primary source

## See Also

- [[rag-vs-wiki|RAG vs Wiki]]
- [[context-engineering|Context Engineering]] — the broader theory CAG operationalizes
- [[summary-cole-medin-rag-for-code|RAG for Code vs Knowledge]]
- [[gemini|Gemini]] — the model class that enables CAG economically
- [[mcp|MCP]] — natural wrapper for CAG-based servers
