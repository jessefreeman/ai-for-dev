---
title: Frontier for the door, local for the room
summary: The cost-saved-by-local-models calculus only applies to the work phase. The scanning phase should always use the best available frontier model regardless of cost.
tags: [concept_ai_security, concept_hybrid_agents, concept_cost_routing, source_matthew_berman_i_was_hacked]
---

# Frontier for the door, local for the room

## Context

From [[summary-matthew-berman-i-was-hacked|Matthew Berman — I was hacked]]. Refines the wiki's [[open-source-model-integration|cost-reduction thread]]. See also [[ai-personal-agent-hardening]], [[two-hardening-rules]].

## Content

The wiki has a long-running thread on cost reduction via local models — [[ollama|Ollama]], [[openrouter|OpenRouter]] free tiers, [[task-master-ai|Task Master AI]]'s three-model split (main/research/fallback), [[agent-zero]]'s 5-slot routing. The framing has been: **use frontier models for the hard parts, use local models for the cheap parts.**

The Berman/Pliny challenge adds a hardening dimension that **changes which "parts" are which**:

- **The scanning phase** (the first model that touches an inbound message) should always use the best available frontier reasoning model. Local / instant / small models will fall for low-hanging-fruit prompt injection that frontier reasoners catch. This is non-negotiable — the temptation to save tokens by using a cheap model for the scanning layer is exactly the wrong place to save money.
- **The work phase** (the agent's main loop, after a message has been quarantined or passed) can use cheaper models per the existing cost-routing logic.

So hybrid agents are not just *"local for cheap, frontier for hard"* — they're **"frontier for the door, local for the room."** The most expensive model in the system sits at the front gate, not the back office.

**Implication for [[task-master-ai]] / [[agent-zero]]-style cost routing**: any cost-routing layer for a personal AI agent should reserve a dedicated **scanner slot** that always points at a frontier reasoning model, separate from the main / research / fallback slots that can rotate to cheaper options. Cost savings come from the work phase, not the door phase.
