---
type: log
created: 2026-04-06
updated: 2026-04-09
---

# Wiki Log

Rolling window of recent operations with interpretation. Capped at 10 entries per [`log-rules.md`](../.instructions/core/rules/log-rules.md). Older history is in `git log -- wiki/log.md`.

## [2026-04-09] ingest | Fireship — Gemma 4 as a licensing event

Single-source ingest. **Refresh-grade for [[gemma-4]] and [[turboquant]]**, plus a useful clarification for the TurboQuant page.

- **Source**: [[summary-fireship-gemma4-apache|Google just casually disrupted the open-source AI narrative]] (2026-04-08, ~5 min Code Report)
- **Pages created** (1): `wiki/sources/summary-fireship-gemma4-apache.md`
- **Pages updated** (3): [[gemma-4]] (new "Apache 2.0 as a strategic event" section reframing Gemma 4 as a licensing event, fuller PLE explanation, explicit TurboQuant ≠ Gemma 4 compression note), [[turboquant]] (prominent "TurboQuant is NOT what makes Gemma 4 small" clarification at the top), [[fireship]] (third source).

**Why it matters**: this is the first wiki source that frames Gemma 4 *as a licensing event* rather than a model release — every prior Gemma 4 source treated it as a benchmark/spec story. Fireship's "first FAANG to ship truly Apache 2.0" framing belongs in the org/strategy thread, not just the model page. Also corrects a likely misreading: the simultaneous Gemma 4 + TurboQuant release naturally suggests TurboQuant is the compression behind Gemma 4's footprint — Fireship explicitly says it isn't (PLE is). The TurboQuant page now leads with this clarification.

**Sponsor**: Code Rabbit (CLI agent code-review tool, ~30s segment). **Not added to the wiki** per the YouTube template's sponsorship rule.

**Notes**: 106 sources total. No memories added — the new framings are well-captured in the entity-page sections, and the wiki already has memories on Gemma 4 specs and TurboQuant. Lint reminder still pending from the Conway ingest.

## [2026-04-09] ingest | Conway leak + behavioral lock-in (Nate B Jones)

Single-source ingest. **Anchors a new entity ([[conway]]) and a new concept page ([[behavioral-lock-in]]).** User flagged this as **speculative** but specifically interested in Nate B Jones's conceptual framing — the wiki captures the conceptual framework as primary contribution, treats Conway's structural facts as primary-source-from-leak, and flags the trajectory predictions as one analyst's editorial.

- **Source**: [[summary-nate-b-jones-conway-leak|I Analyzed 512,000 Lines of Leaked Code]] (2026-04-08)
- **Pages created** (3): `wiki/sources/summary-nate-b-jones-conway-leak.md`, `wiki/tools/conway.md` (leaked, future-facing — structured like [[managed-agents]] with explicit "what to watch" section), `wiki/concepts/behavioral-lock-in.md`
- **Pages updated** (5): [[anthropic]] (Conway added; new "90-day platform play" section makes the surface-expansion thread explicit and load-bearing), [[nate-b-jones]] (3 new key ideas: behavioral lock-in, three eras, four-step playbook), [[managed-agents]] (Conway sibling section), [[openclaw]] (Steinberger→OpenAI→ban timeline as the playbook target), [[open-brain]] (reframed as the structural counter to behavioral lock-in), [[mcp]] (proprietary-layer-on-top risk section).

**Why this matters structurally**: this is the **second Anthropic future-facing-watch entity in two days** (Managed Agents 2026-04-09 morning, Conway 2026-04-09 afternoon). The "Anthropic surface expansion" thread is now load-bearing — Anthropic has three announced primary surfaces (Claude.ai, Claude Code, Managed Agents) plus a fourth in the leak (Conway), each targeting a distinct user. The [[anthropic]] page now hosts the canonical 7-step 90-day platform play. The [[behavioral-lock-in]] concept is the wiki's first concept page that's primarily *about a future risk* rather than describing a working pattern — it exists so the wiki has a place to file the next data point as Conway-class agents from OpenAI and Google land.

**Speculative-source handling**: per user flag, the wiki distinguishes three credibility tiers in the source summary and the Conway entity page: (1) factual structure of Conway from the leak = primary-source-from-leak, (2) the 90-day timeline = verifiable corporate history, (3) trajectory predictions ("OpenAI/Google will ship versions in months", "behavioral lock-in is the rest-of-2026 story") = Nate's editorial. All three are filed; only (1) and (2) are treated as ground truth.

**Notes**: 105 sources total. 6 memories added. **Lint reminder due** — log.md ingest count is now at 5-multiple per Phase 6 of ingest prompt.

## [2026-04-09] ingest | Anthropic Managed Agents launch (Nate Herk hands-on)

Single-source ingest. **Anchors a new entity, [[managed-agents]] — Anthropic's third primary surface alongside Claude.ai and Claude Code.** User flagged this with explicit interest as a *future-facing Anthropic feature to watch as it evolves and is announced* — the page is structured around the **roadmap** (Outcomes, Multi-Agent Orchestration, Persistent Memory) rather than the launch state.

- **Source**: [[summary-nate-herk-managed-agents|I Tested Claude's New Managed Agents]] (2026-04-08)
- **Pages created** (3): `wiki/sources/summary-nate-herk-managed-agents.md`, `wiki/tools/managed-agents.md`, `wiki/tools/trigger-dev.md` (stub for the trigger layer Nate prefers)
- **Pages updated** (4): [[anthropic]] (Managed Agents added to product list), [[nate-herk]], [[claude-code]] (CLI integration section + credential warning), [[openclaw]] (still wins on heartbeats + Telegram)

**Editorial verdict**: Managed Agents lowers the floor for non-developers but does not yet raise the ceiling for builders. The structural gap is the missing trigger primitive — no cron, no webhook, no heartbeat — which is the reason [[trigger-dev|trigger.dev]] now appears in the wiki for the first time. If the three private-preview features ship, Managed Agents becomes a credible hosted alternative to the [[slash-loop|/loop]] + [[open-brain|OpenBrain]] + MCP three-primitive stack — *minus* the trigger primitive.

**Notes**: 104 sources total. No new tasks (Browserbase/Block stub-tracking already covers the org-page pattern; this source doesn't add a new gap). 5 memories added.

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




