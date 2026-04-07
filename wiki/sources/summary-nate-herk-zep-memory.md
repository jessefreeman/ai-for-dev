---
type: source-summary
sources: ["Unlock the Next Evolution of Agents with Human-like Memory (n8n + zep).md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, n8n, zep, agent-memory, knowledge-graph]
---

# Unlock the Next Evolution of Agents with Human-like Memory (n8n + Zep)

**Author / channel:** [[nate-herk|Nate Herk]]
**Format:** video
**Source:** [Original](../../raw/archive/Unlock%20the%20Next%20Evolution%20of%20Agents%20with%20Human-like%20Memory%20%28n8n%20%2B%20zep%29.md)
**Published:** 2025-07-14

## Summary

Nate Herk demos giving an [[n8n]] AI agent **long-term memory via [[zep|Zep's]] relational graph** — entities and relationships, not just turn history. Then identifies the cost trap: naive Zep integration sends *all* facts to the LLM every turn, blowing up token usage. Builds a hybrid pattern that uses HTTP requests to (a) pull the **3 most relevant** facts from Zep (relevance threshold 0.7) for the current query and (b) use **Postgres** for short-term conversation history (because Zep's native context API can't reverse-order pulls). Token usage drops from ~2,400 to ~1,000 per turn for the same query.

## Key Points

- **Why simple memory isn't enough** — n8n's built-in simple memory only stores the last N turns. No long-term entity knowledge, no relationships.
- **Zep relational graph** — each user gets a graph of entities (yourself, places, interests, tools) with typed relationships ("uses", "lives in", "likes watching"). Each chat populates the graph automatically.
- **The cost trap** — n8n's native Zep integration sends the *entire* user graph + full session history every turn. Demo: 2,438 tokens for a single turn against a small graph. Scales badly.
- **Method 1: HTTP-based selective fact pull** — instead of native Zep node, use HTTP request to Zep's search endpoint with `query`, `userId`, `limit: 3`, `min_score: 0.7`. Then a JS code node cleans up the response. Result: 3 most-relevant facts only.
- **Method 2: Hybrid Zep + Postgres** — Zep for the user graph (long-term), Postgres for context window (short-term). Reason: Zep's session-message endpoint pulls oldest-first with no reverse parameter. Postgres handles the recency requirement cleanly.
- **Token savings** — same prompt: 2,438 tokens (naive Zep) → 1,045 tokens (selective pull). ~2.4× reduction.
- **Session ID = identity hook** — using Telegram chat ID, email address, or user ID as the Zep session ID gives each end user their own persistent graph. Powerful for onboarding bots, tutoring agents, customer-specific assistants.
- **Code-from-Claude trick** — Nate's pattern when an n8n code node is needed: paste sample input JSON into Claude, describe the desired output shape, paste the returned code. He doesn't write JS himself.

## Connected Pages

- [[n8n]] — backbone
- [[zep]] — entity
- [[nate-herk|Nate Herk]] — channel hub (now 2 sources)
- [[open-brain]] — alternative agent-memory architecture (Postgres + MCP)
- [[openbrain-architecture|OpenBrain Architecture]] — comparison point: Zep is hosted-graph, OpenBrain is DIY-Postgres
