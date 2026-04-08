---
type: source-summary
sources: ["How to Create and Customize a Knowledge Base for LLMs in Dify.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, dify, no-code, rag, knowledge-base]
---

# How to Create and Customize a Knowledge Base for LLMs in Dify

**Source**: YouTube — *LLMs Explained / Aggregate Intellect / AI.SCIENCE* (channel-attributed; individual creator name not given in source), published 2025-05-24
**Tools covered**: [[dify|Dify]]

## Summary

Walkthrough of [[dify|Dify]]'s knowledge base creation workflow: connecting data sources (website sync, Notion pages, text files, PDFs), tuning the chunking pipeline (delimiter choice, chunk length, overlap, pre-processing rules), choosing the embedding model, and selecting a retrieval mode (vector / full-text / hybrid). Demonstrates how each configuration knob impacts retrieval accuracy and downstream answer quality. Positions Dify as a **no-code RAG infrastructure platform** — faster iteration than code-based stacks (LangChain, LlamaIndex) but with fewer customization knobs.

## Key facts

- **Data ingestion**: Website sync, Notion pages, text files, PDFs
- **Chunking config**: Delimiter, chunk length (e.g. 500 vs 1000 tokens), overlap, pre-processing rules
- **Retrieval modes**: Vector (semantic), full-text (keyword), hybrid (combined)
- **Embedding model**: Selectable per knowledge base; can be swapped post-creation
- **Trade-off**: Faster iteration than LangChain/LlamaIndex; fewer customization knobs

## Where it sits in the wiki

Dify is a **no-code AI agent + knowledge base platform**. It overlaps with [[n8n|n8n]] in the no-code-AI-platform layer but with a different center of gravity:

| | [[n8n\|n8n]] | **Dify** |
|---|---|---|
| Center of gravity | Workflow automation | AI agents + knowledge bases |
| Native AI agent node | Yes (recently first-class) | **Core abstraction** |
| Knowledge base / RAG | Via add-ons | **First-class, configurable** |
| Best for | Automating multi-step business workflows | Building AI apps with RAG over org knowledge |

It also fits the wiki's [[rag-vs-wiki|RAG-skepticism thread]] interestingly: Dify is the **canonical no-code RAG implementation**. It's the thing the wiki's three "RAG is overrated" entries (this wiki itself, [[summary-cole-medin-rag-for-code|Cole Medin]], [[context-augmented-generation|CAG]]) are arguing against — but it's also the most accessible way for a non-coder to *try* RAG and feel its limits firsthand, which is genuinely useful as a teaching tool.

## Channel attribution

The channel — variously labeled "LLMs Explained," "Aggregate Intellect," "AI.SCIENCE" — does not name an individual creator in this source. Per [[page-conventions|page-conventions]], the wiki avoids creating stub person pages without verified channel info. Tracked in tasks.md for follow-up; the source-summary above stands on its own.

## See Also

- [[dify|Dify]]
- [[n8n|n8n]] — sibling no-code AI platform
- [[rag-vs-wiki|RAG vs Wiki]] — the broader RAG-skepticism thread
- [[context-augmented-generation|CAG]] — the alternative pattern for bounded datasets
