---
type: entity
sources: ["Python RAG Tutorial (with Local LLMs) AI For Your PDFs.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [person, ai, python, rag, langchain, youtube]
---

# pixegami

YouTube creator focused on practical Python tutorials for LLM apps — RAG over PDFs, LangChain, ChromaDB, local model integration, pytest-based AI app testing. Style is implementation-first with full GitHub repos and minimal hype.

## Channels

- **YouTube**: pixegami — Python LLM tutorials, RAG, LangChain, pytest
- **GitHub**: linked from each video; full reference projects per tutorial

## Content in This Wiki

- [[summary-pixegami-python-rag-tutorial|Python RAG Tutorial (with Local LLMs)]] — Building a RAG app over PDFs using LangChain + ChromaDB + AWS Bedrock embeddings + Ollama-served Mistral. Includes deterministic chunk IDs for incremental updates and an LLM-as-judge unit testing pattern.

## Key Ideas

- **Hybrid is fine**: cloud embeddings (better quality) + local LLM (cheap inference) is a defensible split for personal RAG apps when local embeddings underperform
- **Deterministic chunk IDs** (`source:page:chunk_index`) let you incrementally add documents to a vector DB without rebuilding from scratch
- **LLM-as-judge unit tests** — pytest cases that ask a separate LLM call whether the actual answer matches the expected answer; include negative cases (with inverted assertions) so you catch over-generous evaluators
- For RAG quality, **embedding quality matters more than LLM quality** — get embeddings right first

## See Also

- [[summary-pixegami-python-rag-tutorial]]
- [[rag-vs-wiki]]
- [[summary-cole-medin-rag-for-code|Cole Medin's RAG-for-code thesis]]
