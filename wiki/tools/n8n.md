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
- [[summary-nate-herk-zep-memory|n8n + Zep memory]] — knowledge-graph long-term memory for n8n agents
- [[summary-nate-herk-500-ai-workflows|500 AI Workflows]] — five highest-value automations
- [[summary-simon-hoiberg-self-hostable-alternatives|Self-hostable alternatives]] — n8n as the Zapier/Make replacement
- [[summary-simon-hoiberg-5-ai-agent-business-ideas|AI Agent Business Ideas]] — selling n8n workflows as templates or webhook APIs

## Self-hosting

Single Docker container; community edition is full-featured. Hostinger and other VPS providers offer one-click installs (referenced across multiple wiki sources).

## See Also

- [[ai-automation-workflows]]
- [[zep]] — long-term memory backend
- [[openrouter]] — LLM gateway commonly paired with n8n
- [[saas-death-spiral]] — n8n is one of the tools eating per-seat SaaS
