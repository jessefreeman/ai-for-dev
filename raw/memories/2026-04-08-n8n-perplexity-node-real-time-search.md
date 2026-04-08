---
title: n8n's first-class Perplexity node closes the real-time-search loop for n8n agents
summary: n8n v1.98+ ships a Perplexity node that drops into the AI Agent node as a tool — agents now get live web search with citations without HTTP-request boilerplate.
tags: [tool_n8n, tool_perplexity, concept_real_time_search, source_zubair_trabzada_perplexity_node_n8n]
---

# n8n's Perplexity node closes the real-time-search loop

## Context

From [[summary-zubair-trabzada-perplexity-node-n8n|Zubair Trabzada on the n8n Perplexity node]]. See also [[n8n]], [[perplexity]], [[ai-automation-workflows]].

## Content

[[n8n]] **v1.98+** added a **first-class Perplexity node**. The crucial detail is that it can be attached as a **tool under the AI Agent node**, which means the agent itself decides when to call Perplexity (vs the workflow author hand-wiring an HTTP request beforehand).

Three model tiers exposed:

- **Sonar** — ~$0.02/req, general live lookups
- **Sonar Pro** — better quality, higher cost
- **Sonar Deep Search** — full deep-research-style multi-hop reasoning

Setup: get a Perplexity API key (~$5 minimum), create an n8n credential, drop the Perplexity node into a workflow or attach to an AI Agent node as a tool.

**Why this matters for the wiki's n8n thread**: n8n agents previously had memory ([[zep|Zep]] long-term, Postgres short-term), generation (OpenAI/Claude), and external action (webhooks, [[retell-ai|Retell]]). The missing piece was *"what's true right now?"* — and they had to fake it with hand-wired HTTP requests. The Perplexity node closes that loop as a first-class primitive. Combined with [[zep|Zep]], [[ai-automation-workflows|the canonical no-code agent]] now has memory + real-time search + generation + action all as first-class nodes.

Pattern note: the canonical free MCP server in [[agent-zero|AgentZero]]'s quickstart is also Perplexity — it's the cross-host real-time-search primitive.
