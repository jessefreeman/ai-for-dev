---
type: entity
sources: ["Archon OS First-Ever AI Operating System for AI Coding! (Opensource).md"]
created: 2026-04-07
updated: 2026-04-07
tags: [tool, ai, agent, mcp, knowledge-management, task-management, open-source]
---

# Archon OS

Open-source command center for AI coding assistants by [[cole-medin|Cole Medin]] and the Dynamis community. Repositioned from Cole's earlier "Archon AI agent builder" into the **first-ever AI Operating System for AI coding** — a knowledge + task management backbone any AI coding agent ([[claude-code|Claude Code]], [[cursor|Cursor]], Kira, etc.) can plug into via MCP. Sleek modern UI for managing knowledge, context, MCPs, and tasks across projects, with a real-time visualization of agent task lists you can edit while the agent is working.

- **GitHub**: [coleam00/Archon](https://github.com/coleam00/Archon)
- **License**: Open source
- **Stack**: Docker + Supabase + your choice of model provider (OpenAI / Anthropic / Gemini / Ollama / OpenRouter)

## What It Replaces / Augments

- **[[mcp|MCP]] context layer**: instead of every agent having its own context loading, Archon exposes a unified knowledge base over MCP that all your agents can query
- **Task management**: live task list per agent/project, editable in real-time — agent picks up your edits on the next iteration
- **Documentation indexing**: continuously crawls and indexes external docs (e.g., Next.js docs, Shadcn docs) so agents always have current references — Cole frames this as "similar to Context7 but better"
- **Project manager dashboard**: backlog → in progress → review → completed view per agent

## Architecture (microservices)

- **Server** — core API and orchestration logic
- **MCP server** — the surface coding agents connect to
- **Agents service** — agent execution (the wiki page calls this "coming soon" in the WorldofAI walkthrough)
- **UI** — web dashboard
- All ports configurable; everything runs via `docker compose`

## Setup

1. Prerequisites: Docker Desktop, Supabase project, git, VS Code, model provider API key (or [[ollama|Ollama]] for local)
2. Clone `coleam00/Archon`, `cd archon`
3. Copy `.env.example` → `.env`, fill in Supabase URL + credentials + model provider
4. In Supabase SQL editor, run the contents of `migration/complete_setup.sql`
5. Start Docker Desktop, then `docker compose up`
6. Open localhost, configure provider + chat model + embedding model in Settings
7. Optional: enable contextual embeddings, projects/tasks, dark mode
8. Connect coding agents via the **MCP Server** tab — copy the MCP config snippet into your agent's JSON config

## Knowledge Base Workflow

The knowledge base accepts:
- **URL crawls** — recursive ingest of documentation sites (the Next.js docs example from the video)
- **Codebases** — point at a local repo
- **Business projects** — structured project context
- **Plain URLs** — single-page references

Once added, every connected agent can query the knowledge base in real time via MCP. This is the architectural answer to "how do I keep my agents on the latest framework docs without manually feeding them context every session."

## How It Compares

| | Archon OS | [[ai-coding-workflow\|Cole's PLANNING.md/TASK.md pattern]] | [[bmad-method]] | Claude Code [[claude-code\|Ultra Plan]] |
|---|---|---|---|---|
| Form factor | Hosted dashboard + MCP server | Markdown files in project | Six markdown artifacts in `AAI/` folder | CLI + cloud planning |
| Knowledge layer | Continuous crawl + indexing | Manual references | Manual references | Project files only |
| Task UI | Web dashboard, real-time editable | Markdown checkboxes | Markdown stories | Doc-style web review |
| Multi-agent surface | Yes (any MCP client) | Per-IDE | Per-IDE | Claude Code only |
| Setup cost | Docker + Supabase + config | Two markdown files | Six persona prompts | Click `/ultra-plan` |

Archon is the heaviest of the four but the only one designed to be a **persistent, multi-agent knowledge backbone** rather than a per-session pattern.

## Lineage

The earlier Archon was Cole's "all-in-one AI tool set for building agents" — referenced in [[summary-cole-medin-100x-ai-coding|his 100x faster video]] as one of the MCP servers he configures in Windsurf alongside filesystem, Brave, and git. Archon OS is the rebrand + repositioning into the AI-coding-OS frame.

## See Also

- [[cole-medin]] — creator
- [[mcp]] — the protocol Archon exposes
- [[ai-coding-workflow]] — Cole's lighter pattern; Archon OS is the heavyweight version
- [[claude-code]], [[cursor]] — primary MCP clients that connect to Archon
- [[supabase]] — required backend (no entity page yet — referenced across multiple sources now)
- [[ollama]] — optional local model provider
- [[WorldofAI]] — source channel
- [[summary-worldofai-archon-os|Source: Archon OS walkthrough]]
