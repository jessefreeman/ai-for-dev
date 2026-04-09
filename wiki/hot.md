---
type: hot-cache
created: 2026-04-06
updated: 2026-04-09
---

# Hot Cache

## Current State

**104 sources ingested.** Newest: Nate Herk's hands-on of Anthropic [[managed-agents|Managed Agents]] — Anthropic's third primary surface (alongside Claude.ai + Claude Code). User flagged it as **future-facing — track as it evolves**. The wiki entity is structured around the *roadmap* (Outcomes, Multi-Agent Orchestration, Persistent Memory in private preview) rather than the launch state, because the launch state is missing the load-bearing trigger primitive.

## Most Active Pages

- [[managed-agents]] — new; Anthropic's hosted agent runtime; future-facing watch
- [[anthropic]] — Managed Agents added to product list
- [[claude-code]] — new "Managed Agents CLI Integration" section + credential warning
- [[openclaw]] — comparison: still wins on heartbeats + Telegram
- [[trigger-dev]] — new stub; the trigger layer Managed Agents lacks
- [[mcp]] — auth + tool integration layer for every Managed Agent
- [[slash-loop|/loop]] + [[open-brain|OpenBrain]] — the local primitives Managed Agents conspicuously fails to replicate at launch

## Most Recently Added (single-source ingest 2026-04-09)

- [[summary-nate-herk-managed-agents|Nate Herk: I Tested Claude's New Managed Agents]] — pricing ($0.08/hr per active session + tokens), tool surface (same as Claude Code), Notion launch partner, CLI integration via `anthropic` CLI from inside Claude Code. Nate's verdict: *"Disappointing for power users — I'd rather use Claude Code + trigger.dev."*

## What to Watch on Managed Agents

- **Outcomes** ships → first hosted self-eval primitive from a frontier lab (parallels [[autoresearch-evals|AutoResearch]] / Hermes GEPA)
- **Multi-Agent Orchestration** ships → directly competes with [[claude-code-subagents]] and [[paperclip|Paperclip]]
- **Persistent Memory** ships → replicates [[open-brain|OpenBrain]] hosted
- **Native cron / webhook / event-trigger** lands → would close the [[trigger-dev|trigger.dev]] gap

## Open Gaps

- **Long-standing primary sources**: Karpathy's gist, AI 2027, Dan Shapiro, StrongDM, METR study
- **Aggregate Intellect creator name** — carryover
- **JSON-to-Video pricing model** — carryover
- **CodeLLM pricing tier verification** — carryover
- **Browserbase / Block / ByteDance org pages** — still tracked
- **Trigger.dev** — currently a stub; will grow as more sources reference it

## Architectural Threads to Watch

- **Anthropic surface expansion**: Claude.ai (chat) + Claude Code (CLI) + Managed Agents (hosted runtime) — three primary surfaces, each targeting a distinct user. Managed Agents is the onramp tier; whether it evolves into a real builder tier depends on the three private-preview features + a native trigger primitive.
- **The trigger gap is the structural story**: every cloud agent runtime (Managed Agents, Augment Remote, Copilot Coding Agent) is reactive — they only run when called. [[slash-loop|/loop]], [[openclaw|OpenClaw]] heartbeats, [[trigger-dev|trigger.dev]], n8n schedules are all filling the same gap. Whoever ships native triggers first wins the always-on assistant pattern.
- **MCP as universal interface layer** — unchanged; reinforced by Managed Agents using MCP for every external integration.
