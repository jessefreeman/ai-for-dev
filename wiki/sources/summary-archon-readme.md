---
type: source-summary
sources: ["coleam00Archon The first open-source harness builder for AI coding. Make AI coding deterministic and repeatable..md"]
created: 2026-04-10
updated: 2026-04-10
tags: [article, github, ai-coding, workflow-engine, open-source, archon]
---

# Archon — The First Open-Source Harness Builder for AI Coding

**Author / channel:** [[cole-medin|Cole Medin]]
**Format:** GitHub README
**Source:** [Original](../../raw/archive/coleam00Archon%20The%20first%20open-source%20harness%20builder%20for%20AI%20coding.%20Make%20AI%20coding%20deterministic%20and%20repeatable..md)

## Summary

Archon has been completely repositioned from an "AI Operating System for AI coding" (knowledge + task backbone via MCP) into a **workflow engine for AI coding agents**. The new framing: *"Like what Dockerfiles did for infrastructure and GitHub Actions did for CI/CD — Archon does for AI coding workflows."* Development processes are defined as YAML DAG workflows with a mix of deterministic nodes (bash, tests, git) and AI nodes (planning, code gen, review). Every run gets its own git worktree for isolation.

## Key Points

- **YAML DAG workflows** — define phases (plan → implement → validate → review → approve → PR) as a directed acyclic graph. Nodes can depend on each other, loop until a condition is met, or gate on human approval.
- **Composable node types**: AI nodes (prompt-driven, fresh context per iteration optional) and deterministic nodes (bash scripts, test runners, git operations). *"The AI only runs where it adds value."*
- **Git worktree isolation** — every workflow run gets its own worktree on its own branch. Run 5 fixes in parallel with no conflicts. Empty worktrees auto-clean on close.
- **17 default workflows** ship out of the box, including:
  - `archon-fix-github-issue` — classify → investigate → plan → implement → validate → PR → smart review → self-fix
  - `archon-idea-to-pr` — feature idea → plan → implement → validate → PR → 5 parallel reviews → self-fix
  - `archon-ralph-dag` — the **Ralph loop** as a first-class workflow: iterate through PRD stories until done
  - `archon-piv-loop` — guided Plan-Implement-Validate loop with human review between iterations
  - `archon-remotion-generate` — generate/modify [[remotion|Remotion]] video compositions
  - `archon-smart-pr-review` / `archon-comprehensive-pr-review` — multi-agent code review pipelines
- **Portable** — workflows live in `.archon/workflows/`, committed to the repo. Same-named files in the project override bundled defaults. Works from CLI, Web UI, Slack, Telegram, Discord, or GitHub webhooks.
- **Web UI** — chat interface with real-time streaming, dashboard (Mission Control for running workflows), visual drag-and-drop workflow builder for DAGs, step-by-step execution viewer. The sidebar aggregates conversations from **all platforms** (CLI, Slack, Telegram, GitHub) in one place.
- **Multi-platform adapters**: Web UI and CLI work out of the box. Optional: Telegram (5 min), Discord (5 min), Slack (15 min), GitHub webhooks (15 min).
- **Architecture**: Platform adapters → Orchestrator (message routing + context management) → Command Handler (slash) / Workflow Executor (YAML) / AI Assistant Clients (Claude / Codex) → SQLite or PostgreSQL (7 tables: codebases, conversations, sessions, workflow runs, isolation environments, messages, workflow events).
- **Loop nodes** — AI loops iterate until a condition is met (e.g., `ALL_TASKS_COMPLETE`), with optional `fresh_context: true` for clean sessions each iteration. Human approval loops pause and wait for input with `interactive: true`.
- **Previous version preserved** — the original Python-based Archon (task management + RAG) lives on the `archive/v1-task-management-rag` branch.
- **Setup**: Full setup (5 min) via guided wizard in Claude Code (`git clone → bun install → claude → "Set up Archon"`); quick install (30 sec) via `curl | bash` or `brew install coleam00/archon/archon`.
- **Prerequisites**: Bun, Claude Code, GitHub CLI.
- **AI assistant support**: Claude Code (primary) and Codex.

## Connected Pages

- [[archon-os]] — entity page (rewritten to reflect the pivot)
- [[cole-medin]] — creator
- [[llm-design-patterns]] — Ralph loop and PIV loop now have Archon implementations
- [[ai-coding-workflow]] — Archon is the YAML-packaged version of Cole's workflow pattern
- [[remotion]] — dedicated Archon workflow for video generation
- [[claude-code]] — primary AI assistant client

## See Also

- [[summary-worldofai-archon-os|Source: Archon OS walkthrough]] — the previous-era WorldofAI source describing the AI OS version
