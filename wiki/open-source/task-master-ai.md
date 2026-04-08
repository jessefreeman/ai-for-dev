---
type: entity
sources: ["100x Cursor + Cline's Code Quality, Cost, & Speed With Task Master AI! (Opensource).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [open-source, ai-coding, task-management, mcp, multi-model, planning]
---

# Task Master AI

Open-source task-management layer for AI coding agents. Takes a PRD (or natural-language project description), decomposes it into a structured task list, and dispatches each task to the cheapest model that can handle it via a three-model split (main / research / fallback). Works as a CLI or as an MCP server, so it plugs into [[cursor|Cursor]], [[cline|Cline]], Windsurf, VS Code, Roo Code, or [[claude-code|Claude Code]] without changing the host harness.

- **Authors**: @eyaltoledano, @RalphEcom
- **License**: MIT + Commons Clause
- **Repo**: github.com/eyaltoledano/claude-task-master
- **Install**: `npx task-master-ai init` (CLI) or via the host's MCP marketplace

## The three-model split

| Slot | Typical model | Job |
|---|---|---|
| **main** | Anthropic Sonnet / Opus | task generation, decomposition, execution |
| **research** | Gemini 2.5 Pro | context-gathering, library lookups, web research |
| **fallback** | Gemini 2.5 Flash | cheap retries when the main model fails or budget hits |

The thesis: most tokens an AI coding agent burns are *not* hard reasoning — they're context-loading, file enumeration, library research, and retry loops. Routing those to a cheap model and reserving the expensive model for the actual reasoning step is where the cost wins come from. Pairs naturally with [[open-source-model-integration|Open-Source Model Integration]]'s same thesis from the model-substitution angle.

## Why it matters

Task Master is a clean instance of the [[agentic-harness-primitives|Agentic Harness Primitives]] **tool pool assembly** + **token budget tracking** + **agent type system** patterns rolled into a single user-facing tool. It's also one of the cleanest practical implementations of the planning-first thesis ([[ai-coding-workflow|Cole Medin's pattern]], [[bmad-method|BMAD]], [[meta-prompting|meta-prompting]]) — the PRD-to-task-list step is exactly the planning artifact those frameworks ask for.

## Sources

- [[summary-task-master-ai-cursor-cline|100x Cursor + Cline's Code Quality, Cost, & Speed With Task Master AI]] — [[worldofai|WorldofAI]] walkthrough; full-stack task app demo

## See Also

- [[ai-coding-workflow|AI Coding Workflow]] — the planning-first thesis Task Master operationalizes
- [[bmad-method|BMAD Method]] — heavier multi-persona variant
- [[multi-agent-orchestration|Multi-Agent Orchestration]] — broader pattern
- [[mcp|MCP]] — the protocol Task Master uses to plug into hosts
- [[cursor]], [[cline]], [[claude-code]] — the harnesses it integrates with
