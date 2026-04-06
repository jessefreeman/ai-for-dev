---
title: ThePepeBot — GitHub Actions as Agent Orchestration
summary: ThePepeBot uses GitHub Actions workflows for scalable agent job execution with git-based change approval, Docker isolation, and free local LLMs via Ollama.
tags: [person_stephen_g_pope, tool_thepopebot, tool_github, concept_agents, source_stephen_g_pope_thepopebot]
---

# ThePepeBot — GitHub Actions as Agent Orchestration

## Context

From [[summary-stephen-g-pope-thepopebot|Stephen G. Pope's ThePepeBot video]]. See also [[ThePepeBot]], [[OpenClaw]].

## Content

ThePepeBot's key architectural insight: use GitHub Actions as the orchestration layer for autonomous agents.

**Why GitHub works for agents:**
- Jobs are GitHub Actions workflows — free (2,000 hours), scalable (local or cloud runners), transparent
- Every agent modification creates a PR — human approves or auto-merges based on configurable scope rules
- Full history of every action, thought process, and code change in git
- Agent configurations shareable as repos

**Three Docker containers:**
1. Event handler — core bot, starts jobs, receives notifications
2. Reverse proxy — SSL for remote deployment
3. Runner — executes jobs (can run locally or distributed)

**Scalability**: Containers can run together (simple) or on separate servers. Multiple runners enable hundreds of parallel agents. Config controls auto-merge scope (e.g., auto-merge log-only changes, require review for code changes).

**Free stack**: Ollama for LLMs + GitHub free tier + Ngrok for local tunneling + Brave Search free tier.

**Self-improvement pattern**: Agent reviews its own execution logs via heartbeat on schedule, suggests improvements.
