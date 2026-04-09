---
type: entity
sources: ["The Only Claude Skills You Need in 2026.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, claude-code, multi-agent, parallel, plugin]
---

# Claude Squad

CLI tool that runs **multiple coding-agent sessions in parallel terminal windows**. **65,000 GitHub stars** at time of source. Spin up five agents on five different tasks instead of waiting on one. Multi-host: works with Claude Code, [[codex|Codex]], Aider, and other coding agents.

## What it does

- Launches parallel terminal sessions, each running an independent agent
- Manages task assignment and session lifecycle
- Lets a single user supervise multiple in-flight agents

## Position in the multi-agent thread

Sibling to the [[claude-code-subagents|Claude Code sub-agents]] system but at a different level: sub-agents are spawned **inside** a single Claude Code session under a 10-concurrent hard limit. Claude Squad runs **independent sessions** with no shared parent — closer to "parallel humans at parallel keyboards" than to "one orchestrator with workers."

Connects to [[multi-agent-orchestration]] as the user-facing parallelism primitive, and to the [[ai-coding-workflow|builder-validator chain pattern]] when each session takes on a different role.

## Type and platform

- **Type:** CLI
- **Platforms:** [[claude-code|Claude Code]], [[codex|Codex]], Aider, other coding agents
- **Status:** tracked

## Hands-on notes

*(empty)*

## Sources

- [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08)

## See Also

- [[agent-plugins]]
- [[multi-agent-orchestration]]
- [[claude-code-subagents]]
