---
type: log
created: 2026-04-06
updated: 2026-04-09
---

# Wiki Log

Rolling window of recent operations with interpretation. Capped at 10 entries per [`log-rules.md`](../.instructions/core/rules/log-rules.md). Older history is in `git log -- wiki/log.md`.

## [2026-04-09] lint: 2026-04-09 — pre-publish cleanup

Quick pre-publish lint pass after committing the new methodology files (log-rules, overview-rules, lint size-compliance step). 4 fixes, all approved.

- **Dangling link**: `[[page-conventions]]` in [[tasks]] → relative markdown link to the rules file (the only true dangling link; `[[browser-use]]` in stagehand summary stays as intentional placeholder per round 3).
- **Overview drift**: source count 102 → 103 (Journey Kits one-off was missed in the post-batch overview refresh).
- **Stub-tracking task**: count 20 → 19; removed [[kimi-coder]] (no longer a stub), added [[flowith]] (still <150w). Lint date stamp bumped to 2026-04-09.
- **Log rotation**: this entry pushes the log to the 10-entry cap; oldest entry (Open-SWE 2026-04-07) dropped per [log-rules](../.instructions/core/rules/log-rules.md).

**Notes**: zero orphans, zero frontmatter drift, all four state files within their caps (overview at 1,486/1,500, hot at 451/500, log at 10/10, tasks at 11/15). Cleanest lint pass to date — yesterday's three rounds did the heavy lifting.

## [2026-04-08] ingest | Journey Kits launch (Matthew Berman)

Single-source ingest. **Anchors a new entity, [[journey-kits]] — the wiki's first dedicated agent-workflow packaging format.** User flagged this with explicit interest: *"something I want to try out and take apart to understand the packaging and if I can use or borrow any concepts from it."*

- **Source**: [[summary-matthew-berman-journey-kits|I Built Something — Matthew Berman]] (2026-04-04)
- **Pages created** (2): `wiki/sources/summary-matthew-berman-journey-kits.md`, `wiki/tools/journey-kits.md`
- **Pages updated** (1): [[matthew-berman]]

The entity page is structured around the user's stated interest — a "What's borrowable" section breaks the format into 7 specific concepts (kit.md as single-file workflow spec, "failures overcome" as first-class field, credentials-by-pointer, learnings-flow-back, host adaptation as kit responsibility, agent-prompted upgrades, publisher reputation scoring).

**Where Journey sits**: user-facing implementation of [[agentic-harness-primitives]] (registry / type system / tool pool assembly), broader-scope sibling of [[skills-sh]] (Journey ships everything around the skill, host-agnostic), complementary to [[mcp]] (packaging layer vs protocol layer).

**Tasks added (1)**: dissect Journey kit format for concepts borrowable for the wiki's own page-conventions methodology.

**Notes**: Single-source coverage. Treat capability claims as marketing position until a third-party walkthrough lands. No formal spec for the kit format published at recording — long-term kit portability depends on whether Berman publishes one.

## [2026-04-08] lint: 2026-04-08 (round 3) — post-17-source-batch cleanup

Third lint pass of the day, after the 5-source and 17-source batches. 7 fixes, all approved.

- **Group A — dangling wikilink fixes (2 of 3)**: `[[pgvector]]` → plain text in [[summary-cole-medin-local-supabase-rag]] (pgvector is a Postgres extension, not an entity); `[[page-conventions]]` → relative markdown link in [[summary-dify-knowledge-base-rag-configuration]] (it's a rules file, not a wiki page). **Skipped A1**: `[[browser-use]]` in stagehand summary stays as an intentional dangling placeholder.
- **Group B — `sources:` frontmatter on 04-07 batch stragglers (5)**: round 2 fixed 20 of 25 such pages but missed [[flowith]], [[manus]], [[n8n]], [[retell-ai]], [[zep]]. All five now point to their actual anchoring source filenames. n8n's sources field is the largest in the wiki (12 sources) — reflects its role as the convergence point for the AI-automation thread.

**Notes**: shorter than rounds 1 and 2. The 5-source and 17-source batches that landed after the morning lints had cleaner frontmatter discipline. Stub count unchanged (20, all tracked). No regressions detected in the 7 new entity pages from today's ingests.

## [2026-04-08] ingest | 17-source batch (Cline updates, MCP maturity, local AI infra, async cloud agents)

Fourth batch in two days. **17 sources in scope, 2 skipped (1 duplicate, 1 off-topic). 102 sources ingested total.**

- **Cline cluster (3)**: [[summary-worldofai-cline-v313-memory-bank|v3.13 Memory Bank]], [[summary-worldofai-cline-v4-yolo-mode|v4.0 YOLO Mode + Chrome]], [[summary-worldofai-readdy-cline-fullstack|Readdy + Cline full-stack]]. Anchors new entity [[readdy]]. Cline release timeline now spans v3.13 → v4.0 → v3.18 with YOLO Mode + Chrome integration as the headline.
- **Async cloud agents (2)**: [[summary-worldofai-augment-code-remote-agent|Augment Code Remote Agent]] (cloud, **10 parallel agents** per session — highest single-user concurrency in the cluster); [[summary-worldofai-github-copilot-coding-agent|GitHub Copilot Coding Agent]] (Pro Plus $39/mo, in-GitHub autonomous, MCP-extensible). Both update existing entity pages.
- **MCP cluster (3)**: [[summary-cole-medin-mcp-server-template|Cole Medin's MCP build template]] (FastMCP + lifespan + Mem0 reference); [[summary-cole-medin-context7-mcp|Context7]] (anchors new entity [[context7]] — 1,856+ curated framework docs as MCP server); [[summary-worldofai-n8n-mcp-local-ai|n8n + MCP via community node]] (escape hatch for any MCP server inside n8n). [[mcp]] is now the wiki's deepest single-concept coverage.
- **Cole Medin's other (2)**: [[summary-cole-medin-local-supabase-rag|Local Supabase 100% RAG]] (full self-hosted local-AI-packaged stack with PGVector); [[summary-cole-medin-crawl4ai-v2|Crawl4AI v2]] (anchors new entity [[crawl4ai]] — three crawl strategies, auto-detection). Cole Medin is now the wiki's most-cited single creator.
- **Google free push (2)**: [[summary-worldofai-notebooklm-gemini25|NotebookLM + Gemini 2.5]] (anchors new entity [[notebooklm]] — third Google free-Gemini product alongside Jules + Stitch); [[summary-gemma4guide-overview|Gemma 4 Guide overview]] (companion to existing VRAM article).
- **General agents (1)**: [[summary-worldofai-deepagent|DeepAgent (Abacus AI)]] (anchors new entity [[deepagent]] — Abacus's general-agent sibling to CodeLLM, bundled at $10/mo).
- **Self-hosted infra (4)**: [[summary-wolfgangs-channel-local-ssl-homelab|Wolfgang local SSL]] + [[summary-networkchuck-open-webui-domain-ssl|NetworkChuck Open WebUI domain+SSL]] (anchors new person [[networkchuck]]) — together the canonical "expose your local AI dashboard properly" recipe; [[summary-bijan-bowen-vllm-distributed-inference|Bijan Bowen multi-node vLLM]] (anchors new person [[bijan-bowen]] — Ray cluster, tensor + pipeline parallelism); [[summary-docker-model-runner-mac-playground|Docker official Mac Model Runner demo]] (first first-party Docker source, `model-runner.docker.internal` hostname).

- **Skipped (2)**: Claude 4 + Cline duplicate (only YouTube URL playlist params differed from previously-archived source); Windows Docker container (off-topic — pure homelab/Windows tooling, no AI angle).

- **Major thread — MCP maturity spike**: build-your-own template + curated production server + n8n consumption + every coding agent supports it. MCP is now the universal interface layer.
- **Major thread — async cloud agents converging**: assign GitHub issue → sandbox → plan → PR. Jules, Augment Remote, Copilot Coding Agent all do this; differences are pricing, model, parallelism count.
- **Major thread — self-hosted local AI stack has a full recipe**: Cole's local-AI-packaged + Wolfgang/NetworkChuck SSL + Docker Model Runner Mac + Bijan multi-node vLLM = full path from "try local AI" to "household uses it on phones."
- **Major thread — RAG-skepticism vs RAG-defense in tension**: Context7 + Crawl4AI sit alongside CAG + RAG-vs-Wiki. Synthesis: RAG works when curated, raw web RAG remains brittle.

- **5 memories** added.

## [2026-04-08] ingest | 5-source batch (Google I/O launches + CAG + Dify)

Third batch of the day; user split it from the larger queue. **5 sources, all in scope, none skipped. 85 sources ingested total.**

- **Sources** (5):
  1. **Claude 4 Sonnet & Opus + Cline** ([[worldofai|WorldofAI]]) — refreshes [[claude]] with Claude 4 pricing ($15/$75 Opus, $3/$15 Sonnet) and the **~$2.60 SaaS-landing-page cost** data point; refreshes [[cline]] with Requesty/Kilo free-API workarounds.
  2. **Don't Do RAG — CAG** ([[ai-jason|AI Jason]] — new person) — anchors new concept [[context-augmented-generation]]; updates [[rag-vs-wiki]] with CAG as a third approach.
  3. **Google Jules** (WorldofAI) — anchors new entity [[jules]]; first-party Google async coding agent on Gemini 2.5 Pro; closes the long-standing Jules gap that [[open-swe]] was tracked against.
  4. **Google Stitch I/O 2025 launch** (WorldofAI) — second source on existing [[google-stitch]]; adds two-mode pricing (350 Flash / 50 Pro per month), Figma/HTML export options, Airbnb-clone demo.
  5. **Dify Knowledge Base configuration** (LLMs Explained / Aggregate Intellect — channel-attributed) — anchors new entity [[dify]].

- **Major thread — Google's coordinated I/O 2025 free push**: Jules + Stitch in the same week, both Gemini-powered, both targeting paid incumbents (Codex/Copilot, v0.dev/Figma). Jules at 5 tasks/day free, Stitch at 350+50 generations/month free. The aggressive zero-pricing is the [[saas-death-spiral]] thread's strongest near-term move.

- **Major thread — RAG-skepticism gets a third entry**: [[context-augmented-generation|CAG]] joins [[rag-vs-wiki|RAG vs Wiki]] (curated wiki) and [[summary-cole-medin-rag-for-code|"RAG is dead for code"]] (agentic search). Each proposes a different replacement for semantic retrieval. The [[rag-vs-wiki]] page now hosts the three-way comparison.

- **Person page judgment call**: the Dify source channel ("LLMs Explained / Aggregate Intellect / AI.SCIENCE") doesn't name an individual creator. Per page-conventions ("never create stub person pages with unknown channel info"), no person page was created — flagged in tasks.md as a follow-up.

- **5 memories** added to `raw/memories/`.

## [2026-04-08] lint: 2026-04-08 (round 2) — post-12-source-batch cleanup

Second lint pass of the day, after the 12-source ingest batch. 3 actionable groups, all approved.

- **Group A** — 4 dangling link fixes: `[[MCP]]` → `[[mcp|MCP]]` in [[google-stitch]]; `[[minimax-m27]]` → `[[minimax-m2-7]]` in [[minimax-m1]] and [[summary-worldofai-minimax-m1-agent]]; `[[openbrain-architecture]]` → `[[open-brain|OpenBrain]]` in [[summary-nate-herk-zep-memory]] (regression from morning lint missed this file); malformed `[[orgs/]]` placeholder in [[tasks]] converted to plain text.
- **Group B-correct** — populated `sources:` frontmatter on 20 entity/concept/people pages from the 04-07 batch that were missing it. Each page now points to its actual anchoring raw filename(s) (most one source, several with two — cline, simon-hoiberg, tin-rovic, zubair-trabzada). Audit's count of 25 was an overcount; actual is 20.
- **Group C** — trimmed [[overview]] from 1,517 → 1,362 words (was 17 over the 1,500 cap). Compressed the Open-Source Model Landscape paragraph; deferred the full open-weights catalog to the index Models section (added in the morning lint).

**Group G carryover (false positives)**: the audit re-flagged `[[saas-death-spiral#policy-responses]]` and the `[[benchmarks/index]]` / `[[benchmarks/methodology]]` / `[[benchmarks/rigs/...]]` nested-path links. Both are valid in Obsidian and Quartz; same false positives as the morning lint. No action.

**Notes**: The 04-07 missing-frontmatter cluster is the kind of thing the ingest prompt should catch at write time. Lesson for next batch: source-summary writes should auto-populate the entity-page `sources:` field (not just write the entity body and skip frontmatter). Tracking informally for now; will surface as a tasks.md item if it recurs.

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

