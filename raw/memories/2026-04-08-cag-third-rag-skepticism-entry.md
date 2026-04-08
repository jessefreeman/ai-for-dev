---
title: CAG (Context Augmented Generation) is the wiki's third RAG-skepticism entry
summary: CAG joins the LLM Wiki Pattern and Cole Medin's "RAG is dead for code" as the third pattern arguing against semantic retrieval as the default LLM-app data layer.
tags: [concept_cag, concept_rag, topic_llm_app_architecture, source_ai_jason_cag_context_augmented_generation]
---

# CAG is the wiki's third RAG-skepticism entry

## Context

From [[summary-ai-jason-cag-context-augmented-generation|AI Jason: Don't Do RAG]]. See also [[context-augmented-generation]], [[rag-vs-wiki]], [[summary-cole-medin-rag-for-code]].

## Content

**Context Augmented Generation (CAG)** = pre-load the entire dataset into the model's context window instead of retrieving chunks. The model itself does the relevance work over the full corpus on every call. Only viable when the dataset fits the context window — but at modern context sizes (1M+ tokens) and modern token prices ($0.01/M for Gemini 2.0 Flash), the dataset that fits "in context" is much bigger than people assume. AI Jason's MCP-server demo: Firecrawl scrapes a 27-page API doc → entire scrape into Gemini 2.0 → MCP server returns top-K relevant code examples on demand at **~$0.006 / 3.4 seconds per query**, no vector DB.

**Where CAG sits**: it's the **third entry** in the wiki's RAG-skepticism thread, alongside:

1. **[[rag-vs-wiki|RAG vs Wiki]]** — structured wiki links beat vector search for *personal* knowledge bases (this wiki's own thesis)
2. **[[summary-cole-medin-rag-for-code|"RAG is dead for code"]]** — coding tools (Claude Code, Cursor) abandoned RAG for agentic search
3. **CAG** — for any *bounded* dataset, full-context loading beats retrieval

All three argue against semantic retrieval as the default LLM-app data layer; each proposes a different replacement (curated wiki / agentic search / full-context loading).

**The macro view**: RAG was a **bridge technology** that papered over context-window scarcity. With cheap long context, RAG's reason-to-exist shrinks to "the dataset is larger than any feasible context window." Most dataset-fits-in-context use cases will move to CAG; most personal-knowledge use cases will move to the LLM Wiki Pattern; most code-search use cases already moved to agentic search.

The **economics inverted in 2024-2025**: Gemini 2.0 ships with 1M+ tokens and near-perfect needle-in-haystack recall; per-token cost dropped ~96% vs GPT-4o. Loading a 27-page API doc per query went from "expensive and slow" to "$0.006 and 3.4 seconds." That's the structural change.
