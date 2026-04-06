---
type: entity
sources: ["Claude Code + Paperclip Just Destroyed OpenClaw.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [tool, ai, agent, open-source, orchestration, claude-code]
---

# Paperclip

Open-source multi-agent orchestration platform for building persistent AI "companies" powered by [[Claude Code]] agents. MIT licensed. Launched early March 2026; reached 36,000 GitHub stars within weeks.

**GitHub**: github.com/paperclip (open source)

## What It Does

Paperclip solves the "20 terminals" problem: running many Claude Code sessions simultaneously with no central visibility. It provides a dashboard where each agent is a configured entity, work is tracked as issues, and the human operates as a board setting high-level goals rather than managing individual sessions.

## Core Structure

- **Companies** — top-level unit; multiple companies per instance
- **Agents** — configured with 4 files: Soul (persona), Heartbeat (wake checklist), Agents (collaboration), Tools (capabilities)
- **Issues** — ticketing system for all work; comments, status, project assignment
- **Projects** — optional GitHub repo sync; groups issues by goal/deadline
- **Routines** — recurring scheduled workflows (beta); trigger types: schedule, webhook, terminal run
- **Budgets** — per-agent spend limits with usage analytics

## Heartbeats

Agents wake on a schedule (every 4, 8, or 12 hours) with fresh context. On each wake they review instructions, check tasks, and continue working autonomously. The same heartbeat pattern that drove OpenClaw's popularity. Board approval for new agent hires is configurable (on or off).

## Skills

Install Claude Code skills per-agent or company-wide from a local path, GitHub URL, or [skills.sh](https://skills.sh) (a skill marketplace). Company-wide skills apply to all agents.

## Company Templates

Pre-built importable company configurations on GitHub. Examples: GStack (CEO, CTO, QA, release engineer, staff engineer), agency templates, research templates. Some have 48+ pre-configured agents with skills.

## Deployment

- **Local**: runs as localhost by default — only accessible on the host machine
- **VPS**: deployable for remote access from anywhere

## Integration with Claude Code

Agents run as Claude Code sessions internally. You can create a dedicated Claude Code project that knows the full Paperclip architecture to use as an orchestration assistant — for configuring, monitoring, and expanding your Paperclip setup.

## See Also
- [[Multi-Agent Orchestration]]
- [[Claude Code]]
- [[Agentic Harness Primitives]]
- [[Nate Herk]]
- [[summary-nate-herk-paperclip|Source: Claude Code + Paperclip]]
