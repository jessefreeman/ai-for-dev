---
title: The two AI personal agent hardening rules
summary: Human in the loop is mandatory; use the best possible model as your frontier scanner. Extracted from Berman's hardening challenge against Pliny.
tags: [concept_ai_security, concept_hardening, person_matthew_berman, tool_openclaw, source_matthew_berman_i_was_hacked]
---

# The two AI personal agent hardening rules

## Context

From [[summary-matthew-berman-i-was-hacked|Matthew Berman — I was hacked]]. See also [[ai-personal-agent-hardening]], [[openclaw]], [[claude]].

## Content

Matthew Berman's defensive playbook reduces to two rules. The wiki adopts them as the canonical hardening checklist for any always-on personal AI agent.

### Rule 1: Human in the loop is mandatory

No always-autonomous personal agent without a quarantine + approval step. **Every** Pliny attack ended in *"got caught and quarantined"* — not *"got blocked at the LLM."* The quarantine is what saved Berman's OpenClaw, not Opus 4.6 thinking's prompt-injection resistance alone.

This is the **load-bearing constraint** on the Conway / [[managed-agents|Managed Agents]] / Era 3 always-on agent vision tracked in [[anthropic-surface-expansion]] and [[persistent-agent-layer-wars]]: a truly autonomous always-on agent without a human-in-loop quarantine is not hardenable today. If Conway ships without one, it ships exploitable.

### Rule 2: Use the best possible model as your frontier scanner

> *"Unless you are putting your best possible model forward as the frontier scanner, as the thing that is kind of your first line of defense, it's going to collapse. You are going to get infiltrated."* — Berman
>
> *"The thinking layer is going to cut off a lot of the low-hanging fruit. People running local models, this type of thing will probably work."* — Pliny

**The first model an inbound message touches is the most important model in the system** — not the one that does the actual work afterward. Frontier reasoning models (Opus 4.6 thinking, GPT-5 thinking, Gemini reasoning tier) catch low-hanging-fruit prompt injection. Local / instant / small models do not.

**Direct implication for the wiki's [[open-source-model-integration|cost-reduction thread]]**: the cost-saved-by-local-models calculus only applies to the *work* phase. The *scanning* phase should always use the best available frontier model regardless of cost. Hybrid agents are not just *"local for cheap, frontier for hard"* — they're **"frontier for the door, local for the room."**
