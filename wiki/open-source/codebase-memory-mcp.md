---
type: entity
sources: ["The Only Claude Skills You Need in 2026.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, mcp, memory, plugin]
---

# Codebase Memory MCP

An MCP server that turns a codebase into a **persistent knowledge graph** the agent can read across sessions. The source's framing: Claude normally wakes up tomorrow with amnesia about your project; this fixes that.

## What it does

- Indexes the structure of the code, the relationships between files, and the history of what changed and why.
- Persists across terminal sessions, so a fresh agent doesn't have to rediscover the codebase from scratch.
- Symptom it solves: *"if you've ever had Claude ask you 'how do I do this?' for the fifth time about code that it wrote itself."*

## Type and platform

- **Type:** MCP
- **Platforms:** any MCP host
- **Status:** tracked

## Position in the wiki's memory thread

Sits in the **persistent agent memory** category alongside [[zep]], the Anthropic Managed Agents persistent-memory roadmap item, and [[open-brain]]. The wiki's broader thread on memory primitives is at [[behavioral-lock-in]] — the more agents accumulate session-spanning memory, the higher the switching cost.

## Hands-on notes

*(empty)*

## Sources

- [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08)

## See Also

- [[mcp]]
- [[zep]]
- [[behavioral-lock-in]]
- [[agent-plugins]]
