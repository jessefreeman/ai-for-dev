---
type: concept
sources: ["Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md"]
created: 2026-04-06
updated: 2026-04-06
tags: [concept, agent-memory, mcp, sql, supabase]
---

# OpenBrain

A personal knowledge database pattern created by [[Nate B Jones]]: a SQL database connected to AI tools through an MCP server. Gives agents persistent memory across sessions. Thousands of community members have built their own versions.

## Architecture

The simplest possible memory system:
1. A SQL database (Supabase recommended — ~$0.10–0.30/month, no platform lock-in)
2. Connected via an MCP server to Claude Code (or any MCP-compatible agent)

That's it. The agent reads from and writes to the database. No vector store, no embeddings, no orchestration layer.

## What It Enables

Without memory, every agent interaction starts from zero — the agent is "perpetually a new hire on their very first day." With OpenBrain:

- Agent writes observations after each interaction
- Next session, agent reads its own prior observations
- Over time, agent pattern-matches across weeks of data
- Can identify trends the human hasn't noticed

## The Three-Primitive Stack

OpenBrain is the memory layer in Nate's agent stack:

| Primitive | Implementation |
|---|---|
| Memory | **OpenBrain** (SQL + MCP) |
| Proactivity | [[/loop]] (Anthropic-native) |
| Tools | Any MCP-connected service |

Together, these three replicate most [[OpenClaw]] capabilities without the security concerns.

## Design Principles

- **You own it**: No platform lock-in. It's your database, your data.
- **Cheap**: $0.10–0.30/month for Supabase.
- **Standards-based**: MCP for connectivity. No proprietary orchestration layer.
- **Portable**: Works with any agent that supports MCP, not just Claude Code.
- **Community-driven**: Open recipes shared for energy tracking, sales pipelines, networking briefings, content calendars, job applications.

## Compared to Other Memory Approaches

| Approach | Storage | Access | Auto-improvement |
|---|---|---|---|
| **OpenBrain** | SQL database | MCP server | No (manual schema) |
| **[[Open Viking]]** | File system | Direct | Yes (auto-compression, tiered loading) |
| **[[Hermes Agent]]** | Built-in | Internal | Yes (closed learning loop, skill creation) |

## See Also

- [[/loop]] — the proactivity primitive that gives OpenBrain a heartbeat
- [[OpenClaw]] — the framework OpenBrain + /loop replaces
- [[Open Viking]] — alternative file-system-based agent memory
- [[Nate B Jones]] — creator
- [[summary-nate-b-jones-loop-openbrain|Source: /loop + OpenBrain]]
