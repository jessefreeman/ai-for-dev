---
title: Paperclip Heartbeat Pattern
summary: Paperclip agents wake on a schedule with fresh context, review their tasks, and work autonomously — the heartbeat pattern that drove OpenClaw's popularity.
tags: [tool_paperclip, tool_claude_code, concept_multi_agent, topic_agent_orchestration, source_nate_herk_paperclip]
---

# Paperclip Heartbeat Pattern

## Context

From [[summary-nate-herk-paperclip|Claude Code + Paperclip]] by [[Nate Herk]]. See [[Paperclip]] and [[Multi-Agent Orchestration]].

## Content

Paperclip agents don't run continuously — they operate on heartbeat cycles:

- Agents wake on a configurable schedule: every 4, 8, or 12 hours
- On each wake, they start with **fresh context** (no memory from previous sessions)
- The heartbeat file is an execution checklist that runs every wake cycle — it tells the agent to check its tasks, review its instructions, and re-orient before acting
- After orienting, the agent works autonomously until it hits a blocker or approval need, then surfaces that to the human inbox

Each agent has 4 configuration files:
- **Soul** — persona, voice, values
- **Heartbeat** — execution checklist for every wake
- **Agents** — how to collaborate with other agents
- **Tools** — what capabilities are available

The fresh-context-on-wake design means agents must be able to fully reconstruct their situation from the ticketing system and their configuration files alone.
