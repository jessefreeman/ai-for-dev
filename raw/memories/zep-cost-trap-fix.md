---
title: Zep cost-trap fix — selective fact pull + Postgres for short-term
summary: Naive Zep integration in n8n sends the entire user graph + full session history every turn; the fix is HTTP-based selective fact pull (limit 3, min_score 0.7) plus Postgres for the context window.
tags: [tool_zep, tool_n8n, topic_agent_memory, source_nate_herk_zep]
---

# Zep cost-trap fix

## Context

From [[summary-nate-herk-zep-memory|n8n + Zep memory]] by [[nate-herk|Nate Herk]]. See [[zep]] entity.

## Content

**The trap**: n8n's native [[zep|Zep]] memory node sends the *entire* user relational graph + full session history to the LLM every turn. Per-turn token usage scales linearly with graph size. Demo: 2,438 tokens for one query against a small graph.

**The fix** (token usage ~2,400 → ~1,000):

1. **Replace native node with HTTP request** to Zep's search endpoint with body:
   ```json
   { "query": "<user message>", "userId": "<session_id>", "limit": 3, "min_score": 0.7 }
   ```
   Returns only the 3 most-relevant facts. Clean up with a JS code node before merging.

2. **Use Postgres for short-term context** instead of Zep's session messages. Reason: Zep's session-message endpoint pulls *oldest first* with no reverse-order parameter. Postgres handles recency cleanly.

3. **Still write back to Zep** after each interaction so the user graph stays current.

**Session ID is identity**: use Telegram chat ID, email address, or user ID as the Zep session ID — each end user gets their own persistent graph. Powerful for onboarding bots, tutoring agents, customer-specific assistants.
