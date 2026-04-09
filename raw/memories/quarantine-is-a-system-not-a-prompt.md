---
title: Quarantine is a system, not a prompt
summary: Berman's OpenClaw survived Pliny's attacks because the architecture has a quarantine STEP separate from the agent's main loop, not because the system prompt was clever.
tags: [concept_ai_security, concept_architecture, tool_openclaw, source_matthew_berman_i_was_hacked]
---

# Quarantine is a system, not a prompt

## Context

From [[summary-matthew-berman-i-was-hacked|Matthew Berman — I was hacked]]. See also [[ai-personal-agent-hardening]], [[openclaw]].

## Content

Every attack [[pliny-the-liberator|Pliny the Liberator]] ran against Matthew Berman's hardened OpenClaw ended in *"got caught and quarantined"* — never *"got blocked at the LLM."* This distinction is load-bearing.

A clever system prompt is not hardening. Prompt-level defenses are bypassable in principle by *any* of the [[ai-personal-agent-hardening|five named attack classes]] — that's literally what jailbreaks are for. What saved Berman is that his architecture has a **quarantine step**, separate from the agent's main loop, that processes-then-isolates suspicious inputs before they reach the part of the system with read access to memory or write access to action tools.

**The architectural pattern**:
1. Inbound message arrives at the **scanning layer** (a stateless screener running the best available frontier model — see [[two-hardening-rules]])
2. Scanning layer makes a quarantine/pass decision
3. Quarantined messages go to a hold queue for human review — they never touch the agent's main loop
4. Passed messages go to the **agent loop** which has read access to memory and write access to tools
5. Outputs from the agent loop pass through an **egress filter** before going to external destinations

The quarantine layer is the load-bearing primitive. Without it, prompt injection eventually wins because any prompt-level defense can be defeated by a sufficiently clever payload. With it, even if a payload bypasses the scanner, the human-in-loop catches it before action.

**Implication**: any personal AI agent product that doesn't expose a quarantine architecture as a first-class feature is shipping unhardened. This is the wiki's open question for [[managed-agents|Managed Agents]], [[conway|Conway]], [[paperclip|Paperclip]], and [[hermes-agent|Hermes Agent]].
