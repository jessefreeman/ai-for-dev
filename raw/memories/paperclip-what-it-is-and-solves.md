---
title: What Paperclip Is and the Problem It Solves
summary: Paperclip is an open-source multi-agent orchestration dashboard that solves the "20 terminals" problem of managing many parallel Claude Code sessions.
tags: [person_nate_herk, tool_paperclip, tool_claude_code, concept_multi_agent, topic_agent_orchestration, source_nate_herk_paperclip]
---

# What Paperclip Is and the Problem It Solves

## Context

From [[summary-nate-herk-paperclip|Claude Code + Paperclip]] by [[Nate Herk]]. See [[Paperclip]] and [[Multi-Agent Orchestration]].

## Content

**The problem**: When running many Claude Code sessions simultaneously, you lose track of which session is doing what, what you asked each, and where each workflow stands. Nate Herk described running 20+ terminals with no central visibility.

**What Paperclip is**: An open-source (MIT license), locally-hosted dashboard that turns Claude Code agents into a structured "company" with:
- A dashboard showing all agents, their current tasks, and recent activity
- A ticketing system (issues, comments, projects, status)
- Per-agent configuration (persona, tools, budget)
- Inbox for approvals and blockers

Reached 36,000 GitHub stars within weeks of its March 2026 launch. Works with Claude Code, OpenClaw, Codex, Cursor. Runs on localhost by default; deployable to a VPS for remote access.
