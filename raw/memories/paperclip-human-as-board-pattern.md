---
title: Paperclip Human-as-Board Pattern
summary: In Paperclip, the human operates as a board of directors — setting high-level goals and approving major decisions — rather than managing individual agent sessions.
tags: person_nate_herk, tool_paperclip, concept_multi_agent, topic_agent_orchestration, source_nate_herk_paperclip
---

# Paperclip Human-as-Board Pattern

## Context

From [[summary-nate-herk-paperclip|Claude Code + Paperclip]] by [[Nate Herk]]. See [[Paperclip]] and [[Multi-Agent Orchestration]].

## Content

The shift Paperclip enables: from **operator** (managing individual sessions) to **board member** (setting strategic direction).

How it works in practice:
- You create issues with high-level goals: *"Hire a QA agent, migrate the tasks, keep building until you're done"*
- The CEO agent creates sub-issues, delegates to other agents, requests approvals
- You review the inbox periodically and approve or reject requests
- Nate Herk's framing: **"30 minutes as the board"** rather than hours managing terminals

Board approval for new agent hires is configurable — you can turn it off and let the CEO hire freely as your trust in the system grows.

The result: agents operate around the clock on defined goals; the human only touches it when judgment is needed.
