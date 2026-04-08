---
type: entity
created: 2026-04-07
updated: 2026-04-07
tags: [tool, automation, ai-agents, self-hostable]
---

# n8n

Open-source workflow automation platform with the **best AI-agent implementation of any commercial automation tool** (Simon Høiberg's claim, corroborated by every n8n source in this wiki). Self-hostable for unlimited workflows; SaaS tier exists. The dominant builder's substrate for the AI-automation-agency category and the canonical visual home for the [[ai-automation-workflows|five high-value automations]].

## Why it matters

n8n is the convergence point for a huge swath of the wiki's AI-agent content: voice agents, knowledge-graph memory agents, content repurposing pipelines, business automations. Where [[claude-code]] is the canonical AI dev tool, n8n is the canonical no-code agent runner. **Long-standing gap in the wiki — finally filled.**

## Patterns this wiki covers

- **AI agent node** with chat models from OpenAI, Anthropic, [[openrouter]], etc.
- **Webhook triggers** for inbound events (voice calls, emails, form submissions)
- **HTTP request nodes** for arbitrary API integration when native nodes don't exist
- **Code nodes** for cleanup/transformation between API responses (Claude can write these from a sample JSON)
- **Memory backends**: simple in-NodeMem, Postgres for short-term, [[zep]] for long-term knowledge graph
- **Output parsers** with structured output schemas to control LLM JSON shape

## Workflows in this wiki

- [[summary-zubair-trabzada-retell-voice-agent|Inbound voice agent]] — Retell + n8n + Google Sheets/HubSpot
- [[summary-tin-rovic-youtube-seo-blog|YouTube → SEO blog]] — n8n + YouTube Transcript API + OpenRouter + WordPress
- [[summary-tin-rovic-youtube-scraper-n8n|YouTube channel scraper]] — free YouTube Data API v3 scraper; foundational creator-research recipe
- [[summary-nate-herk-zep-memory|n8n + Zep memory]] — knowledge-graph long-term memory for n8n agents
- [[summary-nate-herk-500-ai-workflows|500 AI Workflows]] — five highest-value automations
- [[summary-nate-herk-faceless-shorts-n8n|Faceless YouTube Shorts]] — Ideas Agent + Creator Agent + [[json-to-video]] short-form pipeline
- [[summary-jay-e-longform-youtube-videos|Longform YouTube videos]] — Jay E's deeper variant with 3-section error-routed Creator Agent and JSON-template customization
- [[summary-zubair-trabzada-perplexity-node-n8n|Perplexity node v1.98+]] — first-class real-time search inside the AI Agent node
- [[summary-simon-hoiberg-self-hostable-alternatives|Self-hostable alternatives]] — n8n as the Zapier/Make replacement
- [[summary-simon-hoiberg-5-ai-agent-business-ideas|AI Agent Business Ideas]] — selling n8n workflows as templates or webhook APIs

## First-class nodes worth tracking

- **Perplexity** (v1.98+) — real-time web search with citations as a first-class node and AI Agent tool slot. See [[perplexity]].
- **Zep** — long-term knowledge-graph memory backend
- **AI Agent** — central node that hosts tools (Perplexity, MCP servers, etc) and routes them through a chosen LLM

## Self-hosting

Single Docker container; community edition is full-featured. Hostinger and other VPS providers offer one-click installs (referenced across multiple wiki sources).

## See Also

- [[ai-automation-workflows]]
- [[zep]] — long-term memory backend
- [[perplexity]] — real-time search backend
- [[json-to-video]] — video assembly primitive used by the n8n content pipelines
- [[openrouter]] — LLM gateway commonly paired with n8n
- [[saas-death-spiral]] — n8n is one of the tools eating per-seat SaaS
