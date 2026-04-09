---
type: log
created: 2026-04-06
updated: 2026-04-09
---

# Wiki Log

Rolling window of recent operations with interpretation. Capped at 10 entries per [`log-rules.md`](../.instructions/core/rules/log-rules.md). Older history is in `git log -- wiki/log.md`.

## [2026-04-09] lint: 2026-04-09 — post-7-ingest cleanup

Lint pass after 7 ingests since last lint (Managed Agents → Conway → Fireship Gemma 4 → Defensive pair, plus the surface-expansion structural changes). 4 fixes, all approved.

- **Size compliance**: hot.md 601 → ~330w (collapsed the verbose 5-attack-classes + 2-rules sections into a 2-line "defensive vocabulary" pointer to [[ai-personal-agent-hardening]]; trimmed Most Active Pages and Open Gaps); overview.md 1,765 → ~1,470w (compressed Anthropic Surface Expansion to a 1-paragraph pointer to the analysis page; tightened Defensive AI Security to 2 lines; compressed Agentic Coding Platform Proliferation to remove redundant inline detail). Both back under their caps.
- **Dangling link tracked, not fixed**: `[[claude-agent-sdk]]` — new dangling link from yesterday's Managed Agents ingest, referenced by [[summary-nate-herk-managed-agents]] and [[trigger-dev]]. Per the lint convention, dangling links signal "this page should exist eventually" — added a tracking task to [[tasks]] to create the page when a primary source lands.
- **Dangling link skipped**: `[[browser-use]]` in [[summary-stagehand-v2-browser-automation]] — intentional placeholder per the 04-08 round 3 lint, no change.
- **Log rotation**: this entry pushes log.md to the 10-entry cap; oldest entry (12-source batch 2026-04-08) dropped. Older entries remain in `git log -- wiki/log.md`.

**Notes**: cleanest lint result to date — 0 orphans, 0 frontmatter drift across 298 files, 12 active tasks (under the 15-cap), 10 log entries (at cap). Stub count unchanged (20; minimax-m1 borderline at 143w but stays on the list). The structural changes from yesterday (analysis pages, CLAUDE.md scope amendments, the new defensive cluster) integrated cleanly with no broken cross-references.

## [2026-04-09] ingest | Defensive security pair — Kali toolkit + Berman/Pliny hardening challenge

Two-source ingest, both defensive-framing. **Adds the wiki's first concept page on AI personal agent hardening as a discipline**, plus Kali Linux as the canonical network/infra audit toolkit. User explicit framing: *"I don't want to promote or enable hacking but these are critical things I want to capture for testing and hardening infrastructure and AI apps."*

- **Sources** (2):
  1. [[summary-fireship-10-illegal-tools|Fireship — 10 open source tools that feel illegal]] (2026-02-05) — Code Report on Kali Linux + 10 default pentest tools (Nmap, Wireshark, Metasploit, Aircrack-ng, Hashcat, Skipfish, Foremost, sqlmap, hping3, SET).
  2. [[summary-matthew-berman-i-was-hacked|Matthew Berman — I was hacked]] (2026-04-03) — Berman challenges Pliny the Liberator (Time 100 in AI; creator of Parseltongue) to break into his hardened OpenClaw in 5 attempts. **All 5 quarantined.** A 6th attempt with a hint also caught.

- **Pages created** (6):
  - `wiki/sources/summary-fireship-10-illegal-tools.md`
  - `wiki/open-source/kali-linux.md` — anchor entity; **all 10 tools captured as inline entries in a single structured table** with explicit defensive use-case framing per tool. Avoids 10 separate stub pages per the "stubs grow from sources, not training data" rule.
  - `wiki/sources/summary-matthew-berman-i-was-hacked.md`
  - `wiki/people/pliny-the-liberator.md` — Time 100 in AI; the wiki's first AI red-teamer person page
  - `wiki/open-source/parseltongue.md` — Pliny's open-source AI red-team toolkit (stub; defensive framing)
  - `wiki/concepts/ai-personal-agent-hardening.md` — **load-bearing**. Captures the five named attack classes Pliny demonstrated (tokenade, siege/wallet-drain, format-override jailbreak, faked-system-command injection, free-association exfiltration) with the defensive response per class, plus the two rules (human-in-loop mandatory; best model as frontier scanner) and a 13-item canonical hardening checklist.

- **Pages updated** (3): [[matthew-berman]], [[fireship]], [[openclaw]] (new "Hardening case study" section pointing to the new concept page — first concrete data point on the security concerns the existing OpenClaw page already flagged).

- **Defensive framing applied throughout**: every tool on the Kali page has a "what to use it for on your own infrastructure" framing alongside the descriptive content. The hardening concept page names attacks so defenders know what to look for but does not host walkthroughs, payloads, or instructions. Pliny is treated as a primary threat-model source (same way the wiki treats Karpathy or Nate B Jones as primary architectural sources) — his coverage is editorial-record, not promotion.

- **Why this matters structurally**: this ingest closes a long-standing gap. Before today, the wiki's defensive coverage was a single bullet on [[openclaw]] (*"security researchers have called OpenClaw a nightmare"*) and [[bjorn]] as a one-off network audit entry. The wiki now has **two anchor pages** covering both sides: [[kali-linux]] for network/infra hardening and [[ai-personal-agent-hardening]] for the AI-app-side hardening. The five attack classes get named with consistent vocabulary so future ingests can build on them. **Connects directly to [[anthropic-surface-expansion]] / [[behavioral-lock-in]]**: rule 1 (human-in-loop) is the load-bearing constraint on the Conway / Era 3 always-on agent vision — *"a truly autonomous always-on agent without a human-in-loop quarantine is not hardenable today."*

- **CLAUDE.md scope amended**: existing scope only covered *"defensive network security for self-hosted AI rigs"* (network/infra side). Added an explicit clause for AI agent hardening / prompt injection defense so future sources on this thread land in scope unambiguously.

- **Sponsors** (both not added per template rule): Hostinger (Fireship video), Greptile (Berman video).

- **Notes**: 108 sources total. 6 memories added. **Lint reminder is overdue** — the log ingest count crossed the 5-multiple two ingests ago (Conway) and is now at 7 unprocessed since the last lint. Recommend running the lint prompt soon.

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






