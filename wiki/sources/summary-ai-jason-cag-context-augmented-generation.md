---
type: source-summary
sources: ["Don't do RAG - This method is way faster & accurate....md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, rag-alternative, context-engineering, gemini, mcp]
---

# Don't Do RAG — This Method Is Way Faster & Accurate (CAG)

**Source**: YouTube — [[ai-jason|AI Jason]], published 2025-03-26
**Tools/concepts covered**: [[context-augmented-generation|CAG]], [[gemini|Gemini]] 2.0 Flash, [[mcp|MCP]], Firecrawl

## Summary

[[ai-jason|AI Jason]] introduces **Context Augmented Generation (CAG)** as a practical alternative to RAG: instead of chunking and retrieving from a vector store, **pre-load the entire dataset into the model's context window** and let the model do the relevance work itself. The argument is that long-context models (Gemini 2.0 with 1M+ tokens, near-perfect needle-in-haystack recall) plus collapsing per-token costs (Gemini 2.0 Flash at $0.01/M input) have made the trade-off invert: for many datasets, dumping the whole thing into context is now **cheaper, faster, and more accurate** than running a RAG pipeline. Builds an MCP server (Firecrawl + Gemini 2.0) that retrieves API doc snippets via CAG with **~$0.006 / 3.4 second** per query — no vector DB, no chunking, no reranking.

## Key facts

- **CAG vs RAG**: CAG pre-loads the full dataset; RAG retrieves chunks. CAG works when the dataset fits the context window.
- **Gemini 2.0 Flash**: $0.01 per 1M input tokens (~96% cheaper than GPT-4o at $2.50/M); 1M+ context window with near-perfect needle-in-haystack recall.
- **Demo**: Firecrawl scrapes a 27-page API doc → entire scrape into Gemini 2.0 → MCP server returns top-K relevant code examples on demand.
- **Per-query cost**: ~$0.006, ~3.4 second latency.
- **Trade-off**: CAG eliminates chunking, retrieval-tuning, and reranking complexity but only works when the dataset fits the model's context window.

## Why it matters

CAG is the **third entry in the wiki's RAG-skepticism thread**, alongside [[rag-vs-wiki|RAG vs Wiki]] (this wiki's own thesis: structured links beat semantic search for personal KBs) and [[summary-cole-medin-rag-for-code|Cole Medin's "RAG is dead for code"]] (coding tools have abandoned RAG). All three share the same insight: **semantic retrieval is brittle**, but they each propose a different replacement (curated wiki / context engineering / CAG).

The cost-economics argument is the load-bearing point: CAG was infeasible at GPT-4 prices and 8K context windows. At 1M tokens × $0.01/M, the calculus changed.

Pairs naturally with [[context-engineering|Context Engineering]] — CAG is the practical workhorse pattern for the discipline, where context engineering is the broader theory.

## See Also

- [[context-augmented-generation|Context Augmented Generation]] — concept page
- [[rag-vs-wiki|RAG vs Wiki]] — this wiki's RAG-skepticism anchor
- [[context-engineering|Context Engineering]] — the broader theory
- [[summary-cole-medin-rag-for-code|RAG for Code vs Knowledge]] — sibling RAG-is-dead piece
- [[gemini|Gemini]] — the model class that enables CAG economically
- [[mcp|MCP]] — the protocol the demo wraps CAG in
- [[ai-jason|AI Jason]]
