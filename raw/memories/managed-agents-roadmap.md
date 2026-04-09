---
title: Managed Agents roadmap — Outcomes, Multi-Agent Orchestration, Persistent Memory
summary: Three private-preview features that define whether Managed Agents becomes a real Claude Code competitor or stays as the easy-mode onramp.
tags: [tool_managed_agents, topic_anthropic, topic_roadmap, source_nate_herk_managed_agents]
---

# Managed Agents roadmap — three private-preview features

## Context

From [[summary-nate-herk-managed-agents|I Tested Claude's New Managed Agents]]. See also [[managed-agents]], [[autoresearch-evals]], [[claude-code-subagents]], [[open-brain]].

## Content

Three features were teased at launch but require applying for early access. Each addresses a specific gap in the launch state.

1. **Outcomes** — Define success criteria for a task; the agent self-evaluates its work and iterates until it meets them. Karpathy's [[autoresearch-evals|auto-research]] pattern built into the build phase. Would be the first hosted self-eval primitive from a frontier lab if it ships.

2. **Multi-Agent Orchestration** — A `callable agents` tool lets a coordinator agent delegate to specialized sub-agents. Anthropic-managed swarm pattern; a hosted alternative to [[claude-code-subagents]] and [[paperclip|Paperclip]].

3. **Persistent Memory** — Memory that survives across sessions, scoped per agent. Today every session is stateless (system prompt only). Replicates what [[open-brain|OpenBrain]] solves locally with SQL + MCP.

If all three ship, Managed Agents becomes a credible hosted alternative to the [[slash-loop|/loop]] + OpenBrain + MCP three-primitive stack — *minus* the still-missing trigger primitive.
