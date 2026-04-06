---
type: entity
sources: ["Andrej Karpathy Just 10x'd Everyone's Claude Code.md", "I Broke Down Anthropic's $2.5 Billion Leak. Your Agent Is Missing 12 Critical Pieces..md", "Ollama + Claude Code = 99% CHEAPER.md", "Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md"]
created: 2026-04-06
updated: 2026-04-06
tags: [tool, ai, llm, anthropic]
---

# Claude Code

Anthropic's CLI tool for Claude that operates directly on local files and directories. The primary engine used in the [[LLM Wiki Pattern]] for reading sources, generating wiki pages, and maintaining cross-references.

## Role in LLM Wiki

- Reads raw source documents and generates structured wiki pages
- Maintains cross-references, indexes, and logs
- Configured via `CLAUDE.md` schema files that define project conventions
- Can be pointed at wiki directories from other projects (e.g., an executive assistant referencing a knowledge base)

## Internal Architecture (from leak)

In early 2026, Anthropic accidentally exposed Claude Code's source map via a build configuration error. [[Nate B Jones]] analyzed the leak and identified [[Agentic Harness Primitives]] — 12 production-grade infrastructure patterns Claude Code uses at scale.

Key structural facts from the leak:
- Two parallel registries: 207-entry command registry (user-facing) + 184-entry tool registry (model-facing)
- Six built-in agent types: Explore, Plan, Verify, Guide, General-purpose, Status-line-setup — each with distinct prompts, tools, and behavioral constraints
- Bash tool has an 18-module security architecture
- Sessions persisted as JSON, fully reconstructable after crashes
- Token budget tracked pre-turn with hard stops before API calls
- Typed streaming events including a crash event with reason

## Running with Non-Anthropic Models

Claude Code's model is configurable. The harness (Claude Code) and the engine (AI model) are decoupled. You can substitute any open-source or third-party model via environment variables — pointing `ANTHROPIC_BASE_URL` at [[Ollama]] (local) or [[OpenRouter]] (cloud). See [[Open-Source Model Integration]].

This is not against Anthropic's ToS. Practical result: 50–100x cost reduction for many workflows.

## /loop — Proactive Agent Scheduling

Shipped March 2026. The `/loop` command lets Claude Code run jobs on a repeating schedule without human interaction — the "heartbeat" for agents. Combined with a persistent memory system (like [[OpenBrain]]) and MCP tools, `/loop` enables agents that accumulate value across cycles.

Before `/loop`, developers needed external scaffolding (bash scripts, markdown context files, completion conditions) to achieve this. Now it's native to Claude Code. See [[/loop]] for full concept page.

**Limitations**: Session-scoped (stops when laptop closes), no built-in "done" signal.

## Skills Ecosystem

Claude Code has a growing ecosystem of installable skills and plugins:
- [[skills.sh]] — open directory for agent skills (150k+ installs for [[Remotion]])
- [[GStack]] — YC startup methodology (~50k stars)
- [[Superpowers]] — TDD-enforcing plugin (115k stars)
- [[Impeccable]] — frontend design skill (17 commands)
- [[Agency]] — role-based agent templates
- **Excalidraw Diagram Skill** — [[Cole Medin]]'s visual validation workflow for generating diagrams

## Notable

- [[Nate Herk]] demonstrated ingesting 36 YouTube transcripts in ~14 minutes and a single long article in ~10 minutes.
- Runs in VS Code, terminal, or JetBrains IDEs.
- $2.5B run rate as of early 2026.

## See Also
- [[LLM Wiki Pattern]]
- [[Obsidian]]
- [[Agentic Harness Primitives]]
- [[Open-Source Model Integration]]
- [[Ollama]]
- [[OpenRouter]]
- [[/loop]] — proactive scheduling command
- [[OpenBrain]] — personal agent memory via SQL + MCP
- [[AutoResearch and Evals]] — methodology for self-improving skills
- [[summary-karpathy-10x-claude-code|Source: Karpathy 10x'd Claude Code]]
- [[summary-nate-jones-12-agent-primitives|Source: 12 Agent Primitives]]
- [[summary-nate-herk-ollama-claude-code|Source: Ollama + Claude Code]]
- [[summary-nate-b-jones-loop-openbrain|Source: /loop + OpenBrain]]
