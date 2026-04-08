---
type: source-summary
sources: ["Run Supabase 100% LOCALLY for Your AI Agents.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, supabase, local-ai, n8n, rag, pgvector]
---

# Run Supabase 100% LOCALLY for Your AI Agents

**Source**: YouTube — [[cole-medin|Cole Medin]], published 2025-02-16
**Tools**: [[supabase|Supabase]] (self-hosted), [[n8n|n8n]], [[ollama|Ollama]], [[open-webui|Open WebUI]], Postgres, PGVector, Qdrant, Flowise

## Summary

[[cole-medin|Cole Medin]] revamps his **local AI package** (`coleam00/local-ai-packaged`) to add **fully self-hosted [[supabase|Supabase]]** alongside the existing n8n / Ollama / Open WebUI / Qdrant / Flowise stack. The new piece is wiring **Supabase + PGVector** as the vector store for a local RAG agent (replacing or complementing Qdrant), with Ollama's `nomic-embed-text` (768-dim) as the embedding model. Demo: crawl a local file → insert chunks into Supabase vectors → query via an n8n agent → grounded answer. Includes troubleshooting notes for the Supabase Docker stack (multiple containers: studio, Kong, auth, realtime, storage, functions) and persistent volume / host path sharing config so n8n can read and write the same data.

## The local-AI-packaged stack (post-update)

```
n8n (workflow / agent)
  ├── Postgres (chat history, agent state)
  ├── Qdrant (vector store, optional)
  ├── Supabase (self-hosted: studio + Kong + auth + storage + Postgres + PGVector)
  └── Ollama (LLM + embeddings)
Open WebUI (chat UI)
Flowise (visual agent builder, optional)
```

All in a single `docker-compose` orchestrated by `coleam00/local-ai-packaged`.

## Key facts

- **Repo**: `github.com/coleam00/local-ai-packaged`
- **Supabase containers**: studio, Kong (gateway), auth (GoTrue), realtime, storage, functions, Postgres
- **Vector store**: PGVector inside Supabase Postgres — replaces Qdrant for the RAG agent path (Qdrant remains optional)
- **Embeddings**: Ollama `nomic-embed-text` (768-dim)
- **Persistence**: explicit volume mounts; host-path sharing so n8n containers can read files placed on the host

## Why it matters

This is the wiki's **canonical local-AI stack reference** — every component is self-hosted, no cloud calls required, and the components are the same ones that show up across the rest of the wiki ([[n8n]], [[supabase]], [[ollama]], [[open-webui]], pgvector). The PGVector-as-vector-store choice is also the load-bearing connection back to the [[open-brain|OpenBrain]] thread: OpenBrain is "Postgres + PGVector + MCP" as agent memory, and Cole's stack is the practical recipe that makes both that and traditional RAG run on the same database.

## See Also

- [[supabase|Supabase]]
- [[open-source-model-integration|Open-Source Model Integration]] — broader cost-routing thread
- [[n8n|n8n]]
- [[ollama|Ollama]]
- [[open-webui|Open WebUI]]
- [[open-brain|OpenBrain]] — sibling Postgres+MCP memory pattern
- [[cole-medin|Cole Medin]]
