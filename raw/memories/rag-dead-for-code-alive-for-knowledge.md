---
title: RAG Is Dead for Code, Alive for Knowledge Bases
summary: Traditional RAG (vector DB + semantic search) is unnecessary for code but essential for unstructured data — the key variable is data structure, not model capability.
tags: [person_cole_medin, concept_rag, tool_claude_code, source_cole_medin_rag_for_code]
---

# RAG Is Dead for Code, Alive for Knowledge Bases

## Context

From [[summary-cole-medin-rag-for-code|Cole Medin's RAG video]]. See also [[RAG vs Wiki]].

## Content

The "RAG is dead" narrative is misleading. The real distinction is **data structure**.

**Why RAG fails for code:**
- Exact identifiers and syntax → keyword/regex search works perfectly
- Built-in file structure → agents navigate naturally
- Terminal tools (ripgrep, glob) → fast, precise search
- Claude Code originally used local vector DB, abandoned it for agentic search

**Why RAG is essential for unstructured data:**
- Ambiguous natural language needs synonym/concept matching
- "Star Wars spaceships" search won't find X-wing or TIE fighter paragraphs via keyword
- ~100x cheaper than agentic search at scale (small chunks vs reading whole files)
- Customer support, compliance, legal, enterprise docs all need semantic search

**Bridge approach**: Give agents both semantic search (vector DB) and agentic search (terminal tools). Let the agent decide per-query which strategy fits.
