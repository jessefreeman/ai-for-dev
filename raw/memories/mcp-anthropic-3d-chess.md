---
title: MCP — Anthropic's 3D Chess Move
summary: By putting MCP servers in the hands of service providers (not LLM vendors), Anthropic externalized the integration cost across the whole ecosystem — every new MCP server makes every compliant client more capable for free.
tags: [concept_mcp, topic_anthropic_strategy, topic_protocols, source_greg_isenberg_mcp_explained]
---

# MCP — Anthropic's 3D Chess Move

## Context

From [[summary-greg-isenberg-mcp-explained|Greg Isenberg's MCP podcast with Ras Mic]]. See also [[mcp]].

## Content

**The architectural choice**: in the MCP design, the **MCP server lives with the service provider, not the LLM vendor**. If you want LLMs to talk to your database, *you* (the database company) build and ship the MCP server.

**Why this is 3D chess for Anthropic**:
- Anthropic externalized integration cost across the entire ecosystem
- Every new MCP server makes every compliant client (Claude, Cursor, Windsurf, Tempo, etc.) more capable
- Anthropic doesn't pay for any of the integration work
- Service providers are *incentivized* to publish servers because it puts their tool inside every agent that exists

This is why Supabase, Figma, Cloudflare, GitHub, Postgres, Slack, and hundreds of others raced to ship MCP servers in early 2025–2026.

**The four components**: MCP client (LLM-side app) ↔ protocol (the spec) ↔ MCP server (service-side adapter) ↔ service (the actual DB/API/CLI).
