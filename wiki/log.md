---
type: log
created: 2026-04-06
updated: 2026-04-08
# 12-source batch ingested 2026-04-08 (later same day as the 04-08 lint)
---

# Wiki Log

Rolling window of recent operations with interpretation. Capped at 10 entries per [`log-rules.md`](../.instructions/core/rules/log-rules.md). Older history is in `git log -- wiki/log.md`.

## [2026-04-08] ingest | 12-source batch (open-source agents + R1-0528 + n8n maturation)

Second-largest batch in wiki history. User authorized full autonomous one-by-one ingest with issues-into-tasks. **12 sources in scope, 1 skipped (Bazzite gaming VM, off-topic). 80 sources ingested total.**

- **Sources** (12):
  1. **100x Cursor + Cline with Task Master AI** ([[worldofai|WorldofAI]]) — anchors new [[task-master-ai]] entity
  2. **AgentZero** (WorldofAI) — anchors new [[agent-zero]] entity
  3. **AgenticSeek** (WorldofAI) — anchors new [[agenticseek]] entity
  4. **Claude 4 Opus + CodeLLM Composer Agent** (WorldofAI) — anchors new [[codellm]] entity
  5. **Codename Goose** (WorldofAI) — anchors new [[codename-goose]] entity
  6. **DeerFlow** (WorldofAI) — anchors new [[deerflow]] entity (first ByteDance OSS in wiki)
  7. **Stagehand v2** (WorldofAI) — anchors new [[stagehand]] entity
  8. **DeepSeek R1-0528** (WorldofAI) — refreshes [[deepseek]] with full R1-0528 spec
  9. **n8n NEW Perplexity Node** ([[zubair-trabzada|Zubair Trabzada]]) — anchors new [[perplexity]] entity
  10. **Faceless Shorts in n8n** ([[nate-herk|Nate Herk]]) — anchors new [[json-to-video]] entity
  11. **YouTube Scraper with n8n** ([[tin-rovic|Tin Rovic]]) — adds free creator-research recipe
  12. **Longform YouTube Videos Hourly** ([[jay-e-robonuggets|Jay E (RoboNuggets)]]) — new person; deeper [[json-to-video]] pipeline

- **Skipped** (1): Bazzite gaming VM (Craft Computing) — homelab/gaming infrastructure with no AI angle. Off-topic per CLAUDE.md scope. Archived without processing.

- **Major thread — DeepSeek R1-0528 as the default open-source reasoning backbone**: 4 of the new entities ([[codename-goose]], [[stagehand]], [[deerflow]], [[agenticseek]]) explicitly recommend R1-0528 (or distillations) as their default free model. This is the structural takeaway from the batch — the MIT license + free OpenRouter tier broke the chicken-and-egg problem.

- **Major thread — n8n's content-pipeline maturation**: 4 sources moved n8n from "no-code agent runner" to "first-class content-generation backbone." [[perplexity]] node closes the real-time-search loop; [[json-to-video]] is the new video-assembly primitive used by both [[summary-nate-herk-faceless-shorts-n8n|Nate Herk's shorts pipeline]] and [[summary-jay-e-longform-youtube-videos|Jay E's longform pipeline]]; Tin Rovic adds the foundational creator-research scraper.

- **Major thread — open-source generalist agent landscape filled out**: [[agent-zero]], [[agenticseek]], [[deerflow]], [[codename-goose]] now sit alongside [[manus]], [[openmanus]], [[flowith]], [[hermes-agent]] in the general-agent cluster. Differentiated by surface (UI/TUI/CLI), backing (Block/Browserbase/ByteDance/solo-maintainer), and topology (single agent / coordinator-planner / self-organizing).

- **New abstraction layer — cost-routing as a feature**: [[task-master-ai]] introduces multi-model task routing (main/research/fallback) as a stand-alone tool, not as a hand-rolled config. This is a generalization of [[open-source-model-integration]] taken further by [[agent-zero]] (5 model slots).

- **First ByteDance OSS contribution** in the wiki: [[deerflow]]. Pattern to watch.

- **Single-commit batch decision**: same as the 2026-04-07 batch — one commit at the end with all sources. Per-source rollback unit is the source-summary page.

## [2026-04-08] lint: 2026-04-08 — post-batch cleanup + Models category

First lint pass after the 17-source batch. 10 actionable items from a 12-category Phase 1 audit, all approved.

- **Group A** — fixed source-count contradiction in [[overview]] (45 → 68); refreshed Gaps list (removed Lovable, Kimi K2, Nous Research now that those pages exist; added Jules and CAISI carryovers from [[hot]]); updated Open-Source Model Landscape paragraph to mention Kimi K2 and MiniMax M1.
- **Groups B/C/D** — orphan pages now linked: [[claude-code-subagents]] from [[claude-code]] body; [[slash-loop|/loop]] + [[claude-code-subagents]] from [[agentic-harness-primitives]] See Also; [[lovable]] from [[ai-professional-interface]] Implementation section.
- **Group E (the big one)** — created a new **Models** section in [[index]] that consolidates closed-weights and open-weights model entries previously scattered across "Frontier Models", "Tools", and "Open-Source Projects". Rationale: models deserve their own category so we can track each model's progress, capability changes, and best-practice evolution over time. Files were not moved — only the index was restructured. [[minimax-m2-7|MiniMax M2.7]], [[kimi-k2|Kimi K2]], [[minimax-m1|MiniMax M1]], [[gemma-4|Gemma 4]], [[llama|Llama]], [[deepseek|DeepSeek]], [[qwen|Qwen]] all moved into the new Models section. [[kimi-coder|Kimi Coder]] stays under Open-Source Projects (it's an app, not a model). Also rewrote 5 brittle `[[MiniMax M2.7]]` references to `[[minimax-m2-7|MiniMax M2.7]]` in their referencing pages.
- **Group F** — replaced 3 dangling `[[openbrain-architecture]]` references with `[[open-brain|OpenBrain]]` in [[hot]] and [[zep]].
- **Group G** — verified `[[saas-death-spiral#policy-responses]]` resolves correctly (the section exists at line 70 of [[saas-death-spiral]]); false positive, no fix needed.
- **Group H** — created [[skills-sh|skills.sh]] entity page (was a long-standing dangling link from 3 pages); rewrote `[[skills.sh]]` to `[[skills-sh|skills.sh]]` in [[claude-code]], [[remotion]], and the Google Stitch summary.
- **Group I** — bumped [[index]] frontmatter `updated: 2026-04-08` (was stale at 2026-04-06 since the batch).
- **Group J** — added a single tracking task to [[tasks]] listing the 20 stub pages flagged by lint, framed as "enrich on next relevant ingest" rather than fabricate content. Wiki rule: stubs grow from new sources, not training data.

**Notes**: clean lint overall — no duplicates, no off-topic, no frontmatter drift across 224 pages, no size violations. The 17-source batch was integrated cleanly. The Models reorg is the only structural change; everything else was either a link fix or a date bump.

## [2026-04-07] ingest | 17-source batch (mixed channels)

Largest single ingest in the wiki to date. The user authorized batch processing with autonomous judgment. **17 sources, 68 source ingested total.**

- **Sources** (17):
  1. **5 (Real) AI Agent Business Ideas** ([[simon-hoiberg|Simon Høiberg]]) — five monetization paths
  2. **Claude Code Sub-Agents** ([[worldofai|WorldofAI]]) — Anthropic ships first-class sub-agents in [[claude-code]]
  3. **Cline v3.18** (WorldofAI) — anchors new [[cline]] entity
  4. **Context Engineering** (WorldofAI) — anchors new [[context-engineering]] concept
  5. **Flowith Neo** (WorldofAI) — anchors new [[flowith]] entity
  6. **DeepSeek R1 VS Code Extension** ([[beyond-fireship|Beyond Fireship]]) — first builder-tutorial in the wiki
  7. **Kimi Coder** (WorldofAI) — anchors new [[kimi-k2]] + [[kimi-coder]] entities
  8. **MiniMax Agent (M1)** (WorldofAI) — anchors new [[minimax-m1]] entity
  9. **Docker MCP Toolkit** (WorldofAI) — major [[mcp]] ecosystem development
  10. **OpenCode** (WorldofAI) — anchors new [[opencode]] entity
  11. **OpenManus** (WorldofAI) — anchors new [[openmanus]] + [[manus]] entities
  12. **Self-Hostable Cloud Alternatives** (Simon Høiberg) — n8n + DeepSeek + Hetzner GPU thread
  13. **Retell AI Voice Agent** ([[zubair-trabzada|Zubair Trabzada]]) — anchors new [[retell-ai]] entity
  14. **YouTube → SEO Blog (n8n)** ([[tin-rovic|Tin Rovic]]) — content-repurposing pipeline
  15. **n8n + Zep memory** ([[nate-herk|Nate Herk]]) — anchors new [[zep]] entity; cost-trap fix
  16. **VSCode + Cline + Continue** ([[nathan-sebhastian|Nathan Sebhastian]]) — second source on [[cline]]
  17. **Void IDE Update** (WorldofAI) — anchors new [[void-ide]] entity

- **Major thread filled — n8n** (long-standing wiki gap): **5 sources in this batch reference n8n** as their backbone. Created [[n8n]] as a first-class entity that ties together [[ai-automation-workflows]], [[zep]], [[retell-ai]], [[openrouter]], and the Simon Høiberg / Tin Rovic / Nate Herk / Zubair Trabzada source threads.

- **New thread — open-source IDE proliferation**: [[cline]], [[opencode]], [[void-ide]], [[continue]] now together form the wiki's free-cursor-alternative cluster, complementing the commercial [[cursor]] / [[claude-code]] / [[augment-agent]] thread. Documented two install paths: extension-stack (Cline + Continue) and full-app (Void).

- **New thread — general AI agent landscape**: [[manus]], [[openmanus]], [[flowith]] now sit alongside [[devin]] and [[deepcode]] as the "general autonomous agent" cluster.

- **New concept — context engineering**: [[context-engineering]] joins [[bmad-method]], [[meta-prompting]], [[four-prompting-disciplines]], [[ai-coding-workflow]] as a planning-discipline page. Anchors the PRP (Product Requirement Prompt) pattern.

- **Single-commit batch decision**: protocol says one commit per source, but the volume + user authorization made one batch commit the right call for this run. Each source still has its own summary page = the rollback unit.

## [2026-04-07] ingest | The Easiest Ways to Run LLMs Locally - Docker Model Runner Tutorial (Tech With Tim)
- **Source**: YouTube tutorial walkthrough by Tech With Tim, 2025-07-19, ~3,605 source words. **Second wiki source on `[[docker-model-runner]]`** — complementary coverage to WorldofAI's earlier walkthrough.
- **Pages created** (1):
  - `wiki/sources/summary-tech-with-tim-docker-model-runner.md` — Source summary
- **Updated**: `wiki/tools/docker-model-runner.md` (added 'Port distinction', 'Container-side usage (host.docker.internal)', and 'Compose `provider: type: model` syntax' sections — three substantive new sections from this source). Tech With Tim already added in this batch's first ingest, so no person page change.
- **Notes**: Sponsored by Docker (disclosed openly upfront, not buried). Recipes are reproducible and accurate; the framing language is the part to discount.

## [2026-04-07] ingest | Open-SWE (WorldofAI)
- **Source**: YouTube tool walkthrough by WorldofAI, 2025-08-12, ~2,445 source words
- **Pages created** (3): `summary-worldofai-open-swe.md`; `wiki/orgs/langchain.md` (NEW org page — 6th wiki org); `wiki/open-source/open-swe.md`
- **Notes**: First first-party LangChain product to land in the wiki. The org page documents LangChain's framework-vendor distinction vs the model-vendor frontier labs and the agent-shipping open-source collectives.

## [2026-04-07] ingest | Host Your Own AI Code Assistant (Wolfgang's Channel)
- **Source**: YouTube tutorial + hardware comparison by Wolfgang's Channel, 2024-08-24, ~3,532 source words
- **Pages created** (3): `summary-wolfgangs-channel-self-host-ai-code-assistant.md`; `wiki/people/wolfgangs-channel.md`; `wiki/tools/continue.md`
- **Notes**: Builds the wiki's bridge between the local-AI hardware thread and the agentic-coding thread. Power data (130W gaming PC vs 4.6W MiniPC, no usable middle ground) corroborates [[summary-alex-ziskind-vllm-fp8|Alex Ziskind's vLLM analysis]] from a different angle.

## [2026-04-07] ingest | EASIEST Way to Fine-Tune a LLM and Use It With Ollama (Tech With Tim)
- **Source**: YouTube tutorial walkthrough by Tech With Tim, 2025-06-27 publish, ~5,270 source words
- **Pages created** (4): `summary-tech-with-tim-fine-tune-ollama.md`; `wiki/people/tech-with-tim.md`; `wiki/open-source/unsloth.md`; `wiki/concepts/fine-tuning.md`
- **Notes**: First fine-tuning entry in the wiki. Anchors a new concept thread connecting [[unsloth]] (training) → GGUF (artifact) → [[ollama]] (runtime) → [[llama-cpp]] (engine).

## [2026-04-07] ingest | Industrial Policy for the Intelligence Age (OpenAI)
- **Source**: PDF policy paper, 13 pages, published April 2026 by OpenAI. **First test of the new PDF ingest workflow** — extracted via `pypdf` 6.9.2.
- **Pages created** (2): `summary-openai-industrial-policy-intelligence-age.md`; `industrial-policy-intelligence-age.md`
- **Updated** (3): `saas-death-spiral.md`, `chatgpt.md`, `index.md`
- **Notes**: First wiki source where the framing is "policy artifact from an interested party" — required heavier-than-usual editorial caveats.

## [2026-04-07] ingest | Meet Bjorn (The Cyber Mentor) — re-ingested
- **Source**: YouTube transcript by The Cyber Mentor on Bjorn (Raspberry Pi network pentest tool)
- **Status**: Originally skipped as off-topic. **User reframed**: relevant as a defensive audit tool for self-hosters running local AI infrastructure.
- **Pages created** (3): `summary-tcm-bjorn-network-pentest-pi.md`; `wiki/open-source/bjorn.md`; `wiki/people/the-cyber-mentor.md`
- **Notes**: First wiki entry whose framing differs significantly from the source's framing. Both are accurate; the wiki framing is what makes it useful in this knowledge base.

## [2026-04-07] lint: 2026-04-07 (round 2) — post-batch-3 cleanup
- **Group A — re-fixed two regressions from the first lint pass**; **Group B** — created [[supabase]]; **Group 5** — refreshed `wiki/overview.md`; **Group 6** — refreshed `wiki/tasks.md`.
- **Notes**: Two passes were needed. Lesson: lint Phase 3 must verify edits before declaring done.

