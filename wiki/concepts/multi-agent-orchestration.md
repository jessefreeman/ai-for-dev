---
type: concept
sources: ["Claude Code + Paperclip Just Destroyed OpenClaw.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [ai, llm, agent, orchestration, multi-agent]
---

# Multi-Agent Orchestration

The practice of coordinating multiple AI agents working in parallel, each with distinct roles and tools, toward shared organizational goals. A step beyond single-agent use toward persistent, autonomous AI "companies."

## The Core Problem

A single Claude Code session handles one thread of work. As usage scales — multiple projects, multiple workflows, background tasks — you end up with many parallel sessions that each require attention, lack shared context, and have no unified visibility. The "20 terminals" problem: which session is doing what? What did you ask each? What needs approval?

Multi-agent orchestration solves this with centralized dashboards, ticketing systems, and role-based agents that operate autonomously and surface work to the human only when needed.

## Key Concepts

### Agent Roles
Agents are not generic — they are configured with specific personas, tools, and behavioral constraints. Common org-chart structure: CEO (strategic, sets goals, makes hires), Engineers (implement), QA (review and test). Each role has different permissions, tools, and reporting relationships.

### Heartbeats
Agents wake on a schedule with fresh context, review their task queue, and continue work. They don't need a human to activate them — they operate around the clock. On wake, agents must re-orient (check instructions, review open tasks) before acting, since they have no persistent memory between sessions.

### Human-as-Board Pattern
The human's role shifts from operator to board member. You set high-level goals and metrics, approve major decisions (new hires, large scope changes), and review results — but you don't manage individual tasks or sessions. Nate Herk's framing: "30 minutes as the board" rather than hours in the terminals.

### Inbox and Approvals
Requests that require human judgment surface as inbox items (approvals, questions, blockers). Everything else runs autonomously. Board approval can be toggled off per-category as trust in the system grows.

### Agent Memory via Files
Agents have no cross-session memory by default. Their "memory" is maintained through:
- Task history in the ticketing system
- Soul/heartbeat/agents files that persist between wakes
- Project documentation and CLAUDE.md files

## Relation to Agentic Harness Primitives

[[Agentic Harness Primitives]] defined three permission handler tiers: interactive (human in loop), coordinator (orchestrator handing out permissions), and swarm worker (autonomous under orchestrator). Multi-agent orchestration tools like [[Paperclip]] implement all three layers.

The 12 primitives become more critical at multi-agent scale: workflow state prevents duplicate work across agents; permission audit trails become essential when many agents can take real-world actions; agent type systems (Explore, Plan, Verify) prevent agents from overstepping their roles.

## Tools

- [[Paperclip]] — open-source, MIT, dashboard-based; agents run as Claude Code sessions; 36k stars
- OpenClaw — the earlier tool this pattern popularized (native heartbeats)

## See Also
- [[Paperclip]]
- [[Agentic Harness Primitives]]
- [[Claude Code]]
- [[Nate Herk]]
- [[summary-nate-herk-paperclip|Source: Claude Code + Paperclip]]
