---
title: Claude Code sub-agents architecture
summary: Sub-agents in Claude Code are project- or user-scoped specialists with isolated context windows, tool whitelists, and custom system prompts; managed via /agents.
tags: [tool_claude_code, concept_multi_agent, source_worldofai_claude_subagents]
---

# Claude Code sub-agents architecture

## Context

From [[summary-worldofai-claude-code-subagents|WorldofAI Sub-Agents walkthrough]]. See [[claude-code]] entity.

## Content

Anthropic shipped first-class sub-agents in Claude Code (July 2025). Each sub-agent has:

- **A specific expertise area / purpose**
- **Its own isolated context window** — preserves the main thread's context from off-task pollution
- **An explicit tool/MCP whitelist** — locked down per-agent
- **A custom system prompt** — guides its behavior

Configurable at **project level** (committed to `.claude/agents/`) or **user level** (global across all projects). Multiple sub-agents can run in parallel on the same project (demo: UX-optimizer + UI-designer running concurrently on a signup page).

**Setup flow**: `/agents` → New → choose level → describe (recommended: let Claude generate, then customize) → tool whitelist → color tag.

**Why it matters**: solves three Claude Code pain points at once — context-window pollution from off-task work, tool-call hallucination from too-broad tool exposure, and the lack of a clean delegation primitive. This is Anthropic's first-party answer to [[multi-agent-orchestration]] patterns previously documented via [[paperclip]] and [[hermes-agent]].

**Marketplace**: claudecodeagents.com hosts community sub-agents (UX-optimizer, Delegator, etc.). Adjacent ecosystem: [[skills-sh|skills.sh]] (skills are reusable behaviors; sub-agents are isolated agent identities — different primitives).
