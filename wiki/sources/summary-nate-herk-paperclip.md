---
type: source-summary
sources: ["Claude Code + Paperclip Just Destroyed OpenClaw.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [ai, llm, claude-code, multi-agent, orchestration, video, transcript]
---

# Summary: Nate Herk — Claude Code + Paperclip

[[Nate Herk]] demonstrates [[Paperclip]], an open-source multi-agent orchestration tool that turns Claude Code agents into a persistent, managed "company" — solving the problem of running many Claude Code sessions simultaneously with no visibility into what each is doing.

## The Problem Paperclip Solves

Running 20+ Claude Code terminals simultaneously becomes unmanageable: you lose track of which session is doing what, what you asked each one, and where each workflow stands. Paperclip centralizes orchestration into a dashboard with a ticketing system, inbox, and per-agent activity logs.

## What Paperclip Is

- **Open source, MIT license** — free to use and self-host
- **36,000 GitHub stars** within weeks of launch (early March 2026)
- **Local by default** (localhost dashboard), deployable to a VPS for remote access
- Works with Claude Code, OpenClaw, Codex, Cursor — not Claude-Code-exclusive
- Compatible with any Claude Code subscription (no extra API cost if using your existing plan)

## Core Concepts

### Companies
The top-level organizational unit. You can run multiple companies in one Paperclip instance (e.g., different business units or side projects). Each company has agents, projects, issues, and routines.

### Agents
Each agent has four configuration files:
- **Soul** — who the agent is and how it behaves (persona, voice, values)
- **Heartbeat** — execution checklist that runs on every wake cycle
- **Agents** — references to other agents and how to collaborate
- **Tools** — what the agent has access to

Agents wake up on a schedule (every 4, 8, or 12 hours) with fresh context. On wake, they check their tasks, review their instructions, and continue working autonomously. This is the same "heartbeat" concept that made OpenClaw popular.

### Issues & Ticketing
All work is structured as issues with comments, status, and project assignments. The human acts as "the board" — setting high-level goals and approving new hires. The CEO agent creates sub-issues, delegates to other agents, and requests approvals via inbox.

### Projects
Optional GitHub repo sync. Projects group related issues and have goals, status, and deadlines.

### Skills
Skills (Claude Code `.md` skill files) can be installed per-agent or company-wide from:
- A local path
- A GitHub URL
- [skills.sh](https://skills.sh) — a marketplace of Claude Code skills

### Routines (beta)
Recurring scheduled workflows. Define a trigger (schedule, webhook, terminal run), assign to an agent. Example: a nightly security audit routine assigned to a QA agent.

### Budgets
Per-agent spend limits configurable in the dashboard. Tracks token spend per agent.

## Demo: Building a Company from Scratch

Nate demos building "Proof Shot" (AI-powered testimonial recording app):
1. Name company, set mission
2. Create CEO agent (Sonnet 4.6), run a test
3. First task: "Hire your first engineer and create a hiring plan"
4. CEO creates approval request → human approves → Engineer agent is created
5. CEO assigns 5 tasks to engineer
6. Human creates new issue: "Hire QA agent, migrate tasks" → CEO handles autonomously
7. Board approval for new agent hires can be toggled off to let CEO hire freely

## Company Templates

Paperclip's GitHub includes importable pre-built company templates (GStack, Superpowers, Agency Agents, etc.). GStack comes pre-loaded with CEO, CTO, QA engineer, release engineer, staff engineer, and all skills. One template has 48 agents. Useful starting point instead of building from zero.

## Claude Code as Orchestration Assistant

Nate configured a dedicated Claude Code project that knows the full Paperclip architecture (GitHub repo, API, heartbeat protocol, agent configs, VPS migration plan). This project acts as a partner for configuring, monitoring, and expanding Paperclip — since agents can't always answer questions about their own orchestration layer.

## See Also
- [[Paperclip]]
- [[Multi-Agent Orchestration]]
- [[Nate Herk]]
- [[Claude Code]]
- [[Agentic Harness Primitives]]
