---
type: entity
sources: ["n8n Just Made AI Agents 10x Smarter NEW Perplexity Node.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [tool, ai-search, real-time-search, llm, citations]
---

# Perplexity

AI search engine with citations. Returns answers grounded in live web results, with source URLs attached. The wiki tracks Perplexity primarily as a **tool** that other systems call — it's the canonical "real-time-search" primitive for AI agents.

## API surface

Three model tiers exposed via API:

- **Sonar** — cheap (~$0.02/req), good for general live lookups
- **Sonar Pro** — better quality, higher cost
- **Sonar Deep Search** — full deep-research-style multi-hop reasoning

Minimum API top-up ~$5.

## Where Perplexity shows up in this wiki

- **[[n8n|n8n]] Perplexity node** (v1.98+) — first-class node + AI Agent tool slot. Closes the real-time-search loop for n8n agents. See [[summary-zubair-trabzada-perplexity-node-n8n]].
- **[[agent-zero|AgentZero]]** — Perplexity is the canonical free MCP integration in the AgentZero quickstart.
- **MCP ecosystem** — `perplexity-mcp` is one of the most-installed third-party MCP servers.

## Why it matters

Perplexity is the wiki's default answer to "how does an AI agent know what's true *right now*?" — it's the real-time complement to long-term memory ([[zep|Zep]], [[open-brain|OpenBrain]]) and short-term context (the LLM's own window). Increasingly bundled as a built-in node or first-class MCP server, which is the same MCP-as-growth-hack pattern [[anthropic|Anthropic]] gets credit for.

## Sources

- [[summary-zubair-trabzada-perplexity-node-n8n|n8n Just Made AI Agents 10x Smarter NEW Perplexity Node]] — first-class n8n integration
- [[summary-agent-zero-framework|AgentZero]] — Perplexity as free MCP integration

## See Also

- [[n8n|n8n]] — primary integration in this wiki
- [[mcp|MCP]] — the protocol the cross-host integrations use
- [[zep|Zep]] / [[open-brain|OpenBrain]] — long-term memory siblings
- [[agent-zero|AgentZero]]
