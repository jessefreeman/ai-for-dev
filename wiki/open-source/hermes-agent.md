---
type: entity
sources: ["You NEED to try these open-source AI projects right now....md"]
created: 2026-04-06
updated: 2026-04-06
tags: [open-source, agent, self-improving, local-ai]
---

# Hermes Agent

An open-source AI agent framework by Nouse Research. Positioned as an alternative to OpenClaw with a distinctive feature: a built-in closed learning loop that enables the agent to self-improve over time.

## What It Is

Not just a coding agent or assistant. Hermes is described as an entire framework — closer to an operating system for a personal AI agent. Similar scope to OpenClaw (full agent framework, not just a chat interface).

## Self-Improving Loop

The core differentiator. Hermes describes itself as "the only agent with a built-in learning loop":

- **Closed learning loop**: Agent learns from past interactions
- **Agent-curated memory**: Periodic nudges to persist knowledge
- **Autonomous skill creation**: After completing complex tasks, creates reusable skills
- **Skills self-improve during use**: Existing skills get refined as the agent uses them
- **Searches its own past conversations**: Builds a deepening model of the user across sessions

This pattern was inspired by Andrej Karpathy's auto-research project, which demonstrated self-improving loops.

## Features

- **Terminal UI (TUI)**: Multi-line editing, command autocomplete, conversation history, interrupt and redirect, streaming tool output
- **Multi-chat gateway**: Single gateway for Telegram, Discord, Slack, WhatsApp, Signal, and CLI
- **Scheduler/cron**: Autonomous scheduled tasks
- **Sub-agent delegation**: Parallel sub-agent execution
- **Flexible deployment**: Local, cloud, or hybrid
- **OpenClaw migration path**: Import existing OpenClaw workflows and memories without starting from scratch

## Adoption

~12,000 GitHub stars within days of launch (as of March 2026).

## Comparison to OpenClaw

Similar scope and interface (both provide multi-chat gateway, sub-agent support, scheduler). Key difference: Hermes adds the self-improving loop. OpenClaw migration is supported.

## See Also

- [[Paperclip]] — higher-level multi-agent orchestration (company-level vs personal agent)
- [[GStack]] — another open-source Claude Code productivity tool
- [[Multi-Agent Orchestration]] — broader context on coordinating agents
- [[Matthew Berman]] — source
- [[summary-matthew-berman-open-source-projects|Source: Open-Source AI Projects]]
