---
title: OpenBrain — Agent Memory for $0.30/month
summary: Nate B Jones's community pattern for giving agents persistent memory — a SQL database (Supabase) connected via MCP server, costing pennies per month.
tags: [person_nate_b_jones, concept_open_brain, tool_supabase, concept_mcp, source_nate_b_jones_loop_openbrain]
---

# OpenBrain — Agent Memory for $0.30/month

## Context

From [[summary-nate-b-jones-loop-openbrain|Nate B Jones's /loop + OpenBrain video]]. See also [[OpenBrain]].

## Content

OpenBrain is the simplest possible agent memory: a SQL database (Supabase, ~$0.10–0.30/month) connected to Claude Code through an MCP server. That's it.

**What it enables**: The agent writes observations after each interaction. Next session, it reads its own prior observations. Over weeks, it pattern-matches across history.

**Energy tracking example**: Without memory, agent just says "drink water, take a walk" every morning. With OpenBrain, after 12 mornings of data: "You've been tired 9 of the last 12 mornings. The 3 good mornings all followed evenings where you ate before 8pm. Your energy problems correlate with late eating, not caffeine."

**Design principles**: You own it (no platform lock-in). Standards-based (MCP). Cheap ($0.30/month). Works with any MCP-compatible agent.

Thousands of community members have built their own versions. OpenBrain has become a community project with shared recipes for energy tracking, sales pipelines, networking briefings, content calendars.
