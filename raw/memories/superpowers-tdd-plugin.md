---
title: Superpowers — TDD-Enforcing Claude Code Plugin
summary: Superpowers is a 115k-star Claude Code plugin that enforces TDD, YAGNI, and DRY through a structured brainstorm→plan→execute→review workflow with worktree parallelism.
tags: [tool_superpowers, tool_claude_code, topic_tdd, topic_workflow, source_matthew_berman_open_source_projects]
---

# Superpowers — TDD-Enforcing Claude Code Plugin

## Context

From [[summary-matthew-berman-open-source-projects|Matthew Berman's open-source AI projects video]]. See also [[Superpowers]], [[GStack]].

## Content

Superpowers is the most-starred Claude Code enhancement project with 115,000+ GitHub stars. Created by "Ora." It gives Claude Code a structured, TDD-first development workflow.

**The workflow:**
1. **Brainstorm** — activates before any code; refines rough ideas, explores alternatives, presents design in sections for validation, saves a design document
2. **Plan** — writes implementation plans
3. **Execute** — implements with TDD enforced (write test → write code → pass test → repeat)
4. **Review** — code review pass
5. **Finish** — merges the branch

**Engineering principles enforced:** TDD (Test-Driven Development), YAGNI (You Aren't Gonna Need It), DRY (Don't Repeat Yourself).

**Technical note**: Uses worktrees by default, which enables parallel agent work across branches.

**Installation**: Single command: `claude plugin install superpowers@claude-plugins-official`
**Usage**: `/superpowers brainstorm` to start

**Self-description** (from its own docs): Creates "an implementation plan that's clear enough for an enthusiastic junior engineer with poor taste, no judgment, no project context, and an aversion to testing to follow."

**vs GStack**: GStack = startup methodology, product thinking. Superpowers = engineering methodology, TDD discipline. Both are Claude Code skill sets; different layers of the stack.
