---
title: Workflow State vs Conversation State
summary: A critical distinction most agent frameworks conflate — conversation state tracks what was said; workflow state tracks what step the agent is on and whether it's safe to retry.
tags: concept_agentic_harness, topic_agent_architecture, source_nate_jones_12_primitives
---

# Workflow State vs Conversation State

## Context

From [[summary-nate-jones-12-agent-primitives|12 Agent Primitives]] — [[Nate B Jones]]'s analysis of the Claude Code leak. Primitive #4 in [[Agentic Harness Primitives]].

## Content

These are two distinct things that almost every agentic framework conflates:

| | Conversation State | Workflow State |
|--|--|--|
| Answers | What have we said? | What step are we on? |
| Scope | Within the agent session | Persists beyond the agent |
| Handles | Chat history | Side effects, retry safety |

**Why it matters**: You can fully reconstruct an agent's conversation state and still not know where it was in a long-running workflow. Without explicit workflow state, a crash mid-execution may duplicate writes, double-send messages, or re-run expensive operations.

Model states explicitly: `planned`, `awaiting-approval`, `executing`, `waiting-on-external`. Persist checkpoints constantly.
