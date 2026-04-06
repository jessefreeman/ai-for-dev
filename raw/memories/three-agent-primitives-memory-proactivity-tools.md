---
title: Three Agent Primitives — Memory, Proactivity, Tools
summary: Nate B Jones's framework reducing agent architecture to three Lego bricks — memory, proactivity, and tools — which together replicate OpenClaw without the security risks.
tags: [person_nate_b_jones, concept_agents, concept_slash_loop, concept_open_brain, source_nate_b_jones_loop_openbrain]
---

# Three Agent Primitives — Memory, Proactivity, Tools

## Context

From [[summary-nate-b-jones-loop-openbrain|Nate B Jones's /loop + OpenBrain video]]. See also [[/loop]], [[OpenBrain]], [[OpenClaw]].

## Content

Every agent needs three primitives before it stops being a chatbot:

1. **Memory** — read/write to something persistent. Without it, every interaction starts from zero; the agent is perpetually a new hire.
2. **Proactivity** — act without being prompted (`/loop`). Without it, you are the metronome — every minute you spend remembering to push the agent is a minute it could spend doing work.
3. **Tools** — reach out and touch systems (APIs, databases, artifacts). Without tools, the agent can think but has no hands — a brain in a jar.

**The key insight**: OpenClaw's explosive appeal (200k+ stars, "most consequential software launch in history") is reducible to these three. You can replicate the capabilities by combining `/loop` (proactivity, Anthropic-native) + OpenBrain (memory, SQL + MCP) + MCP tools — without OpenClaw's security nightmare.

**The accumulation thesis**: "The value of a loop isn't in any single cycle. It's in the accumulation across cycles." Loop alone = parrot. Loop + memory = detective that builds a case.
