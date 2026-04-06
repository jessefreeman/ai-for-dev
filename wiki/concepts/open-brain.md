---
type: concept
sources: ["Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md", "You Don't Need SaaS. The $0.10 System That Replaced My AI Workflow (45 Min No-Code Build).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [concept, agent-memory, mcp, sql, supabase, vector-embeddings]
---

# OpenBrain

A personal knowledge database architecture by [[Nate B Jones]]: Postgres + PGVector + Supabase + MCP. Gives every AI tool you use persistent, searchable memory across sessions. Thousands of community members have built their own versions. Total cost: $0.10–0.30/month.

## The Problem It Solves

Claude's memory doesn't know what you told ChatGPT. ChatGPT's memory doesn't follow you into Cursor. Every platform has built a walled garden of memory — five separate piles of sticky notes on five separate desks. Memory is designed as lock-in.

> "Your knowledge should not be a hostage to any single platform."

## Architecture

### Capture
Type a thought (Slack, any messaging app) → Supabase edge function runs in parallel:
1. Generates a **vector embedding** (mathematical representation of meaning)
2. Extracts **metadata** (people, topics, type, action items)
3. Stores both in **Postgres with PGVector**
4. Replies in thread with confirmation

Round trip: under 10 seconds.

### Retrieval
MCP server connects to any compatible AI client. Three tools:
1. **Semantic search** — find thoughts by meaning, not keywords. "What was I thinking about career changes?" finds notes about consulting even if "career" was never used.
2. **List recent** — browse what you captured this week
3. **Stats** — see your thinking patterns

Works from Claude, Claude Code, ChatGPT, Cursor, VS Code — anywhere MCP is supported. One brain, every AI.

### Cost
~$0.10–0.30/month on Supabase free tier for ~20 thoughts/day in API calls. "You'll spend more on coffee this morning."

### Setup
~45 minutes, no coding. Tested with a non-technical user who completed the full setup.

## Four Lifecycle Prompts

1. **Memory migration** — extract everything your existing AI tools know about you (Claude memory, ChatGPT memory) into OpenBrain. Run once.
2. **OpenBrain Spark** — interview prompt discovering how the system fits your workflow; generates personalized capture suggestions by category
3. **Quick capture templates** — 5-sentence starters optimized for clean metadata extraction: decision capture, person note, insight, meeting debrief
4. **Weekly review** — end-of-week synthesis: clusters by topic, scans for unresolved actions, detects cross-day patterns, finds connections you missed. ~5 min on Friday afternoon.

## The Compounding Advantage

Person A opens Claude, spends 4 min explaining context. Gets a good answer.

Person B opens Claude — it already knows her role, projects, constraints, team, last week's decisions via MCP. She asks one question and gets an answer informed by 6 months of accumulated context. If she switches to ChatGPT, same brain, same quality.

Every thought captured makes the next search smarter. The gap compounds weekly.

> "Memory architecture determines agent capabilities much more than model selection does."

## The Three-Primitive Stack

OpenBrain is the memory layer in Nate's agent stack:

| Primitive | Implementation |
|---|---|
| Memory | **OpenBrain** (Postgres + PGVector + MCP) |
| Proactivity | [[/loop]] (Anthropic-native) |
| Tools | Any MCP-connected service |

Together, these three replicate most [[OpenClaw]] capabilities without the security concerns.

## Human Web vs Agent Web

The internet is forking: human web (fonts, layouts, reading) vs agent web (APIs, structured data, machine-to-machine). Note-taking apps (Notion, Apple Notes, Evernote) were built for the human web. OpenBrain is infrastructure for the agent web — your thoughts stored in a format anything can query.

## Design Principles

- **You own it**: No platform lock-in. Postgres, not proprietary format.
- **Boring stack**: Postgres isn't VC-backed, isn't deprecating, isn't chasing a growth metric.
- **Standards-based**: MCP for connectivity. No proprietary orchestration layer.
- **Both capture and retrieval**: Any MCP client is both a write point and a search tool.
- **Community-driven**: Open recipes for energy tracking, sales, networking, content, job search.

## Compared to Other Memory Approaches

| Approach | Storage | Search | Auto-improvement |
|---|---|---|---|
| **OpenBrain** | Postgres + PGVector | Semantic (vector) + recency | No (manual) |
| **[[Open Viking]]** | File system | Tiered loading | Yes (auto-compression) |
| **[[Hermes Agent]]** | Built-in | Internal | Yes (closed learning loop) |
| **Platform memory** (Claude, ChatGPT) | Proprietary | Per-platform only | No (siloed) |

## See Also

- [[/loop]] — the proactivity primitive that gives OpenBrain a heartbeat
- [[OpenClaw]] — the framework OpenBrain + /loop replaces
- [[Four Prompting Disciplines]] — the framework OpenBrain serves (context engineering layer)
- [[RAG vs Wiki]] — OpenBrain uses semantic search; wiki uses structural search
- [[Open Viking]] — alternative file-system-based agent memory
- [[Nate B Jones]] — creator
- [[summary-nate-b-jones-openbrain-architecture|Source: The $0.10 System]]
- [[summary-nate-b-jones-loop-openbrain|Source: /loop + OpenBrain]]
