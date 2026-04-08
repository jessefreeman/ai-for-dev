---
type: entity
sources: ["Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md", "You Don't Need SaaS. The $0.10 System That Replaced My AI Workflow (45 Min No-Code Build).md", "Code 100x Faster with AI, Here's How (No Hype, FULL Process).md", "Sim AI Easily Create AI Agents That Can Automate Anything! Opensource n8n Alternative!.md", "Archon OS First-Ever AI Operating System for AI Coding! (Opensource).md", "Run Supabase 100% LOCALLY for Your AI Agents.md"]
created: 2026-04-07
updated: 2026-04-08
tags: [tool, database, postgres, backend-as-a-service, open-source]
---

# Supabase

Open-source backend-as-a-service built on **Postgres + PGVector** + auto-generated REST/GraphQL APIs + auth + storage + edge functions. Has become the **default backend infrastructure** referenced across this wiki — especially for agent memory systems, AI coding workflows, and visual agent builders. Self-hostable, with a generous free hosted tier. The wiki's canonical full self-hosted recipe is [[summary-cole-medin-local-supabase-rag|Cole Medin's local-AI-packaged stack]] — Supabase + n8n + Ollama + Open WebUI in a single docker-compose, with PGVector as the vector store for local RAG agents.

- **Vendor**: Supabase Inc.
- **Site**: supabase.com
- **License**: Open source (Apache 2.0 for the core, dual-licensed for some extensions)
- **Underlying tech**: Postgres + PostgREST + GoTrue (auth) + PGVector (vector search) + Realtime (websockets)

## Why It Keeps Showing Up

Across the ingested wiki content, Supabase is the **convergence point** for several distinct threads:

### 1. Agent Memory Infrastructure ([[OpenBrain]])
[[Nate B Jones]]'s **$0.10/month agent memory system** is built on Supabase's hosted Postgres + PGVector. The architectural argument: instead of paying for a proprietary memory product, run agent memory as a SQL database you own, exposed via [[mcp|MCP]] to any LLM. Supabase makes this practical because Postgres + PGVector + auth + REST API come bundled.

### 2. AI Coding Assistants Backend ([[ai-coding-workflow]])
[[Cole Medin]]'s "Code 100x Faster with AI" video uses Supabase as the demo target — building a Supabase MCP server in a single Windsurf prompt. The workflow assumes Supabase is the database layer for the apps you're building with AI coding assistants.

### 3. AI Coding Command Center ([[archon-os]])
Cole's Archon OS **requires Supabase** as its backing database. Setup involves creating a Supabase project, running a migration SQL file, and pointing Archon at the Supabase URL. Supabase is non-optional for Archon's knowledge base + task management.

### 4. Visual Workflow Builder Integrations ([[sim-ai]])
[[sim-ai|Sim AI]] ships with Supabase as one of its 60+ pre-built integration nodes — for both data storage and as a vector store for knowledge bases.

## Why It Won (Per the Wiki Sources)

The pattern across all four uses is the same: **a Postgres-shaped problem that also needs auth, vector search, and a REST API without writing one.** Supabase replaces what would otherwise be:

| Without Supabase | With Supabase |
|---|---|
| Postgres install + maintenance | Hosted Postgres |
| Write a REST API layer | Auto-generated PostgREST |
| Pick + configure an auth library | GoTrue auth bundled |
| Pick + configure a vector store | PGVector extension included |
| Stand up a webhook system | Realtime built in |
| Pay for 5 separate SaaS tools | One bill |

For agent memory specifically, the killer feature is **PGVector inside Postgres** — vector similarity search against the same database that holds your structured agent state. No two-system sync problem.

## Pricing

- **Free tier**: 500 MB database, 1 GB file storage, 2 GB bandwidth, 50K monthly active users — enough for serious personal projects
- **Pro**: ~$25/month — production tier, more compute, more storage
- **Enterprise**: custom

The free tier is what makes [[OpenBrain]]'s "$0.10/month agent memory" claim possible — you're effectively running on a free Supabase project until you outgrow it.

## Self-Hosting

Supabase is fully open-source and can be self-hosted via Docker Compose. For privacy-sensitive setups (e.g., the [[project-nomad|offline knowledge server]] pattern) or for users who want complete data control, the self-hosted path is supported and documented. The trade-off is operational overhead vs the hosted convenience.

## How It Compares

| | Supabase | Firebase | Neon | Convex |
|---|---|---|---|---|
| Database | Postgres | Firestore (NoSQL) | Postgres | Custom reactive |
| Vector search | **PGVector built in** | Add-on | PGVector add-on | Built in |
| Auth | Built in | Built in | Add-on | Built in |
| Auto REST API | Yes (PostgREST) | Yes (Firestore SDK) | No (write your own) | Yes (functions) |
| Self-hostable | **Yes** | No | No | No |
| Open source | **Yes** | No | Partially | No |
| Free tier | Generous | Generous | Generous | Generous |
| Best for | Postgres-shaped + open source | Mobile-first | Pure Postgres + branching | Reactive backend |

## See Also

- [[OpenBrain]] — the canonical agent memory pattern built on Supabase + PGVector + MCP
- [[archon-os]] — requires Supabase as its backing database
- [[ai-coding-workflow]] — Cole Medin's pattern that uses Supabase as the demo target
- [[sim-ai]] — has Supabase as a first-class integration node
- [[mcp]] — the protocol that exposes Supabase to LLMs (Cole's one-shot Supabase MCP server demo)
- [[project-nomad]] — adjacent self-hosted infrastructure pattern
- [[summary-nate-b-jones-loop-openbrain|Source: /loop + OpenBrain]]
- [[summary-nate-b-jones-openbrain-architecture|Source: OpenBrain Architecture]]
- [[summary-cole-medin-100x-ai-coding|Source: Cole Medin AI coding workflow]]
- [[summary-worldofai-archon-os|Source: Archon OS]]
- [[summary-worldofai-sim-ai|Source: Sim AI]]
