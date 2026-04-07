---
type: entity
sources: ["Augment Agent RIP Cursor! NEW Agentic AI IDE! AI Software Engineer Automates Your Code (Opensource).md"]
created: 2026-04-07
updated: 2026-04-07
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
