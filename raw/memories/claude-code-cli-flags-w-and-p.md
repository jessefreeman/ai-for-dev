---
title: Claude Code CLI flags — `claude -w` (work-trees) and `claude -p` (headless)
summary: Two first-class Claude Code CLI flags the wiki documented for the first time — `-w` for git work-tree parallel sessions and `-p` for non-interactive headless execution.
tags: [tool_claude_code, concept_cli, concept_workflow, source_simon_scrapes_claude_code_workflows]
---

# Claude Code CLI flags — `claude -w` and `claude -p`

## Context

From [[summary-simon-scrapes-claude-code-workflows|Simon Scrapes — Every Claude Code Workflow Explained]]. See also [[claude-code]], [[llm-design-patterns]].

## Content

### `claude -w <task-name>` — git work-trees flag

Creates a **git work-tree** — a separate copy of the project on its own branch — and drops Claude straight into it. Each invocation is an isolated workspace with its own context window. Implements [[llm-design-patterns#pattern-2-the-operator]].

**Auto-cleanup on close**: if no changes were made in the work-tree, it's removed automatically when you close the session. If there's work to keep, Claude prompts before discarding.

**Use case**: parallel independent tasks (e.g., new feature + bug fix + redesign — none depend on each other). Each runs in its own terminal with `claude -w <name>`. Practical limit ~4–5 simultaneous terminals before tracking them becomes unworkable.

### `claude -p <prompt>` — headless flag

Runs Claude in **non-interactive mode**: no conversation, no approvals, full permissions, return result when done. Implements [[llm-design-patterns#pattern-5-headless]].

**The unlock is scheduling.** Combine with cron (Mac/Linux) or Task Scheduler (Windows) and Claude runs autonomously on any cadence. *"At 7am every day, fire this command, generate the morning report."*

**Guardrails**: `--allowed-tools <list>` restricts the tools the headless Claude can call (e.g., read-only).

**Best for**: tasks where output is **easy to verify** after the fact. Avoid for anything hard to undo. Start with reversible tasks; expand the scope as trust grows.

**Connection to defensive security**: `claude -p` is the structural opposite of [[ai-personal-agent-hardening#rule-1-human-in-the-loop-is-mandatory]]. The hardening rule applies to *inbound message processing* (where attackers can inject); headless works for *outbound batch tasks* you initiate yourself with verifiable output. Different sides of the input surface.
