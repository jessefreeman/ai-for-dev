---
type: hot-cache
created: 2026-04-06
updated: 2026-04-08
---

# Hot Cache

## Current State

**102 sources ingested** (after a 17-source batch on 2026-04-08, fourth batch in two days). Strongest threads from this round: **MCP maturity** (build-your-own template + curated server (Context7) + n8n integration), **the async cloud agent cluster filling out** (Augment Remote Agent, GitHub Copilot Coding Agent, Jules carryover), and **the local self-hosted AI infrastructure layer** finally has a clean recipe stack (Cole's local-Supabase RAG + Wolfgang/NetworkChuck SSL + Bijan multi-node vLLM + Docker Model Runner Mac).

## Most Active Pages

- [[mcp]] — three new sources (Cole's build-your-own template, Context7, n8n + MCP node); wiki's deepest concept coverage
- [[cline]] — three more source bumps (v3.13, v4.0, Readdy combo); release timeline now v3.13 → v4.0 → v3.18
- [[cole-medin]] — four new sources; now the most-cited creator in the wiki
- [[context7]] / [[crawl4ai]] — new RAG-tooling entities (curated MCP server + upstream knowledge builder)
- [[augment-agent]] — Remote Agent (cloud, 10 parallel)
- [[deepagent]] / [[notebooklm]] / [[readdy]] — other new tool entities

## Most Recently Added (the 17-source batch 2026-04-08 round 3)

- **Cline cluster (3)**: v3.13 (Memory Bank), v4.0 (YOLO + Chrome), Readdy + Cline full-stack
- **Async cloud agents (2)**: Augment Remote Agent, GitHub Copilot Coding Agent
- **MCP cluster (3)**: Cole's MCP template, Context7, n8n + MCP community node
- **Cole's other (2)**: Local Supabase RAG, Crawl4AI v2
- **Google free push (2)**: NotebookLM + Gemma 4 Guide overview
- **General agents (1)**: DeepAgent (Abacus AI)
- **Local infra (4)**: Wolfgang SSL homelab, NetworkChuck Open WebUI domain+SSL, Bijan vLLM distributed, Docker Model Runner Mac demo

**Skipped (2)**: Claude 4 + Cline duplicate (only YouTube URL params differed); Windows Docker container (off-topic homelab tooling).

## Open Gaps

- **Long-standing primary sources**: Karpathy's gist, AI 2027, Dan Shapiro, StrongDM, METR study
- **Aggregate Intellect creator name** — carryover from previous batch
- **JSON-to-Video pricing model** — carryover
- **CodeLLM pricing tier verification** — carryover; now also applies to DeepAgent ChatLLM Teams pricing
- **Browserbase / Block / ByteDance / Abacus AI org pages** — Abacus added to the watch list

## Architectural Threads to Watch

- **MCP as universal interface layer**: build-your-own + curated production servers + n8n consumption + every coding agent supports it. The most cross-linked concept page.
- **Async cloud agents converging on the same shape**: GitHub issue → sandbox → plan → PR. [[jules]], [[augment-agent|Augment Remote]], Copilot Coding Agent. Differ on pricing, model, parallelism.
- **Self-hosted local AI stack has a recipe**: Cole's local-AI-packaged + Wolfgang/NetworkChuck SSL + Docker Model Runner Mac.
- **RAG-skepticism vs RAG-defense**: [[context7]] (curated works) + [[crawl4ai]] sit alongside [[context-augmented-generation|CAG]] + [[rag-vs-wiki]]. Macro: RAG works when curated, CAG works when bounded, LLM Wiki works for personal KB, raw web RAG remains brittle.
