---
title: E2E Testing — Self-Healing AI Coding Workflow
summary: Cole Medin's /e2e test command runs 6-step validation with parallel sub-agents, browser automation through user journeys, DB validation, and a self-fix loop before returning control to the human.
tags: [person_cole_medin, tool_claude_code, topic_testing, topic_validation, source_cole_medin_e2e_testing]
---

# E2E Testing — Self-Healing AI Coding Workflow

## Context

From [[summary-cole-medin-e2e-testing|Cole Medin's E2E testing video]]. See also [[Claude Code]], [[Cole Medin]].

## Content

The `/e2e test` command runs a 6-step validation framework:

1. **Prereq check** — browser CLI, OS, frontend exists
2. **Research** — 3 parallel sub-agents: (a) app structure + user journeys, (b) database schema, (c) bug hunt/code review
3. **Start dev server** — spin up the full application
4. **Define task list** — identify every user journey
5. **For-loop through journeys** — for each: browser automation + DB queries + screenshots; self-fix blocking issues; move to next
6. **E2E report** — structured output with fixed issues, remaining issues, screenshots, optional markdown export

**Key design decisions:**
- Agent ONLY fixes blocking issues during testing — moderate/minor issues reported for human decision
- Screenshots serve dual purpose: agent self-review AND human verification
- Database branching (Neon) for test isolation — create branch, run tests, delete branch
- PIV loop: Plan → Implement → **Validate** (this is the V)

**Token note**: Heavy on tokens but token-efficient per Cole's testing — dozens of runs without hitting Claude Code Max rate limit. Takes time due to browser interaction waits, not model calls.
