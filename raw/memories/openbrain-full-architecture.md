---
title: OpenBrain Full Architecture — Postgres + PGVector + MCP
summary: The definitive OpenBrain architecture: Postgres with PGVector for semantic search, Supabase for hosting, MCP for universal AI access, $0.10-0.30/month.
tags: person_nate_b_jones, concept_open_brain, tool_supabase, concept_mcp, source_nate_b_jones_openbrain_architecture
---

# OpenBrain Full Architecture — Postgres + PGVector + MCP

## Context

From [[summary-nate-b-jones-openbrain-architecture|Nate B Jones's OpenBrain architecture video]]. See also [[OpenBrain]].

## Content

**Capture**: Type thought in Slack (or any app) → Supabase edge function generates vector embedding + extracts metadata (people, topics, actions) → stores in Postgres with PGVector. Under 10 seconds.

**Retrieval**: MCP server with three tools — semantic search (by meaning), list recent, stats. Works from Claude, ChatGPT, Cursor, VS Code — any MCP client.

**Cost**: $0.10–0.30/month. "You'll spend more on coffee this morning."

**Setup**: ~45 minutes, no coding required.

**The walled garden problem this solves**: Claude memory ≠ ChatGPT memory ≠ Cursor memory. Five separate piles of sticky notes. Memory is designed as platform lock-in. OpenBrain gives every tool the same brain via MCP.

**Four lifecycle prompts**: (1) Memory migration — extract existing AI memories once. (2) OpenBrain Spark — interview prompt for personalized capture suggestions. (3) Quick capture templates for clean metadata extraction. (4) Weekly review — 5 min Friday synthesis.

**Compounding advantage**: Every thought captured makes the next search smarter. Person B (with OpenBrain) gets 6 months of context loaded before typing. Person A starts from zero every time. The gap widens weekly.
