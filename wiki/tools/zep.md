---
type: entity
created: 2026-04-07
updated: 2026-04-07
tags: [tool, agent-memory, knowledge-graph]
---

# Zep

Hosted long-term agent memory service. Stores per-user **relational graphs**: entities (people, places, tools, interests) connected by typed relationships (`uses`, `lives in`, `likes watching`). Each interaction adds new facts and relationships automatically. Compatible with [[n8n]] (native node + HTTP API), Claude tool calls, and most agent frameworks.

## Why it matters

Agent memory has been a long-standing wiki thread (see [[open-brain]], [[openbrain-architecture]]). Zep is the hosted-knowledge-graph alternative to the DIY-Postgres approach: less control, zero maintenance, but the cost trap is real if you use the native integration naively.

## Usage patterns

- **Per-user graph** — session ID = identity (Telegram chat ID, email, user ID)
- **Sessions** — short-term turn history alongside the graph
- **Search API** — `query`, `userId`, `limit`, `min_score` for selective fact retrieval

## The cost trap (and the fix)

Native n8n Zep node sends the **entire** graph + full session history every turn. Per-turn token usage scales linearly with graph size.

**Hybrid fix** (per [[summary-nate-herk-zep-memory|Nate Herk]]):
1. **HTTP request** to Zep search endpoint with `limit: 3, min_score: 0.7` — only the 3 most relevant facts come back
2. **Postgres** for short-term context window (Zep's session API can't reverse-order, so it returns the *oldest* messages instead of recent ones)

Result: ~2,400 tokens → ~1,000 tokens per turn for the same query.

## Sources

- [[summary-nate-herk-zep-memory|n8n + Zep memory]]

## See Also

- [[open-brain]], [[openbrain-architecture]] — DIY Postgres+MCP alternative
- [[n8n]] — primary integration platform in this wiki
