---
type: hot-cache
created: 2026-04-06
updated: 2026-04-09
---

# Hot Cache

## Current State

**110 sources ingested.** Today's structural addition: **the wiki now downloads images locally on every ingest** ([page-conventions § Images and assets](../.instructions/core/rules/page-conventions.md#images-and-assets-local-snapshots-are-mandatory)) and the AIMock launch is the first ingest under the new rule. AIMock anchors a new "infrastructure for shadow-factory teams" cluster on [[saas-death-spiral]] alongside [[trigger-dev]], [[supabase]], [[mcp]], plus two new open protocols: [[ag-ui]] (agent↔frontend) and [[a2a-protocol]] (agent↔agent).

## Most Active Pages

- [[aimock]] — new entity; deterministic CI for the entire agentic stack (LLM + MCP + A2A + vector + search/rerank/moderation)
- [[copilotkit]] — new org stub; AIMock vendor
- [[ag-ui]] — new open protocol stub; agent↔frontend wire (LangGraph, CrewAI, Mastra, Google ADK, AWS Bedrock AgentCore)
- [[a2a-protocol]] — new open protocol stub; agent↔agent wire
- [[saas-death-spiral]] — new "enabling-infrastructure thread" subsection on shadow-factory question
- [[llm-design-patterns]] — yesterday's pillar; still load-bearing
- [[ai-personal-agent-hardening]] / [[kali-linux]] — defensive cluster

## Most Recently Added (2026-04-09)

- [[summary-anmol-aimock-launch|AIMock launch (CopilotKit)]] — first ingest under the new image-localization rule. 13 product images saved to `raw/assets/anmol-aimock-launch/`. 5 mock surfaces + 3 unique primitives (drift detection, record/replay, chaos testing). Production user: [[ag-ui]].

## New methodology rule (today)

**Image localization is now mandatory on every ingest.** Codified in `page-conventions.md`. Step 0 added to ingest prompt Phase 2. All images downloaded to `raw/assets/<source-slug>/`, raw markdown rewritten to local paths, third-party promo banners stripped. Source summaries embed images inline where they materially break down the content.

## Three new open protocols in the wiki (via single source)

The 2026 agentic connective layer is now tracked as a triad:

| Protocol | Connects |
|---|---|
| [[mcp\|MCP]] | Agents ↔ tools |
| [[a2a-protocol\|A2A]] | Agents ↔ other agents |
| [[ag-ui\|AG-UI]] | Agents ↔ frontend |

## Open Gaps

- **Long-standing primary sources**: Karpathy gist, AI 2027, Dan Shapiro, StrongDM, METR study
- **Aggregate Intellect creator, JSON-to-Video pricing, CodeLLM tier** — carryovers
- **Browserbase / Block / ByteDance org pages** — still tracked
- **Trigger.dev / Claude Agent SDK** — stubs / dangling
- **Boris Cherny / GSD framework / Ralph loop** — name-checked, deferred
- **Shadow-factory company Nate B Jones referenced** — new task to find the specific video
- **Lint orphan-asset-folder check** — needed once enough ingests build up

## Architectural Threads to Watch

- **Shadow-factory enabling infrastructure** (new): [[aimock]] + [[trigger-dev]] + [[supabase]] + [[mcp]] + [[a2a-protocol]] + [[ag-ui]] = the wiki's first coherent "infrastructure stack a 3-person agentic team can rely on."
- **LLM Design Patterns library** (user-flagged pillar): [[llm-design-patterns]] is built for growth.
- **Defensive AI security as a discipline**: [[ai-personal-agent-hardening]] + [[kali-linux]] + [[bjorn]] + [[parseltongue]].
- **Anthropic surface expansion (load-bearing)**: [[anthropic-surface-expansion]] + [[persistent-agent-layer-wars]].
- **Behavioral lock-in vs intelligence portability**.
- **Three eras of AI competition**: models → interfaces → persistence/memory.
