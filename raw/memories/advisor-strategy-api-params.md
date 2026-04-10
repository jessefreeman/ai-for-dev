---
title: Advisor Strategy API Parameters
summary: How to configure the Advisor Strategy in the Claude Messages API (beta).
tags: [tool_claude, concept_advisor_strategy, topic_cost_reduction, source_nate_herk_advisor_strategy]
---

# Advisor Strategy API Parameters

## Context

From [[summary-nate-herk-advisor-strategy|Claude Just Told Us to Stop Using Their Best Model]]. See also [[claude]], [[llm-design-patterns#pattern-6-advisor-strategy]].

## Content

To enable the Advisor Strategy in the Claude Messages API, add these fields to the request:

- `type`: `"advisor_2026_03_01"` — the advisor strategy version identifier
- `name`: `"advisor"` — names the advisor role
- `max_uses`: integer — caps how many times the executor can call the advisor per request (budget control)

The executor model (Haiku or Sonnet) handles the request and only escalates to the advisor (Opus) when it self-assesses the task as difficult. The escalation is non-deterministic — the same query may trigger escalation with Sonnet but not with Haiku.

Feature is in beta as of April 2026.
