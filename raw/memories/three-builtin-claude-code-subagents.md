---
title: The 3 always-on Claude Code built-in sub-agents
summary: Explore (Haiku, read-only) / Plan (read-only research) / General-purpose (Sonnet, full tools) — the always-on trio Claude routes to automatically without user configuration.
tags: [tool_claude_code, concept_subagents, concept_workflow, source_simon_scrapes_claude_code_workflows]
---

# The 3 always-on Claude Code built-in sub-agents

## Context

From [[summary-simon-scrapes-claude-code-workflows|Simon Scrapes — Every Claude Code Workflow Explained]]. See also [[claude-code]], [[claude-code-subagents]], [[agentic-harness-primitives]].

## Content

Separately from user-defined sub-agents in `.claude/agents/`, **every Claude Code session uses three always-on built-in sub-agents** that Claude routes to automatically without you having to invoke them. They show up in the terminal when triggered and run with their own isolated context windows so the main conversation stays clean.

| Sub-agent | Model | Capability | Auto-invoked when |
|---|---|---|---|
| **Explore** | Haiku (cheapest, fastest) | Read-only file/folder search | Questions like *"how does X work in this project?"* |
| **Plan** | (per-session) | Read-only research before strategy | You enter plan mode (`/plan` or shift+tab twice) |
| **General-purpose** | Sonnet | Full read/write tool access | Complex multi-step tasks needing both exploration and changes |

**Critical detail**: each runs in its **own isolated context window**. This is why even a basic Claude Code conversation doesn't bloat the main context with file searches and plan exploration — the work happens in a sub-agent and only the result returns to the main conversation.

**Connection to the leaked Claude Code architecture**: per [[agentic-harness-primitives]], the leaked source revealed Claude Code has 6 built-in agent types internally — **Explore, Plan, Verify, Guide, General-purpose, Status-line-setup**. The 3 documented above are the user-facing always-on trio; the other 3 (Verify, Guide, Status-line-setup) operate internally without surfacing to the user.

**Hard concurrent limit (across both built-in and user-defined sub-agents)**: **10 concurrent**. Additional sub-agents queue. This is the architectural constraint behind the [[llm-design-patterns#pattern-3-split-and-merge]] cost profile.
