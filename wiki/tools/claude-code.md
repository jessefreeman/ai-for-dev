---
type: entity
sources: ["Andrej Karpathy Just 10x'd Everyone's Claude Code.md"]
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

## Notable

- [[Nate Herk]] demonstrated ingesting 36 YouTube transcripts in ~14 minutes and a single long article in ~10 minutes.
- Can run in VS Code or terminal.

## See Also
- [[LLM Wiki Pattern]]
- [[Obsidian]]
- [[summary-karpathy-10x-claude-code|Source: Karpathy 10x'd Claude Code]]
