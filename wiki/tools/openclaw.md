---
type: entity
sources: ["Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md", "You NEED to try these open-source AI projects right now....md", "I Tested Claude's New Managed Agents... What You Need To Know.md", "I Analyzed 512,000 Lines of Leaked Code. It Shows What's Coming for Your AI Tools..md"]
created: 2026-04-06
updated: 2026-04-09
tags: [tool, agent, framework, open-source]
---

# OpenClaw

The fastest-growing open-source software project in history (~200,000+ GitHub stars). A personal AI agent framework created by Peter Steinberger that combines memory, tools, scheduling, and multi-platform messaging into a single system. Jensen Huang (NVIDIA CEO) called it "the most consequential software launch in history."

## What It Is

At its core, OpenClaw is an LLM with:
- **Memory**: Persistent knowledge across sessions
- **Tools**: Ability to interact with external systems (APIs, databases, services)
- **Scheduling**: Proactive actions on a cadence
- **Multi-platform messaging**: Telegram, Discord, Slack, WhatsApp, Signal, CLI

As Nate B Jones simplified it: "Peter Steinberger put together an LLM with memory plus tools and made sure you could message it from a messaging platform. It's actually not that complicated."

## Security Concerns

Security researchers have called OpenClaw a "nightmare":
- Users opening their networks to the wider internet
- Giving OpenClaw instances access to data they shouldn't have
- Downloading extensions with severe security vulnerabilities
- Prompt injection risks through the orchestration layer

Peter Steinberger himself has been clear that OpenClaw is not recommended for non-technical users because of these risks. He joined OpenAI to eventually build something like OpenClaw but more secure and less technically challenging.

## The /loop + OpenBrain Alternative

[[Nate B Jones]] argues you can replicate most OpenClaw capabilities without downloading the framework by combining three native/simple primitives:
- **[[/loop]]** (Anthropic) → proactivity
- **[[OpenBrain]]** (SQL + MCP) → memory
- **MCP tools** → tool access

The key advantage: scheduling belongs to Anthropic (native), memory is in a database you control, and there's no orchestration layer with prompt injection vulnerabilities.

## The Steinberger → OpenAI → Anthropic ban timeline

[[nate-b-jones|Nate B Jones]] reads the recent OpenClaw events as a coordinated playbook by Anthropic, exposed by the [[claude-code|Claude Code]] leak that also surfaced [[conway|Conway]]:

1. **Feb 14, 2026** — Peter Steinberger (OpenClaw creator) joins OpenAI; Sam Altman publicly tags him to *"drive the next generation of personal agents"*
2. **Within weeks** — OpenClaw moves to a foundation with OpenAI backing
3. **January 2026 (retroactively visible)** — Anthropic quietly blocks third-party tools from using subscription login credentials, framed as tightening safeguards
4. **February 2026** — Anthropic ToS revision explicitly prohibits the practice
5. **April 2026** — enforcement against OpenClaw first; pay-per-use rates 10–50× subscription cover; rolling out to "everything else in coming weeks"

The pattern (Nate's framing): **Copy → Subsidize → Block → Lock the format.** Anthropic builds the first-party version (Claude Code channels → [[managed-agents|Managed Agents]] → [[conway|Conway]]), makes it subsidized inside the subscription, blocks third-party access, then ships the proprietary extension format (`.cnw.zip`) that ensures the ecosystem builds for Anthropic's surface, not the open one. OpenClaw is the **canonical playbook target** — see [[behavioral-lock-in]] for the structural framing.

## Still wins vs Managed Agents (April 2026)

When Anthropic launched [[managed-agents|Managed Agents]], [[nate-herk|Nate Herk]] noted OpenClaw still wins on the two features that make it feel like an always-on assistant: **heartbeats** (cron-style "wake up every N minutes and do something") and **Telegram messaging** (chat with your agent from anywhere). Managed Agents has neither at launch — agents only run when their API is called. *"That's what Anthropic really needs to be doing with Claude Code that would just make it an absolute powerhouse."*

## Related Projects

- **[[Hermes Agent]]** — OpenClaw alternative with self-improving loop; includes OpenClaw migration path
- **[[Paperclip]]** — if OpenClaw is "an employee," Paperclip is "the company" — multi-agent orchestration at organization level

## See Also

- [[/loop]] — Anthropic's native proactivity primitive
- [[OpenBrain]] — the memory primitive that replaces OpenClaw's built-in memory
- [[Hermes Agent]] — alternative with migration path from OpenClaw
- [[Paperclip]] — higher-level multi-agent orchestration
- [[Nate B Jones]] — primary source analysis
- [[summary-nate-b-jones-loop-openbrain|Source: /loop + OpenBrain]]
