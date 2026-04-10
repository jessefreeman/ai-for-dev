---
type: entity
sources: ["Archon OS First-Ever AI Operating System for AI Coding! (Opensource).md", "coleam00Archon The first open-source harness builder for AI coding. Make AI coding deterministic and repeatable..md"]
created: 2026-04-07
updated: 2026-04-10
tags: [tool, ai, agent, workflow-engine, open-source, claude-code]
---

# Archon

Open-source **workflow engine for AI coding agents** by [[cole-medin|Cole Medin]]. Define development processes as YAML DAG workflows — planning, implementation, validation, code review, PR creation — and run them deterministically across all projects. Framing: *"Like what Dockerfiles did for infrastructure and GitHub Actions did for CI/CD — Archon does for AI coding workflows."*

- **GitHub**: [coleam00/Archon](https://github.com/coleam00/Archon)
- **Website**: [archon.diy](https://archon.diy/)
- **License**: MIT
- **Prerequisites**: Bun, [[claude-code|Claude Code]], GitHub CLI

## What Problem It Solves

When you ask an AI agent to "fix this bug", what happens depends on the model's mood. It might skip planning, forget to run tests, or write a PR description that ignores your template. Every run is different. Archon fixes this: encode your development process as a workflow. The workflow defines the phases, validation gates, and artifacts. The AI fills in the intelligence at each step, but the **structure is deterministic and owned by you**.

## Core Concepts

### YAML DAG Workflows

Workflows live in `.archon/workflows/` and define a directed acyclic graph of nodes:

- **AI nodes** — prompt-driven; the model does planning, code generation, or review. Optional `fresh_context: true` resets the context window each iteration.
- **Deterministic nodes** — bash scripts, test runners, git operations. No AI involved.
- **Loop nodes** — iterate until a condition is met (e.g., `ALL_TASKS_COMPLETE`). Can be AI loops (iterate on implementation) or human approval gates (`interactive: true` pauses for input).
- **Dependency edges** — `depends_on` creates the DAG; independent nodes run in parallel.

Workflows are committed to the repo. Same-named files in the project override bundled defaults. The whole team runs the same process.

### Git Worktree Isolation

Every workflow run gets its own git worktree on its own branch. Run 5 fixes in parallel with no conflicts. Empty worktrees auto-clean on close.

### 17 Default Workflows

| Workflow | What it does |
|---|---|
| `archon-assist` | General Q&A, debugging, exploration |
| `archon-fix-github-issue` | Classify → investigate → plan → implement → validate → PR → review → self-fix |
| `archon-idea-to-pr` | Feature idea → plan → implement → validate → PR → 5 parallel reviews → self-fix |
| `archon-plan-to-pr` | Execute existing plan → implement → validate → PR → review → self-fix |
| `archon-ralph-dag` | **The Ralph loop as a first-class workflow** — iterate through PRD stories until done |
| `archon-piv-loop` | Guided Plan-Implement-Validate loop with human review between iterations |
| `archon-smart-pr-review` | Classify PR complexity → run targeted review agents → synthesize |
| `archon-comprehensive-pr-review` | 5 parallel reviewers with automatic fixes |
| `archon-remotion-generate` | Generate/modify [[remotion|Remotion]] video compositions |
| `archon-architect` | Architectural sweep, complexity reduction, codebase health |
| `archon-refactor-safely` | Safe refactoring with type-check hooks and behavior verification |
| `archon-resolve-conflicts` | Detect merge conflicts → analyze → resolve → validate → commit |

Run `archon workflow list` or describe what you want — the router picks the right workflow.

## Multi-Platform

| Platform | Setup time |
|---|---|
| Web UI + CLI | Out of the box |
| Telegram | 5 min |
| Discord | 5 min |
| Slack | 15 min |
| GitHub Webhooks | 15 min |

The Web UI sidebar aggregates conversations from **all platforms** — workflows kicked off from CLI, Slack messages, GitHub issue interactions all appear in one monitoring hub.

## Web UI

- **Chat** — conversation interface with real-time streaming and tool call visualization
- **Dashboard** — Mission Control for monitoring running workflows; filterable by project, status, date
- **Workflow Builder** — visual drag-and-drop editor for creating DAG workflows with loop nodes
- **Workflow Execution** — step-by-step progress view for any running/completed workflow

## Architecture

```
Platform Adapters (Web UI, CLI, Telegram, Slack, Discord, GitHub)
                    │
                    ▼
              Orchestrator (Message Routing + Context Management)
               /         |          \
         Command     Workflow      AI Assistant
         Handler     Executor      Clients
         (Slash)     (YAML)        (Claude / Codex)
               \         |          /
                    │
                    ▼
         SQLite / PostgreSQL (7 Tables)
  Codebases · Conversations · Sessions · Workflow Runs
  Isolation Environments · Messages · Workflow Events
```

## Lineage

Archon has pivoted twice:

1. **v1 — AI agent builder** (Python, RAG) — Cole's original "all-in-one AI tool set for building agents." Preserved on the `archive/v1-task-management-rag` branch.
2. **v2 — AI OS for AI coding** — knowledge + task management backbone via MCP (per [[summary-worldofai-archon-os|WorldofAI walkthrough]]). Docker + Supabase + MCP server. Repositioned from the agent builder.
3. **v3 (current) — Workflow engine** — YAML DAG workflows, git worktree isolation, multi-platform adapters, Web UI. Bun-based. The knowledge/task backbone has been replaced by the workflow executor as the core primitive.

## How It Compares

| | Archon (current) | [[ai-coding-workflow\|Cole's PLANNING.md/TASK.md pattern]] | [[bmad-method]] | Claude Code [[claude-code\|Ultra Plan]] |
|---|---|---|---|---|
| Form factor | YAML workflow engine + Web UI | Markdown files in project | Six markdown artifacts | CLI + cloud planning |
| Determinism | Full — YAML defines every phase | Partial — discipline is in the rules | Partial — discipline is in the personas | None — model decides |
| Isolation | Git worktree per run | Manual branches | Manual branches | Manual |
| Multi-platform | CLI, Web, Slack, Telegram, Discord, GitHub | Per-IDE | Per-IDE | Claude Code only |
| Parallelism | Built-in (independent nodes run in parallel) | Manual terminals | Manual | Sub-agents |

## See Also

- [[cole-medin]] — creator
- [[llm-design-patterns]] — Ralph loop and PIV loop have Archon implementations
- [[ai-coding-workflow]] — Cole's lighter pattern; Archon is the YAML-packaged evolution
- [[claude-code]] — primary AI assistant client
- [[remotion]] — dedicated Archon workflow for video generation
- [[summary-archon-readme|Source: Archon README (workflow engine)]]
- [[summary-worldofai-archon-os|Source: Archon OS walkthrough (v2 era)]]
