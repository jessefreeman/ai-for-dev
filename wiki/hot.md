---
type: hot-cache
created: 2026-04-06
updated: 2026-04-10
---

# Hot Cache

## Current State

**115 sources ingested.** Latest: Nate Herk's Advisor Strategy walkthrough — adds Pattern 6 to [[llm-design-patterns]] and documents `/model opus-plan` in Claude Code.

## Most Active Pages

- [[llm-design-patterns]] — **Pattern 6: Advisor Strategy** added; first cost-optimization pattern on the design-patterns page (orthogonal to the topology ladder of Patterns 1–5)
- [[claude-code]] — new `/model opus-plan` hidden command (Opus for plan mode, Sonnet for execution); third CLI primitive documented in 2 days
- [[claude]] — Advisor Strategy API section with benchmarks (Sonnet+Opus = +2.7pp SWE-bench, −12% cost; Haiku+Opus = 2× BrowseComp score)
- [[archon-os]] — major rewrite: now YAML-based workflow engine, not AI OS
- [[openclaw]] — fully local+free stack (Gemma 4 + Ollama + SearXNG) + autonomous trading methodology
- [[agent-plugins]] — load-bearing plugin index; rolling review task active

## Three Cost-Optimization Threads

The wiki now has three distinct approaches to reducing LLM costs:
1. **Model swapping** — [[open-source-model-integration]]: point Claude Code at Ollama/OpenRouter (50–100× savings)
2. **Planning efficiency** — [[claude-code#ultra-plan]]: spend more tokens upfront on multi-agent planning, save on execution
3. **Advisor strategy** — [[llm-design-patterns#pattern-6-advisor-strategy]]: route only hard steps to Opus, handle everything else with Haiku/Sonnet

## Open Gaps

- **Lint reminder overdue** — 115 sources; overdue since the Dubibubii ingest crossed the 5-multiple
- **Plugin-page stub follow-up** — 26 plugin pages in `tracked` status; single rolling task nudge
- **Monitor tool** — Anthropic feature name-dropped in the advisor strategy video; no primary source yet
- **Long-standing primary sources**: Karpathy gist, AI 2027, Dan Shapiro, StrongDM, METR study
- **Boris Cherny / GSD framework / Ralph loop / claude-agent-sdk** — name-checked, deferred

## Architectural Threads to Watch

- **Shadow-factory enabling infrastructure**: [[aimock]] + [[trigger-dev]] + [[supabase]] + [[mcp]] + [[a2a-protocol]] + [[ag-ui]]
- **Agent plugin ecosystem**: [[agent-plugins]] index; status flags drive the user-facing nudge
- **LLM Design Patterns library** (user-flagged pillar): [[llm-design-patterns]] — 6 patterns, Archon implementations for 2
- **Defensive AI security**: [[ai-personal-agent-hardening]] + [[kali-linux]] + [[promptfoo]] + [[container-use]]
- **Anthropic surface expansion**: [[anthropic-surface-expansion]] + [[persistent-agent-layer-wars]]
- **Behavioral lock-in vs intelligence portability**
