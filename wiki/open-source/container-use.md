---
type: entity
sources: ["The Only Claude Skills You Need in 2026.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, sandboxing, dagger, hardening, plugin, defensive]
---

# Container-Use

Agent sandboxing primitive by [Dagger](https://dagger.io). Each agent gets a containerized environment that physically cannot reach the host system. Founded by Solomon Hykes — the creator of Docker — which is the source's "pay attention" framing for the project.

## What it does

- Each agent runs in its own isolated container
- Filesystem, network, and process scope are scoped to the container
- An agent that goes rogue and starts deleting files can only delete files inside its own sandbox

## Why it matters in the wiki (load-bearing for hardening)

This is the wiki's first concrete tooling answer to **rule 1 of [[ai-personal-agent-hardening]]: human-in-loop quarantine is mandatory**. Container-Use turns "the agent must run in a quarantine" from a principle into an installable primitive. Combined with [[promptfoo]] (prompt-level red-teaming), the wiki now has both ends of the defensive stack from a single source:

- **Promptfoo** = test the prompts before the agent ships
- **Container-Use** = contain the agent after it ships

Sits adjacent to the [[openclaw]] / [[managed-agents]] / [[conway]] thread on what "always-on autonomous agent" infrastructure actually requires: a sandbox the agent cannot escape is one of the load-bearing primitives.

## Type and platform

- **Type:** CLI / runtime
- **Platforms:** model-agnostic; runs as host-side infrastructure under any agent
- **Status:** tracked

## Hands-on notes

*(empty)*

## Sources

- [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08)

## See Also

- [[agent-plugins]]
- [[ai-personal-agent-hardening]]
- [[promptfoo]]
- [[openclaw]]
