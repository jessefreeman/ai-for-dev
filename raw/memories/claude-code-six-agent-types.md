---
title: Claude Code's Six Built-In Agent Types
summary: The six constrained agent types found in the leaked Claude Code architecture, each with distinct tools and behavioral limits.
tags: tool_claude_code, concept_agentic_harness, topic_agent_architecture, source_nate_jones_12_primitives
---

# Claude Code's Six Built-In Agent Types

## Context

From [[summary-nate-jones-12-agent-primitives|12 Agent Primitives]] via [[Nate B Jones]]'s analysis of the Claude Code leak. See [[Agentic Harness Primitives]] and [[Claude Code]].

## Content

Claude Code defines six built-in agent types, each with its own system prompt, allowed tools, and behavioral constraints:

1. **Explore** — cannot edit files; read/search only
2. **Plan** — does not execute code; planning only
3. **Verify** — checks work against guardrails
4. **Guide** — instructional/explanatory mode
5. **General-purpose** — full capabilities
6. **Status-line-setup** — configures the status line display

The lesson: don't spawn agents randomly. Constrain roles sharply — each type's constraints are what make multi-agent systems manageable and safe at scale.
