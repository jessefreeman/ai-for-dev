---
title: Claude Squad — parallel agent sessions vs sub-agents
summary: Distinction between Claude Code's in-session sub-agents (10-concurrent limit) and Claude Squad's parallel independent terminal sessions.
tags: [tool_claude_squad, tool_claude_code, concept_multi_agent_orchestration, source_dubibubii_claude_skills_2026]
---

# Claude Squad vs Claude Code sub-agents

## Context

From [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08). See [[claude-squad]], [[claude-code-subagents]], [[multi-agent-orchestration]].

## Content

The wiki tracks two distinct primitives for "running multiple coding agents at once":

| Primitive | Where it runs | Concurrency model | Limit |
|---|---|---|---|
| **[[claude-code-subagents|Claude Code sub-agents]]** | Inside one Claude Code session, spawned by a parent | Shared parent context; isolated sub-context per child; tool whitelists | **10 concurrent** (hard limit) |
| **[[claude-squad]]** | Multiple terminal sessions, each independent | No shared parent; closer to "parallel humans at parallel keyboards" | No documented limit; multi-host (Claude Code, Codex, Aider) |

**When to use which:**
- Sub-agents are for when one task naturally decomposes into specialized sub-tasks under a coordinating parent (builder + validator, or planner + executor)
- Claude Squad is for when you want to make progress on multiple **unrelated** tasks at once without one blocking the others — closer to parallel branches than to multi-agent orchestration

Both connect to [[multi-agent-orchestration]] but at different levels.
