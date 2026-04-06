---
title: Claude Code's 12 Agent Primitives in 3 Tiers
summary: The framework Nate B Jones extracted from the leaked Claude Code architecture — 12 production agent primitives organized into three implementation tiers.
tags: [person_nate_b_jones, tool_claude_code, concept_agentic_harness, topic_agent_architecture, source_nate_jones_12_primitives]
---

# Claude Code's 12 Agent Primitives in 3 Tiers

## Context

From [[summary-nate-jones-12-agent-primitives|12 Agent Primitives]] — [[Nate B Jones]]'s analysis of the leaked Claude Code source map. Full details in [[Agentic Harness Primitives]].

## Content

**Tier 1 — Day One Non-Negotiables:**
1. Tool registry with metadata-first design
2. Permission system and trust tiers
3. Session persistence that survives crashes
4. Workflow state vs conversation state
5. Token budget tracking with pre-turn checks

**Tier 2 — Operational Foundation:**
6. Structured streaming events
7. System event logging
8. Verification at two levels (completed work + harness changes)

**Tier 3 — Operational Maturity:**
9. Tool pool assembly (session-specific, not all tools always)
10. Transcript compaction
11. Permission audit trail (first-class objects, not boolean gates)
12. Agent type system (6 built-in types with constraints)

The thesis: **"Building agents is 80% plumbing, 20% AI."** The most common failure mode is premature complexity — building multi-agent coordination before sessions survive crashes.
