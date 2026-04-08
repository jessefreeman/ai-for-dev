---
type: source-summary
sources: ["n8n + MCP Build and Automate Anything! Run ALL Your AI Locally - LLMs, AI Agents! (Opensource).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, n8n, mcp, local-ai, brave-search]
---

# n8n + MCP: Build and Automate Anything Locally

**Source**: YouTube — [[worldofai|WorldofAI]], published 2025-04-20
**Tools**: [[n8n|n8n]], [[mcp|MCP]], `n8n-nodes-mcp` (community node), Brave Search MCP

## Summary

WorldofAI demonstrates wiring **MCP servers into n8n via the `n8n-nodes-mcp` community node** (by `nerding-io`). The setup: install n8n via Docker with `N8N_NODES_EXCLUDE_CUSTOM=false` to allow community nodes, install `n8n-nodes-mcp`, then build a workflow with **chat trigger → chat model → MCP client (list tools) → MCP client (execute tool)**. The demo connects the **Brave Search MCP server** as a tool, so an n8n AI agent can do real-time web search inside any workflow. The pattern generalizes: any MCP server (Perplexity, Filesystem, Postgres, custom) drops into n8n the same way.

## Key facts

- **Community node**: `n8n-nodes-mcp` from `nerding-io`
- **Required env**: `N8N_NODES_EXCLUDE_CUSTOM=false` in the n8n container
- **Workflow shape**: chat trigger → chat model → MCP client (list-tools) → MCP client (execute-tool)
- **MCP install path**: Docker Desktop MCP CLI / `npx` pattern (e.g. `npx @brave-ai/brave-search-mcp`)
- **Demo**: Brave Search MCP wired to an OpenAI-backed n8n agent — real-time search with citations
- **Model flexibility**: works with OpenAI, [[ollama|Ollama]] local, [[openrouter|OpenRouter]], any chat-model n8n supports

## Why it matters

This is the **second n8n+MCP angle in the wiki**, after the [[summary-zubair-trabzada-perplexity-node-n8n|first-class Perplexity node from v1.98+]]. The two cover complementary patterns:

| Pattern | When to use |
|---|---|
| **First-class node** (Perplexity v1.98+) | When n8n has shipped a native node for the tool you need |
| **Community MCP node** (`n8n-nodes-mcp`) | When n8n hasn't shipped a native node, but an MCP server exists |

The MCP path is the **escape hatch**: it gives n8n access to the entire MCP ecosystem (Brave, Filesystem, Postgres, Stagehand, Context7, Mem0 — anything wrapped as MCP) without waiting for n8n to ship a first-class node for each one. That makes n8n + MCP the wiki's most general-purpose no-code agent runtime.

## See Also

- [[n8n|n8n]]
- [[mcp|MCP]]
- [[summary-zubair-trabzada-perplexity-node-n8n|First-class n8n Perplexity node]]
- [[summary-cole-medin-mcp-server-template|How to build your own MCP server]]
- [[worldofai|WorldofAI]]
