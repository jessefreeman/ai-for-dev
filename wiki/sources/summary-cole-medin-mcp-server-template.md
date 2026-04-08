---
type: source-summary
sources: ["The ULTIMATE Guide to Building Your Own MCP Servers (Free Template).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, mcp, cole-medin, template, python]
---

# The ULTIMATE Guide to Building Your Own MCP Servers

**Source**: YouTube — [[cole-medin|Cole Medin]], published 2025-04-13
**Tools**: [[mcp|MCP]] (Python SDK / FastMCP), Mem0, Docker

## Summary

[[cole-medin|Cole Medin]]'s comprehensive guide to building MCP servers in Python using **FastMCP**. Walks through the SDK fundamentals (`@mcp.tool` decorator, lifespan pattern for singleton clients, transport options), then builds out a full **Mem0 MCP server** with three tools (`save_memory`, `get_all_memories`, `search_memories`) deployed via Docker. The template is published at `github.com/coleam00/mcp-mem0` and is the wiki's recommended starting point for anyone building their first MCP server.

## Key facts

- **SDK install**: `pip install mcp`; **FastMCP** is the high-level API of choice
- **Transports**: **SSE** (HTTP, remote, port 8070 default) vs **stdio** (local subprocess, faster). Choose stdio for IDE-embedded use, SSE for shared servers.
- **Lifespan pattern**: singleton database/API client created at server start, passed via context to all tool calls — avoids reconnect-per-call overhead
- **Tool decorator**: `@mcp.tool` + docstring. The **docstring** is what the LLM sees when picking tools — write it like a tool description, not a Python docstring
- **Mem0 template**: 3 tools, deployable via Docker or `python server.py`, repo `github.com/coleam00/mcp-mem0`

## Why it matters

This is the **wiki's canonical "how to build an MCP server" reference** — until now, MCP coverage was about *consuming* MCP servers (Stagehand, Task Master, Brave Search, Perplexity). Cole's video is the wiki's first source on the *production* side. Pairs with [[summary-cole-medin-context7-mcp|the Context7 walkthrough]] (also Cole, also this batch) for the "what does a great MCP server look like" companion piece.

The **lifespan + stdio** combination is the part most beginners miss — they default to SSE because the docs lead with it, then wonder why every tool call reconnects. Cole's framing fixes that for any future builder reading the page.

## See Also

- [[mcp|MCP]] — protocol page; this source is the canonical builder reference
- [[summary-cole-medin-context7-mcp|Context7 — production MCP server example]]
- [[cole-medin|Cole Medin]]
- [[open-brain|OpenBrain]] — sibling Postgres+MCP memory pattern (Cole's template uses Mem0; OpenBrain uses Postgres directly)
