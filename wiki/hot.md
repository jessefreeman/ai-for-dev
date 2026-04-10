---
type: hot-cache
created: 2026-04-06
updated: 2026-04-10
---

# Hot Cache

## Current State

**114 sources ingested.** Today's batch: 3 sources covering SearXNG (new self-hosted search entity), an OpenClaw autonomous trading methodology, and Archon's pivot from AI OS to workflow engine.

## Most Active Pages

- [[archon-os]] — **major rewrite**: Archon is now a YAML-based deterministic workflow engine with git worktree isolation and 17 default workflows, not the MCP knowledge backbone it was yesterday
- [[openclaw]] — two new sections: fully local+free stack (Gemma 4 + Ollama + SearXNG) + autonomous trading methodology (cron-driven, sub-agent wealth adviser teams, Alpaca integration)
- [[searxng]] — **new entity**: self-hosted meta-search engine; first self-hosted web search in the wiki; added to [[self-hostable-alternatives]]
- [[llm-design-patterns]] — Ralph loop and PIV loop now have concrete Archon implementations (`archon-ralph-dag`, `archon-piv-loop`)
- [[agent-plugins]] — load-bearing plugin index; rolling review task active

## Archon pivot (load-bearing)

The existing [[archon-os]] page was describing a product that no longer exists. Cole Medin's Archon has pivoted from "AI OS" (knowledge + task backbone) to **workflow engine** (YAML DAGs, composable AI + deterministic nodes, approval gates, git worktree per run). The framing: *"Dockerfiles for AI coding."* The `archon-ralph-dag` workflow means the Ralph loop — previously just name-checked on [[llm-design-patterns]] — now has an implementation. The PIV loop also has `archon-piv-loop`.

## Fully local agent stack now complete

SearXNG closes the last gap. The wiki now documents a **zero-cost, fully private OpenClaw stack**: [[gemma-4]] via [[ollama]] (model) + [[searxng]] via Docker (web search) + [[openclaw]] (agent framework). No API keys, no rate limits, no data leaves the device.

## Open Gaps

- **Lint reminder due** — 114 sources; overdue since the Dubibubii ingest crossed the 5-multiple
- **Plugin-page stub follow-up** — 26 plugin pages in `tracked` status; single rolling task nudge
- **Long-standing primary sources**: Karpathy gist, AI 2027, Dan Shapiro, StrongDM, METR study
- **Boris Cherny / GSD framework / Ralph loop / claude-agent-sdk** — name-checked, deferred
- **Trading experiment follow-up** — user wants to experiment and research the autonomous trading methodology further

## Architectural Threads to Watch

- **Shadow-factory enabling infrastructure**: [[aimock]] + [[trigger-dev]] + [[supabase]] + [[mcp]] + [[a2a-protocol]] + [[ag-ui]]
- **Agent plugin ecosystem**: [[agent-plugins]] index; status flags drive the user-facing nudge
- **LLM Design Patterns library** (user-flagged pillar): [[llm-design-patterns]] — now with Archon implementations
- **Defensive AI security**: [[ai-personal-agent-hardening]] + [[kali-linux]] + [[promptfoo]] + [[container-use]]
- **Anthropic surface expansion**: [[anthropic-surface-expansion]] + [[persistent-agent-layer-wars]]
- **Behavioral lock-in vs intelligence portability**
