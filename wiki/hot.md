---
type: hot-cache
created: 2026-04-06
updated: 2026-04-09
---

# Hot Cache

## Current State

**109 sources ingested.** Today's defining structural addition: **[[llm-design-patterns]]** — the wiki's first concept page primarily about *patterns / techniques*, anchored by Simon Scrapes's 5-pattern Claude Code workflow taxonomy. **User flagged it as a core pillar to flesh out over time.** Joins [[agentic-harness-primitives]] and [[four-prompting-disciplines]] as the third "framework" page in the concept tier; built for growth with explicit "how to extend this page" rules so future ingests on workflow patterns slot in cleanly.

## Most Active Pages

- [[llm-design-patterns]] — new framework page; 5 patterns captured
- [[claude-code]] — new Workflow Patterns + CLI Flags sections; `claude -w` and `claude -p` documented
- [[claude-code-subagents]] — added 10 concurrent limit, 3 always-on built-in sub-agents, builder-validator chain
- [[ai-personal-agent-hardening]] / [[kali-linux]] — yesterday's defensive cluster
- [[anthropic-surface-expansion]] / [[persistent-agent-layer-wars]] — load-bearing thread anchors

## Most Recently Added (2026-04-09)

- [[summary-simon-scrapes-claude-code-workflows|Simon Scrapes — Every Claude Code Workflow Explained]] — 5 named patterns + `claude -w` work-trees flag + `claude -p` headless flag + 10 concurrent sub-agent limit + Agent Teams research preview (Opus 4.6, opt-in via `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`).

## The 5 Claude Code workflow patterns (now in the wiki vocabulary)

For future ingests on workflow patterns from any tool — these are the canonical names:

1. **Sequential Flow** — single conversation; ceiling is the context window
2. **The Operator** — multi-terminal parallel via `claude -w` work-trees; you orchestrate
3. **Split & Merge** — single session fans out to sub-agents (10 concurrent limit; hub-and-spoke)
4. **Agent Teams** — peer-to-peer agent collaboration via shared task list (4–7× tokens; research preview)
5. **Headless** — `claude -p` non-interactive mode; designed to plug into cron / Task Scheduler

Full content + extension rules on [[llm-design-patterns]].

## Open Gaps

- **Long-standing primary sources**: Karpathy gist, AI 2027, Dan Shapiro, StrongDM, METR study
- **Aggregate Intellect creator, JSON-to-Video pricing, CodeLLM tier** — carryovers
- **Browserbase / Block / ByteDance org pages** — still tracked
- **Trigger.dev / Claude Agent SDK** — stubs / dangling
- **Boris Cherny / GSD framework / Ralph loop** — name-checked, deferred until primary source
- **Public attack-payload corpus** — open from the hardening page

## Architectural Threads to Watch

- **LLM Design Patterns library** (new pillar, user-flagged): [[llm-design-patterns]] is built for growth. Future ingests on workflow patterns from any tool extend the existing entries or add new ones per the page's contribution rules.
- **Defensive AI security as a discipline**: [[ai-personal-agent-hardening]] + [[kali-linux]] + [[bjorn]] + [[parseltongue]].
- **Anthropic surface expansion (load-bearing)**: [[anthropic-surface-expansion]] is canonical. Hardening rule 1 is the constraint on Conway-class agents.
- **Behavioral lock-in vs intelligence portability**: same surface as hardening, different concern.
- **Three eras of AI competition** (Nate B Jones): models → interfaces → persistence/memory.
- **MCP** with the proprietary-layer-on-top risk flagged for `.cnw.zip`.
