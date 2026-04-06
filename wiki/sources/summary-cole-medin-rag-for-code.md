---
type: source-summary
sources: ["Why the Best AI Coding Tools Abandoned RAG (And What They Use Instead).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [source, video, rag, coding-agents, search]
---

# Why the Best AI Coding Tools Abandoned RAG

**Source**: YouTube — [[Cole Medin]], published 2026-02-18
**Link**: https://www.youtube.com/watch?v=60G93MXT4DI

## Summary

Cole Medin debunks the "RAG is dead" narrative with a critical distinction: traditional RAG (semantic search + vector DB) is dead **for code**, but very much alive for unstructured data. The key variable is data structure — not model capability.

## Why RAG Fails for Code

Code has three properties that make vector-based retrieval unnecessary:

1. **Exact identifiers and syntax** — everything is perfectly spelled; keyword/regex search works
2. **Built-in organization** — file structure provides natural navigation; agents use file paths to find what they need
3. **Terminal tools** — coding agents live in the terminal with access to ripgrep, glob, and other powerful search tools

Claude Code originally used RAG with a local vector DB, then abandoned it. Boris Cherny (Claude Code maintainer): "Early versions did use RAG... but agentic search generally works better." Aider uses tree-sitter to provide a structural index of the codebase (files, classes, functions) — not vector embeddings, but a simple high-level overview.

## Why RAG Is Still Essential for Unstructured Data

Unstructured data (knowledge bases, docs, customer support) has:
- **Ambiguous natural language** — needs synonym matching, conceptual similarity
- **No inherent organization** — can't navigate by file path
- **Scale** — agentic search across thousands of documents would be prohibitively slow and expensive

**Star Wars example**: Searching "Star Wars spaceships" won't find paragraphs about X-wings or TIE fighters via keyword search. Embedding models capture that semantic similarity. This is what vector DBs excel at.

## Cost Comparison

Traditional RAG with chunking is roughly **100x cheaper** than agentic search for large knowledge bases. Chunks are small, targeted retrievals; agentic search reads entire files with grep/cat.

## The Bridge Approach

Best practice emerging: give agents **both** tools — semantic search via vector DB and agentic search via terminal tools. Let the agent decide per-query which strategy to use based on the nature of the search.

## Pages Created or Updated

- [[RAG vs Wiki]] — substantially updated with structured vs unstructured distinction
- [[Cole Medin]] — updated

## See Also

- [[Claude Code]] — moved from RAG to agentic search
- [[LLM Wiki Pattern]] — a structured approach that bypasses RAG
- [[OpenBrain]] — uses vector embeddings for semantic search over personal knowledge
