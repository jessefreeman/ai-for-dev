---
title: Sim AI — Open-Source n8n Alternative with AI-Native Nodes
summary: Sim AI is a drag-and-drop visual workflow builder positioned as a friendlier n8n alternative, with AI primitives (agents, knowledge bases, memory, routers) as first-class node types and 60+ pre-built integrations.
tags: [tool_sim_ai, topic_workflow_automation, topic_n8n_alternative, topic_no_code, source_worldofai_sim_ai]
---

# Sim AI — Open-Source n8n Alternative with AI-Native Nodes

## Context

From [[summary-worldofai-sim-ai|WorldofAI's Sim AI walkthrough]]. See also [[sim-ai]].

## Content

**What it is**: Open-source visual AI agent builder. Drag-and-drop canvas. Self-hostable via Docker. GitHub: `simstudioai/sim`.

**Node types** (the AI primitives are first-class, not bolted on):
- **Agents** — LLM execution; pick model + prompt
- **Knowledge bases** — vector store backed; upload docs or crawl websites
- **Memory** — persistent state across runs
- **Routers** — pick a downstream branch
- **APIs**, **Conditions**, **Functions**, **Responses**, **Tools/Integrations**

**60+ pre-built integrations**: Firecrawl, GitHub, Gmail, Slack, Notion, Airtable, Pinecone, [[supabase|Supabase]], plus the major LLM providers (OpenAI, Anthropic, Google, Groq, Cerebras, [[ollama|Ollama]]).

**Built-in Co-pilot**: describe a workflow in natural language, Sim builds it on the canvas for you.

**Setup**: `git clone simstudioai/sim`, `cd sim`, `docker compose up` (or `docker compose --profile ollama up` for the GPU-supported local Ollama variant). Open localhost, create a free account, configure integrations.

**WorldofAI's recommendation**: self-host. The cloud tier exists but "there's no point of paying for this when you can just simply locally install this."

**Where it fits in the wiki**:
- Different layer than [[paperclip|Paperclip]] (which is multi-agent company-level orchestration)
- Plausible build target for [[ai-automation-workflows|Nate Herk's 5 highest-value workflows]] when delivering to clients — the visual canvas is closer to what non-technical clients want to look at
- Aligned with the [[saas-death-spiral]] thesis: self-hosted, no per-seat fees, absorbs former horizontal SaaS spend
