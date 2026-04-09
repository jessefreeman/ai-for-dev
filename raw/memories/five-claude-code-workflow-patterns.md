---
title: The 5 Claude Code workflow patterns
summary: Sequential / Operator / Split & Merge / Agent Teams / Headless — the canonical Claude Code workflow taxonomy from Simon Scrapes, anchoring the wiki's LLM Design Patterns library.
tags: [tool_claude_code, concept_design_patterns, concept_workflow, person_simon_scrapes, source_simon_scrapes_claude_code_workflows]
---

# The 5 Claude Code workflow patterns

## Context

From [[summary-simon-scrapes-claude-code-workflows|Simon Scrapes — Every Claude Code Workflow Explained]]. See also [[llm-design-patterns]], [[claude-code]], [[claude-code-subagents]].

## Content

Five named patterns, forming a progression — climb only as high as the task requires:

1. **Sequential Flow** — single conversation, every task builds on prior context. Ceiling: the context window + context rot. Mitigations: well-structured CLAUDE.md, skills, `/clear`, `/compact`.
2. **The Operator** — multiple parallel terminals via the **`claude -w <task-name>`** flag (creates a git work-tree, separate branch, isolated copy of project, auto-cleanup on close). You orchestrate. Practical limit: 4–5 terminals.
3. **Split & Merge** — single Claude session fans out work to sub-agents in parallel. **Hard limit: 10 concurrent** (additional queue). Hub-and-spoke topology — sub-agents can only report back to main, NOT talk to each other. Builder-validator chain is the canonical pattern.
4. **Agent Teams** — peer-to-peer agent collaboration via **shared task list**. Agents can message each other directly, bypassing the main-agent funnel. **4–7× more tokens** than a single session. **Research preview** in Opus 4.6: opt-in via `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1` env var in `settings.json`. Specify *"use an agent team"* explicitly in your prompt — Claude doesn't auto-route. Navigate teammates with shift+up / shift+down.
5. **Headless** — **`claude -p <prompt>`** non-interactive mode. No conversation, no approvals, full permissions, return result when done. The bridge from "tool you sit with" to "team member that works independently." Powerful when scheduled (cron / Mac Task Scheduler / Windows Task Scheduler). **Guardrails**: `--allowed-tools` to restrict capabilities. **Best for**: tasks where output is easy to verify; batch processing; chains connected by file artifacts.

**The selection rule**: default to Sequential, climb to higher patterns only when the task genuinely requires it. Most users default too low (sequential only) and never explore the higher rungs. Agent Teams especially: don't reach for it unless sub-agents or a single session genuinely couldn't do the job — the 4–7× token cost is real.
