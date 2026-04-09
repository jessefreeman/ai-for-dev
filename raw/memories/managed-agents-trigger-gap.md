---
title: Managed Agents has no native cron / webhook / heartbeat
summary: At launch, Managed Agents only run when their API is called — no scheduled triggers, no webhook intake, no /loop equivalent. This is the load-bearing limitation.
tags: [tool_managed_agents, tool_trigger_dev, concept_proactivity, source_nate_herk_managed_agents]
---

# Managed Agents has no native cron / webhook / heartbeat

## Context

From [[summary-nate-herk-managed-agents|I Tested Claude's New Managed Agents]]. See also [[managed-agents]], [[trigger-dev]], [[slash-loop|/loop]], [[openclaw]].

## Content

As of the April 2026 launch, Managed Agents are **purely reactive** — they only run when their API endpoint is called. There is no:

- Cron / scheduled wake-up
- Webhook intake (e.g., from a connected ClickUp or GitHub event)
- "Heartbeat" equivalent to Claude Code's [[slash-loop|/loop]]
- Event subscription on connected MCP services

Any "agent watches a queue and processes new items" pattern requires **external orchestration**: call the Managed Agent's API from n8n, [[trigger-dev|trigger.dev]], a cron job, or similar. Nate Herk's verdict: he prefers Claude Code + trigger.dev because trigger.dev is cheaper and provides the trigger primitive natively. [[openclaw|OpenClaw]] still wins on this dimension (heartbeats + Telegram messaging).

Watch list: if Anthropic ships a native cron / webhook / event-trigger primitive for Managed Agents, the structural reason to glue this to trigger.dev disappears.
