---
type: source-summary
sources: ["You Don't Need SaaS. The $0.10 System That Replaced My AI Workflow (45 Min No-Code Build).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [source, video, agent-memory, mcp, architecture]
---

# You Don't Need SaaS. The $0.10 System That Replaced My AI Workflow

**Source**: YouTube — [[Nate B Jones]], published 2026-03-02
**Link**: https://www.youtube.com/watch?v=2JiMmye2ezg

## Summary

The definitive OpenBrain architecture guide. Nate B Jones lays out why every AI user needs their own memory infrastructure, details the full Postgres + PGVector + Supabase + MCP architecture, and argues that the gap between "I use AI sometimes" and "AI is embedded in how I think" is the career gap of this decade — and it comes down to memory infrastructure.

## The Walled Garden Problem

Claude's memory doesn't know what you told ChatGPT. ChatGPT's memory doesn't follow you into Cursor. Every platform has built a walled garden of memory — five separate piles of sticky notes on five separate desks. Memory is designed as lock-in. This spawned an entire VC-backed industry (Memsync, One Context).

## Human Web vs Agent Web

The internet is forking: the human web (fonts, layouts, reading) and the agent web (APIs, structured data, machine-to-machine). Your Notion workspace is built for human eyes — beautiful, but useless for AI agents that search by meaning, not folder structure. Second brain tools solved the capture/organization problem but not the agent-readable problem.

## The Architecture

**Capture**: Type a thought (Slack, any messaging app) → Supabase edge function generates vector embedding + extracts metadata (people, topics, type, action items) → stores in Postgres with PGVector. Round trip under 10 seconds.

**Retrieval**: MCP server connects to any compatible AI client. Three tools: (1) semantic search (find by meaning), (2) list recent (browse this week), (3) stats (see patterns). Works from Claude, Claude Code, ChatGPT, Cursor, VS Code — anywhere.

**Cost**: $0.10–0.30/month on Supabase free tier, ~20 thoughts/day in API calls.

**Setup**: ~45 minutes, no coding required. Tested with non-technical user.

## Four Lifecycle Prompts

1. **Memory migration** — extract existing memory from Claude, ChatGPT, etc. into OpenBrain. Run once after setup.
2. **OpenBrain Spark** — interview prompt that discovers how the system fits your workflow; generates personalized capture suggestions by category
3. **Quick capture templates** — 5-sentence starters for clean metadata extraction: decision capture, person note, insight, meeting debrief
4. **Weekly review** — end-of-week synthesis clustering by topic, scanning for unresolved action items, detecting cross-day patterns, finding connections missed

## The Compounding Advantage

Person A opens Claude, spends 4 min explaining context, gets good answer. Person B opens Claude — it already knows her role, projects, constraints, team, decisions from last week via MCP. Every thought captured makes the next search smarter. The gap compounds weekly.

> "Memory architecture determines agent capabilities much more than model selection does."

## Key Correction to OpenBrain Concept Page

The /loop video described OpenBrain as "SQL database, no vector store, no embeddings." This video reveals the full architecture **does** use vector embeddings (PGVector) for semantic search. The earlier description was simplified.

## Pages Created or Updated

- [[OpenBrain]] — major update with full architecture
- [[Nate B Jones]] — updated

## See Also

- [[/loop]] — the proactivity primitive paired with OpenBrain
- [[OpenClaw]] — what OpenBrain + /loop replaces
- [[Four Prompting Disciplines]] — the framework OpenBrain serves (context/specification engineering)
- [[RAG vs Wiki]] — OpenBrain uses semantic search (embeddings) for personal knowledge
