---
type: entity
sources: ["Augment Agent RIP Cursor! NEW Agentic AI IDE! AI Software Engineer Automates Your Code (Opensource).md", "Augment Code UPDATE RIP Cursor! NEW AGENT! AI Software Engineer Automates Your Code! (New Agent).md"]
created: 2026-04-07
updated: 2026-04-08
tags: [tool, agent, ide, coding-assistant, open-source]
---

# Augment Agent

Agentic AI pair programmer from Augment Code, designed for professional software engineers working on large codebases. Distinguishes itself from [[cursor|Cursor]] and Windsurf with persistent codebase memory, large-context indexing, and SWE-bench leadership.

- **Vendor**: Augment Code
- **Site**: augmentcode.com
- **License**: SWE-bench pipeline open-sourced; agent itself is a hosted product
- **Editor support**: VS Code, JetBrains, Neovim, Vim

## Key Claims

- **#1 open-source agent on SWE-bench Verified** at 65.4% success rate, achieved by combining Claude 3.7 Sonnet (driver) + OpenAI o1 (assembler) — no proprietary models *(claim from launch announcement covered in [[summary-worldofai-augment-agent|WorldofAI's video]]; not independently verified here)*
- **Large-codebase indexing** — handles 39,000+ line repos without context-window collapse, vs. ~10K-token effective limits the video attributes to Cursor
- **Persistent memory** — learns coding style and past refactors across sessions, similar in spirit to [[OpenBrain]]
- **MCP support** — pluggable APIs, SQL, CLI tools via the standard [[mcp|Model Context Protocol]]
- **Visual debugging** — drag-in screenshots for UI/CSS issues; agent suggests fixes and runs only relevant tests
- **Next Edit** — predictive code edit feature

## Remote Agent (cloud, 10 parallel)

In May 2025 Augment shipped **Remote Agent** — a cloud-hosted version of the agent that runs in an isolated mirrored dev environment and supports up to **10 parallel agents** per session. This puts Augment directly in the async / cloud cluster alongside [[jules|Google Jules]], cloud Codex, and [[claude-code|Claude Code Ultra Plan]]. Distinguishing feature: 10 parallel agents per developer is the highest single-user concurrency in the cluster. Waitlist-only at launch (`augment.new`). See [[summary-worldofai-augment-code-remote-agent]].

## How It Compares

| | Augment Agent | [[cursor\|Cursor]] | [[claude-code\|Claude Code]] |
|---|---|---|---|
| Form factor | IDE extension (multi-IDE) | Standalone editor | CLI |
| Codebase scale | Large (39k+ lines) | Smaller effective context | File-tree with skills |
| Memory | Persistent, cross-session | Per-project | OpenBrain pattern |
| MCP | Yes | Yes | Yes |
| SWE-bench Verified rank | #1 OSS (65.4%) | — | — |

## Caveats

- The SWE-bench number comes from Augment's own blog post and the WorldofAI video — treat as marketing-adjacent until peer-reviewed.
- "Open-source" applies to the SWE-bench pipeline, not necessarily the full agent runtime.

## See Also

- [[cursor]] — the comparison target
- [[claude-code]] — the CLI alternative
- [[mcp]] — the protocol Augment Agent supports
- [[WorldofAI]] — primary source channel
- [[summary-worldofai-augment-agent|Source: Augment Agent walkthrough]]
- [[summary-worldofai-augment-code-remote-agent|Source: Augment Remote Agent (cloud, 10 parallel)]]
- [[jules|Google Jules]] — sibling cloud async agent
