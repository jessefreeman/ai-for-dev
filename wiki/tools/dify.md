---
type: entity
sources: ["How to Create and Customize a Knowledge Base for LLMs in Dify.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [tool, no-code, ai-agent, knowledge-base, rag, n8n-alternative]
---

# Dify

**No-code AI agent and knowledge base platform.** Sits in the same layer as [[n8n|n8n]] but with a different center of gravity: where n8n is workflow-automation-first with AI agents bolted on, Dify is **AI-agents-and-RAG-first** with workflow automation as the supporting cast. Open-source core; SaaS tier; self-hostable.

## What you build with it

- **AI applications** with retrieval over org knowledge (the canonical use case)
- **Chat assistants** wired to a knowledge base
- **Agent workflows** with tool use, conditional logic, and structured output
- **Knowledge base APIs** that other systems (n8n, custom apps, MCP servers) can call

## Knowledge base creation (per [[summary-dify-knowledge-base-rag-configuration|the source]])

Dify's knowledge base is its load-bearing primitive. Configuration surface:

| Knob | Options |
|---|---|
| **Data source** | Website sync, Notion, text files, PDF upload |
| **Chunking** | Delimiter, chunk length, overlap, pre-processing rules |
| **Embedding model** | Selectable; swappable post-creation |
| **Retrieval mode** | Vector (semantic) / full-text (keyword) / hybrid |
| **Reranking** | Optional, with model selection |

This is the **no-code RAG control panel** — every knob you'd otherwise wire by hand in LangChain or LlamaIndex.

## Position vs n8n

| | [[n8n\|n8n]] | **Dify** |
|---|---|---|
| Center of gravity | Workflow automation | AI agents + knowledge bases |
| Native AI agent node | Yes (recently first-class) | **Core abstraction** |
| Knowledge base / RAG | Via add-ons | **First-class, configurable** |
| Best for | Multi-step business workflows | AI apps over org knowledge |

The two are complements more than competitors. A common architecture: **Dify hosts the knowledge base + agent**, **n8n handles the surrounding business workflows + integrations**, and they talk over HTTP.

## Caveats

- Fewer customization knobs than LangChain / LlamaIndex — the trade-off for no-code speed
- Self-hosting requires real ops (Docker Compose, Postgres, vector DB)
- The RAG-default framing puts Dify on the *opposite* side of the wiki's [[rag-vs-wiki|RAG-skepticism thread]] — useful for teaching, but not necessarily the right pattern for every use case (see [[context-augmented-generation|CAG]] for the alternative)

## Sources

- [[summary-dify-knowledge-base-rag-configuration|How to Create and Customize a Knowledge Base for LLMs in Dify]] — knowledge base configuration walkthrough

## See Also

- [[n8n|n8n]] — sibling no-code platform with different center of gravity
- [[rag-vs-wiki|RAG vs Wiki]]
- [[context-augmented-generation|CAG]] — the alternative pattern for bounded datasets
- [[ai-automation-workflows|AI Automation Workflows]] — the broader no-code AI stack
- [[mcp|MCP]] — natural way to expose a Dify knowledge base to other agents
