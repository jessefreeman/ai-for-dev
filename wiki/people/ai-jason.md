---
type: entity
sources: ["Don't do RAG - This method is way faster & accurate....md"]
created: 2026-04-08
updated: 2026-04-08
tags: [person, youtuber, ai-engineering, llm-apps, educator]
---

# AI Jason

YouTube creator focused on **LLM application architecture** — specifically the design patterns that sit between raw model APIs and production AI products. Strong opinions on RAG vs alternatives, MCP server design, and cost-aware LLM ops. Runs the **AI Builder Cloud** community.

## Channels

- **YouTube**: AI Jason — LLM app architecture, CAG, MCP patterns, prompt engineering
- **Community**: AI Builder Cloud

## Content in This Wiki

- [[summary-ai-jason-cag-context-augmented-generation|Don't Do RAG — This Method Is Way Faster & Accurate]] (2025-03-26) — introduces [[context-augmented-generation|CAG]] as a practical RAG alternative; builds a Firecrawl + Gemini 2.0 + MCP demo that returns API doc snippets at ~$0.006 per query without a vector DB.

## Key ideas

- **CAG over RAG**: when the dataset fits the context window, pre-loading the entire corpus is cheaper, faster, and more accurate than chunked retrieval
- **MCP as the wrapper**: data-access patterns (CAG, RAG, hybrid) all benefit from being exposed as MCP servers so any compliant client can use them
- **Cost-economics framing**: long-context model pricing collapses (Gemini 2.0 Flash at $0.01/M) are what flipped the RAG-vs-CAG calculus

## See Also

- [[context-augmented-generation|CAG]]
- [[rag-vs-wiki|RAG vs Wiki]]
- [[mcp|MCP]]
- [[gemini|Gemini]]
