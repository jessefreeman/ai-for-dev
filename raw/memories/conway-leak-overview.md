---
title: Conway — Anthropic's leaked always-on agent project
summary: Unannounced Anthropic internal project surfaced from the Claude Code leak; standalone sidebar agent environment with proprietary .cnw.zip extension format on top of MCP.
tags: [tool_conway, person_nate_b_jones, topic_anthropic, topic_leak, source_nate_b_jones_conway_leak]
---

# Conway — Anthropic's leaked always-on agent

## Context

From [[summary-nate-b-jones-conway-leak|I Analyzed 512,000 Lines of Leaked Code]]. See also [[conway]], [[anthropic]], [[managed-agents]], [[behavioral-lock-in]].

## Content

Conway is an unannounced internal Anthropic project surfaced by Nate B Jones from the early-2026 Claude Code source leak (the same packaging-error publication that produced the 12 Agent Primitives analysis). Not on Anthropic's roadmap.

**Structural facts from the leak:**
- Standalone sidebar inside the Claude interface (not a chat window — an entire agentic environment)
- Three core areas: search, chat, **system**
- System area subsections: **Extensions** (install `.cnw.zip` add-ons; app-store pattern), **Connectors and Tools** (Chrome browser control as a first-class connector), **Automatic Triggers** (public web URLs outside services can ping to wake the agent up; per-service allow toggles)
- Persistent memory across sessions implied throughout

The factual structure is treated as primary-source-from-leak in the wiki. Trajectory predictions (when Conway launches, OpenAI/Google equivalents) are flagged as Nate's editorial.
