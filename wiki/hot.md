---
type: hot-cache
created: 2026-04-06
updated: 2026-04-08
---

# Hot Cache

## Current State

**80 sources ingested** (after a 12-source batch on 2026-04-08), 6 org pages, 1 newly-tagged Models section in the index. The two strongest threads from this batch: **R1-0528 as the default open-source reasoning backbone** for the agent ecosystem, and **n8n's content-pipeline maturation** (faceless shorts + longform videos + first-class Perplexity node + free YouTube scraper).

## Most Active Pages

- [[deepseek|DeepSeek]] — refreshed with R1-0528 (671B/37B MoE, MIT, 136K context, free OpenRouter); now the default free reasoning backbone for [[codename-goose|Goose]], [[stagehand]], [[deerflow]], [[agenticseek]]
- [[n8n]] — added 4 new workflow refs and a "First-class nodes worth tracking" section ([[perplexity]], [[zep]], AI Agent)
- [[task-master-ai]] — new entity; the cleanest practical implementation of the cost-routing thesis
- [[deerflow]] — new entity; first ByteDance-published open-source agent framework in the wiki
- [[codename-goose]] — new entity; the only "free Claude Code" alternative with corporate backing (Block)
- [[stagehand]] — new entity; MCP-native browser automation; fills the long-empty browser-control slot
- [[perplexity]] — new entity; canonical real-time-search primitive for n8n agents and MCP servers
- [[multi-agent-orchestration]] — expanded with Task Master, AgentZero, DeerFlow, AgenticSeek

## Most Recently Added (the 12-source batch 2026-04-08)

- **Open-source agent frameworks** (4): [[task-master-ai]] (cost-routing layer), [[agent-zero]] (self-organizing), [[agenticseek]] (local + voice), [[deerflow]] (deep research, ByteDance)
- **Free Claude Code alternatives** (2): [[codename-goose]] (Block), [[codellm]] (Abacus, $10 hosted bundle)
- **Browser automation** (1): [[stagehand]] (Browserbase, MCP-native, self-healing)
- **Models** (1): [[deepseek|DeepSeek R1-0528]] benchmark + adoption signal
- **n8n maturation** (4): Perplexity node v1.98+, faceless shorts pipeline, longform video pipeline (new person [[jay-e-robonuggets]]), free YouTube scraper

## Open Gaps

- **Long-standing primary sources**: Karpathy's gist, AI 2027, Dan Shapiro, StrongDM, METR study
- **JSON-to-Video pricing model** — flagged as a tasks.md item for follow-up
- **Bazzite gaming-VM source** — skipped as off-topic this batch
- **Jules (Google)** — still mentioned as the thing Open-SWE replaces; no primary ingest yet
- **Browserbase as a company page** — Stagehand vendor; no org page yet

## Architectural Threads to Watch

- **DeepSeek R1-0528 as the default open-weights reasoning backbone**: this is the single biggest pattern from the batch — Goose, Stagehand, DeerFlow, AgenticSeek all converge on R1 (or its distillations) as their recommended free model. The MIT license + free OpenRouter tier is the structural reason.
- **Cost-routing layers (multi-model splits)**: Task Master AI's main/research/fallback split is a generalization of [[open-source-model-integration]]; AgentZero takes it further (5 model slots). This is the next abstraction layer above "use a cheaper model."
- **n8n's first-class node ecosystem**: Perplexity, Zep, AI Agent, and the next-up integrations are pulling automation work *into* n8n rather than out of it. The real-time-search closure with Perplexity is the structurally biggest of the batch.
- **ByteDance enters as a frontier OSS contributor**: DeerFlow is the first; expect more.
