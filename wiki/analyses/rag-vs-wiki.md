---
type: comparison
sources: ["Andrej Karpathy Just 10x'd Everyone's Claude Code.md", "Why the Best AI Coding Tools Abandoned RAG (And What They Use Instead).md", "Don't do RAG - This method is way faster & accurate....md"]
created: 2026-04-06
updated: 2026-04-08
tags: [ai, llm, knowledge-management, rag, comparison]
---

# RAG vs Wiki

A comparison of traditional Retrieval-Augmented Generation (semantic search RAG), agentic search, and the [[LLM Wiki Pattern]] for knowledge management.

## The Key Variable: Data Structure

The "RAG is dead" narrative is misleading. The real question is: **how structured is your data?**

| Data Type | Best Retrieval | Why |
|-----------|---------------|-----|
| **Code** (structured) | Agentic search (ripgrep, glob, file navigation) | Exact identifiers, file paths, terminal tools |
| **Personal knowledge** (semi-structured) | LLM Wiki (index files, wikilinks) | Pre-compiled synthesis, explicit cross-references |
| **Large unstructured knowledge bases** | Semantic search RAG (vector DB) | Synonym matching, conceptual similarity, scale |

## LLM Wiki vs Semantic Search RAG

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

## Why RAG Died for Code

[[Cole Medin]] and [[Claude Code]] maintainer Boris Cherny explain: Claude Code originally used RAG with a local vector DB, then abandoned it because agentic search works better for code. Three reasons:

1. **Exact identifiers** — code is perfectly spelled; keyword/regex search finds what you need
2. **Built-in organization** — file structure provides natural navigation
3. **Terminal tools** — ripgrep, glob, cat are powerful and fast for structured data

Aider takes a different approach: tree-sitter generates a structural index of the codebase (files, classes, functions) as a high-level overview for the agent. Not vector embeddings — just a map.

Nick Pash (Cline creator): "The RAG narrative is a mind virus" for coding agents — causes overengineering by applying semantic search where it's unnecessary.

## Why RAG Lives for Unstructured Data

**The Star Wars test**: Searching "Star Wars spaceships" via keyword won't find paragraphs about X-wings or TIE fighters. Embedding models capture that semantic similarity. This is what vector DBs excel at — and what agentic search cannot do.

For large knowledge bases (customer support, compliance, legal, enterprise docs):
- **~100x cheaper** than agentic search at scale (small chunks vs reading whole files)
- **Semantic matching** handles ambiguous natural language, synonyms, conceptual similarity
- Keyword/regex search cannot find buried conceptual references

## CAG: The Third Approach

[[context-augmented-generation|Context Augmented Generation]] (per [[ai-jason|AI Jason]]) is the third entry in this comparison: instead of retrieving chunks (RAG) or following structured links (wiki), **load the entire dataset into the model's context window** and let the model do the relevance work itself. Only viable now because long-context models (Gemini 2.0 with 1M+ tokens) and collapsing per-token prices ($0.01/M input on Gemini 2.0 Flash) inverted the cost calculus.

| Aspect | LLM Wiki | RAG | CAG |
|---|---|---|---|
| Best for | Personal KB | Massive unstructured corpora | Bounded datasets that fit context |
| Infrastructure | Markdown only | Embedding model + vector DB | Long-context model + cache |
| Per-query cost | Tokens for index + page | Embedding + vector lookup + LLM | One LLM call with full corpus |
| Tuning surface | Page conventions, lint passes | Chunk size, embedding, reranker | Prompt + corpus selection |
| Failure mode | Stale index | Bad retrieval | Context overflow |

The macro view: **RAG was a bridge technology** that papered over context-window scarcity. With cheap long context, RAG's reason-to-exist shrinks to "the dataset is larger than any feasible context window." See [[context-augmented-generation|CAG]] for the full pattern.

## The Bridge Approach

Emerging best practice: give agents **both** retrieval tools (semantic search + agentic search) and let them decide per-query which strategy fits the data.

## When to Use Which

**LLM Wiki** for: personal knowledge bases, research projects (dozens to hundreds of sources), cases where synthesis and cross-referencing matter.

**Agentic search** for: code, structured data with exact identifiers and file organization.

**Semantic search RAG** for: enterprise-scale unstructured collections (millions of docs), customer support, compliance, legal — anything requiring synonym matching at scale.

**[[OpenBrain]]** for: personal semantic memory across AI tools — uses vector embeddings (PGVector) but with an MCP interface rather than a traditional RAG pipeline.

## Key Stat

One user reported a **95% reduction in token usage** after converting 383 scattered files and 100+ meeting transcripts from a traditional approach to a structured wiki.

## See Also

- [[LLM Wiki Pattern]]
- [[OpenBrain]] — personal semantic memory using vector embeddings
- [[Claude Code]] — moved from RAG to agentic search
- [[Cole Medin]] — primary source for the structured vs unstructured analysis
- [[summary-karpathy-10x-claude-code|Source: Karpathy 10x'd Claude Code]]
- [[summary-cole-medin-rag-for-code|Source: Why Coding Tools Abandoned RAG]]
- [[context-augmented-generation|CAG]] — the third approach
- [[summary-ai-jason-cag-context-augmented-generation|Source: Don't Do RAG (AI Jason)]]
