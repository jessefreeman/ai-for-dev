---
type: log
created: 2026-04-06
updated: 2026-04-10
---

# Wiki Log

Rolling window of recent operations with interpretation. Capped at 10 entries per [`log-rules.md`](../.instructions/core/rules/log-rules.md). Older history is in `git log -- wiki/log.md`.

## [2026-04-10] ingest | Advisor Strategy (Nate Herk)

Single-source ingest. **Adds the wiki's 6th LLM design pattern ([[llm-design-patterns#pattern-6-advisor-strategy|Advisor Strategy]]) and documents `/model opus-plan` in Claude Code for the first time.**

- **Source**: [[summary-nate-herk-advisor-strategy|Claude Just Told Us to Stop Using Their Best Model]] (2026-04-09, [[nate-herk|Nate Herk]] / YouTube) — walkthrough of Anthropic's beta Messages API Advisor Strategy feature + Claude Code `/model opus-plan` + cost/quality dashboard demo.

### Pages created (1)

- `wiki/sources/summary-nate-herk-advisor-strategy.md`

### Pages updated (4)

- [[llm-design-patterns]] — **Pattern 6: Advisor Strategy** added. The first pattern on this page that's orthogonal to the topology ladder (Patterns 1–5) — it's about *which model* handles each step, not *how many sessions/agents*. Includes Anthropic benchmark data, the non-deterministic escalation caveat, and both implementations (Messages API + Claude Code `/model opus-plan`).
- [[claude-code]] — new "Advisor Strategy in Claude Code" section documenting `/model opus-plan` (hidden model selector: Opus for plan mode, Sonnet for execution). Added to CLI flags table. Third new CLI primitive captured in 2 days (after `claude -w` and `claude -p` from the Simon Scrapes ingest).
- [[claude]] — new "Advisor Strategy (Messages API, beta)" section with API parameters (`type: advisor_2026_03_01`, `name: advisor`, `max_uses`), the updated per-million token pricing table (Opus $5/$25, Sonnet $3/$15, Haiku $1/$5), and Anthropic evaluation benchmarks.
- [[nate-herk]] — 9th source; new key idea on the advisor strategy.

### Why this matters structurally

This is the **first cost-optimization pattern** on the design-patterns page. Patterns 1–5 are about *workflow topology* (how many sessions, who orchestrates); Pattern 6 is about *model selection per step*. It's orthogonal — you can layer the advisor strategy on top of any topology. The wiki now has three distinct cost-optimization threads: (1) model swapping via environment variables ([[open-source-model-integration]]), (2) Ultra Plan for planning efficiency ([[claude-code#ultra-plan]]), and (3) the advisor strategy for per-step model routing. Each targets a different layer of the cost stack.

### Notes

- 115 sources total. No images to localize (YouTube transcript).
- The Messages API Advisor Strategy is in **beta** — the `advisor_2026_03_01` type string includes a date stamp suggesting versioning. Worth re-checking when it exits beta.
- The "monitor tool" is name-dropped in the video as a new Anthropic feature announced on X during recording. No detail captured — watch for a primary source.

## [2026-04-10] ingest | 3-source batch — SearXNG, OpenClaw trading methodology, Archon pivot to workflow engine

Three-source batch ingest. **Two new entities ([[searxng]], [[bart-slodyczka]]) and one major entity rewrite ([[archon-os]]).**

- **Sources** (3):
  1. [[summary-bart-slodyczka-gemma4-searxng-openclaw|Gemma 4 + SearXNG = 100% FREE & PRIVATE OpenClaw]] (2026-04-06, Bart Slodyczka / YouTube) — full local+free OpenClaw setup with Gemma 4 via Ollama + SearXNG for private web search.
  2. [[summary-cole-medin-openclaw-trading|I Gave OpenClaw $10,000 to Trade Stocks]] (2026-04-09, Cole Medin / YouTube) — 30-day real-money AI trading experiment; sub-agent wealth adviser team; both bots beat the S&P 500 (−8.5%) with Nate at −0.2% and Samin at −3.8%.
  3. [[summary-archon-readme|Archon README]] (GitHub, Cole Medin) — documents Archon's complete pivot from AI OS (knowledge + task backbone via MCP) to **workflow engine for AI coding agents** (YAML DAG workflows, git worktree isolation, 17 default workflows, multi-platform adapters).

### Pages created (5)

- `wiki/sources/summary-bart-slodyczka-gemma4-searxng-openclaw.md`
- `wiki/open-source/searxng.md` — **new entity**: self-hosted meta-search engine; the wiki's first self-hosted web search entry; added to [[self-hostable-alternatives]] map.
- `wiki/people/bart-slodyczka.md` (author stub)
- `wiki/sources/summary-cole-medin-openclaw-trading.md`
- `wiki/sources/summary-archon-readme.md`

### Pages updated (8)

- [[openclaw]] — new "Running 100% locally and free" section (Ollama native integration + SearXNG) + "AI trading experiment — methodology" section (full cron-driven autonomous trading pattern with Alpaca, sub-agent teams, adaptive strategy, inter-agent communication, results)
- [[gemma-4]] — new "Tool-calling on OpenClaw (E4B field report)" section (Bart's hands-on with E4B + 26B daily driver)
- [[ollama]] — expanded Cloud Tier section ($20/mo, specific models) + new "Native OpenClaw Integration" section
- [[self-hostable-alternatives]] — new SearXNG row (web search)
- [[archon-os]] — **major rewrite** reflecting the pivot from AI OS to workflow engine. New sections: YAML DAG workflows, git worktree isolation, 17 default workflows table, multi-platform adapters, Web UI, architecture diagram, three-era lineage (agent builder → AI OS → workflow engine).
- [[cole-medin]] — two new sources in Content in This Wiki; updated Archon key idea to reflect the pivot.
- [[llm-design-patterns]] — Ralph loop and PIV loop now have first-class Archon implementations (`archon-ralph-dag`, `archon-piv-loop`).
- [[ai-coding-workflow]] — new "Evolution: Archon as the YAML-packaged version" section; Archon added to Compared to Other Workflows.

### Why this matters structurally

1. **SearXNG closes the "free web search" gap** — until today, every agent web search path in the wiki required a paid API. SearXNG + Ollama + OpenClaw = the wiki's first fully free, fully private agent stack.
2. **The trading experiment captures a methodology** — the user flagged this for the autonomous execution pattern (cron jobs, sub-agent teams, adaptive strategy), not the financial results. The pattern is now captured on [[openclaw]] for future experimentation.
3. **Archon's pivot is load-bearing** — the existing [[archon-os]] page was describing a product that no longer exists. The rewrite reflects the current state: a workflow engine that's the YAML-packaged evolution of Cole's PLANNING.md/TASK.md pattern. The Ralph loop — previously just "name-checked but not yet ingested" on [[llm-design-patterns]] — now has a concrete implementation.

### Notes

- 114 sources total.
- No images to localize (YouTube transcripts + GitHub README).
- The trading source was kept despite being entertainment-first because the user explicitly wanted the methodology extracted for future experimentation.

## [2026-04-09] ingest | Dubibubii Claude skills 33-plugin walkthrough — anchors agent-plugins index

Single-source ingest. **Anchors a new long-running concept thread the user explicitly asked for: [[agent-plugins]] — the canonical wiki index for anything you have to install to extend an AI coding agent.** User framing: *"I'd like to start keeping a record of plugins and flag ones I should use in tasks to catch my attention when people [mention] them."* After a design back-and-forth, settled on a single index page (rows + platforms + status) where every plugin gets its own dedicated downstream page so the user can flesh them out with hands-on notes when they actually run them.

- **Source**: [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08, [[dubibubii|Dubibubii]] / YouTube)

### Pages created (30)

- `wiki/sources/summary-dubibubii-claude-skills-2026.md`
- `wiki/people/dubibubii.md` (author stub)
- `wiki/concepts/agent-plugins.md` — **load-bearing thread anchor**, structured for growth (rows + platforms + status flags + extension rules in the page footer). Sibling concept page to [[llm-design-patterns]] (design patterns are *how* to think; plugins are *what* to install).
- 26 new plugin pages in `wiki/open-source/`: [[frontend-design-skill]], [[autoresearch]], [[playwright-mcp]], [[tavily]], [[codebase-memory-mcp]], [[pdf-processing-skill]], [[xlsx-skill]], [[pptx-skill]], [[doc-co-authoring-skill]], [[canvas-design-skill]], [[web-artifacts-builder-skill]], [[marketing-skills-pack]], [[claude-seo-skill]], [[brand-guidelines-skill]], [[deep-research-skill]], [[gpt-researcher]], [[obsidian-skills-pack]], [[context-optimization-skill]], [[promptfoo]], [[skill-creator-skill]], [[firecrawl]], [[langflow]], [[claude-squad]], [[container-use]], [[ghost-os]], [[awesome-claude-skills]]

### Pages updated (10)

- [[superpowers]] — 100K+ stars confirmed; Anthropic marketplace acceptance Jan 2026; "deletes code written before tests" detail; second source added
- [[context7]] — adoption signal (50K stars / 240K weekly NPM); "#1 MCP server" framing; second source added
- [[gstack]] — TechCrunch coverage + viral "god mode" CTO quote; star-count discrepancy noted (40K per Dubibubii vs 50K per Berman — kept both)
- [[task-master-ai]] — 36 MCP tools detail; second source added
- [[n8n]], [[remotion]] — adoption-signal cross-links to plugins index
- [[andrej-karpathy]] — autoresearch 50K-stars-in-a-week growth signal added to AutoResearch key idea
- [[ai-personal-agent-hardening]] — promptfoo + container-use added as defensive plugin entries (load-bearing: this is the first install-grade tooling for the human-in-loop quarantine rule)
- [[multi-agent-orchestration]] — claude-squad added as user-facing parallel-session primitive
- [[mcp]] / [[claude-code]] — cross-links to the new plugins index

### Why this matters structurally

This is the **first concept page in the wiki built around an installable category instead of a pattern, product, or thread**. Until today, the wiki tracked plugins one source at a time as they appeared in primary sources ([[context7]] from Cole Medin, [[superpowers]] from Berman, [[gstack]] from Berman, [[task-master-ai]] from WorldofAI, [[n8n]] across 12 sources, [[remotion]] from Nate B Jones). The Dubibubii source surfaces ~26 new entries at once, which is dense enough to deserve a dedicated index. The user explicitly requested:

1. A single index page (not a per-plugin proliferation)
2. Each plugin still gets its own dedicated downstream page (so hands-on notes have somewhere to land)
3. A status flag system (`tracked` / `try` / `tried` / `recommended` / `skip`)
4. A single tasks.md nudge ("review agent plugins") rather than per-plugin tasks
5. A broad name (`agent-plugins`, not `claude-skills`) so the index ages well across vendors

The page was built with extensibility-first conventions: explicit "how to extend this page" footer covering new entries, status changes, deprecation, and the per-plugin promotion rule (every new plugin gets a page even when thin — pages exist as containers for hands-on notes, not as derived-from-source content).

### Defensive cluster (load-bearing connection)

Two of the 26 new plugins land directly in the [[ai-personal-agent-hardening]] cluster:
- [[promptfoo]] = the wiki's first **prompt-level red-teaming tool** for testing your own LLM apps before they ship
- [[container-use]] = the wiki's first **install-grade implementation of the human-in-loop quarantine rule** (Dagger / Solomon Hykes / Docker creator pedigree)

Together they span the full defensive stack: promptfoo tests the prompts before the agent ships, container-use contains the agent after it ships. Both are referenced from the hardening concept page now, and the hardening discipline gains its first concrete tooling answers.

### Notes

- 111 sources total. **Lint reminder: log entry count crosses 5-multiple from this ingest.** Recommend running the lint prompt next session.
- Source has no inline images (one YouTube embed link only); image-localization step was a no-op.
- 8 task-shortlist plugins (frontend-design, superpowers, promptfoo, Context7, container-use, claude-squad, autoresearch, skill-creator) replaced by **a single "review agent plugins" task** per user request. Status flags on the index drive the nudge.
- One known content discrepancy: GStack star count is 50K (Berman, March 2026) vs 40K (Dubibubii, April 2026). Kept both as-recorded; could be measurement noise or a star-count correction.
- Two skills-sh pages exist (`wiki/open-source/skills-sh.md` + `wiki/tools/skills-sh.md`) — pre-existing duplicate from before this ingest. Flagged for the next lint pass.
- One verification flag carried into [[obsidian-skills-pack]]: source attributes the pack to "Kepano, the creator of Obsidian." Treat as source claim, verify against repo before treating as Obsidian-official.

## [2026-04-09] ingest | AIMock + new image-localization rule (CopilotKit launch post)

Single-source ingest. **Triggers a structural methodology change** — the user instructed *"download the images locally and fix the md file so we keep a local snapshot of it if the post goes down. This should be a rule, we want everything locally to not break images and include them as you breakdown the content where it makes sense."*

- **Source**: [[summary-anmol-aimock-launch|AIMock: One Mock Server For Your Entire AI Stack]] (2026-04-08, dev.to / CopilotKit blog by [[anmol-baranwal|Anmol Baranwal]])

### Methodology change (rule codification)

- **New rule** in [page-conventions § Images and assets](../.instructions/core/rules/page-conventions.md#images-and-assets-local-snapshots-are-mandatory): every image referenced from a raw source must be downloaded to `raw/assets/<source-slug>/`, the raw markdown must be rewritten to use local relative paths, and source-summary pages must embed images inline where they materially break down the content. Includes naming conventions (descriptive slugs, not opaque hashes), the third-party-promo-skip rule, and the orphan asset cleanup rule for lint.
- **Ingest prompt updated** in [`.instructions/core/prompts/ingest.md`](../.instructions/core/prompts/ingest.md) Phase 2: a new step 0 mandates image localization *before* writing the source summary on any source with remote images.
- **Applied to this ingest**: 13 product images downloaded to `raw/assets/anmol-aimock-launch/` (~28 MB total), raw markdown rewritten to local paths, Notion MCP Challenge promo banner stripped per the third-party-ad-skip rule.

### Pages

- **Created** (6): `wiki/sources/summary-anmol-aimock-launch.md` (with 13 inline images), `wiki/open-source/aimock.md` (load-bearing — first wiki entry for "deterministic CI for the agentic stack"), `wiki/orgs/copilotkit.md` (vendor stub), `wiki/open-source/ag-ui.md` (open protocol stub — agent↔frontend), `wiki/open-source/a2a-protocol.md` (open protocol stub — agent↔agent), `wiki/people/anmol-baranwal.md` (author stub)
- **Updated** (2): [[saas-death-spiral]] (new "enabling-infrastructure thread" subsection on the shadow-factory open question, listing AIMock, trigger.dev, Supabase, MCP, A2A, AG-UI as the infrastructure primitives that make 3-person agentic teams economically viable), [[tasks]] (new task to find the specific Nate B Jones video that referenced a shadow-factory company mocking all API endpoints)

### Why this matters structurally

This is the wiki's first ingest of a piece of **enabling infrastructure for the shadow-factory operating model**. The user has tracked shadow-factory as a personal business vision via [[saas-death-spiral]] open questions and the [[attractor]] StrongDM 3-person factory entry, but until now the wiki had no concrete tooling story for how a 3-person team survives CI flakiness across a 6-service agentic request path. AIMock fills that gap on the testing side; the analysis page now hosts a list of sibling primitives ([[trigger-dev]] for triggers, [[supabase]] for memory backend, [[mcp]] for tool wire, [[a2a-protocol]] for agent wire, [[ag-ui]] for frontend wire) that together form the wiki's first coherent "infrastructure stack a 3-person agentic team can rely on" reference.

Three new open protocols enter the wiki via this single source: [[a2a-protocol|A2A]] (agent↔agent), [[ag-ui|AG-UI]] (agent↔frontend), joining [[mcp|MCP]] (agent↔tools) as the connective layer of the 2026 agentic stack. The wiki should track adoption of all three as separate threads going forward.

### Notes

- 110 sources total. 4 memories added.
- **Image-localization rule applies to all future ingests** — the rule is now in `.instructions/core/rules/page-conventions.md` and the ingest prompt step 0.
- Lint should grow an orphan-asset-folder check to catch `raw/assets/<slug>/` directories without a corresponding source-summary page. Tracked informally for the next lint pass.
- The author / vendor relationship is disclosed: this is a **first-party CopilotKit launch post**. Comparison-table claims treated as marketing position; technical features treated as descriptive (verifiable from the public repo).

## [2026-04-09] ingest | LLM Design Patterns thread anchor (Simon Scrapes — Claude Code workflows)

Single-source ingest. **Anchors a new long-running concept thread the user explicitly flagged as a core pillar to flesh out over time: [[llm-design-patterns]] — the canonical wiki library of named patterns for working with LLMs and agents.** First entries are the 5 Claude Code workflow patterns from Simon Scrapes; the page is structured for growth with explicit "how to extend this page" rules so future ingests slot in cleanly without fragmenting.

- **Source**: [[summary-simon-scrapes-claude-code-workflows|Every Claude Code Workflow Explained (& When to Use Each)]] (2026-04-07)
- **Pages created** (3): `wiki/sources/summary-simon-scrapes-claude-code-workflows.md`, `wiki/concepts/llm-design-patterns.md` (the load-bearing thread anchor — sibling framework page to [[agentic-harness-primitives]] and [[four-prompting-disciplines]]), `wiki/people/simon-scrapes.md` (stub)
- **Pages updated** (3): [[claude-code]] (new "Workflow patterns" section with the 5-pattern ladder + new "CLI flags" subsection documenting `claude -w` and `claude -p` for the first time + Agent Teams research preview detail with the env var + the 3 always-on built-in sub-agents documented), [[claude-code-subagents]] (added 10 concurrent limit, the 3 always-on built-in sub-agents detail, the builder-validator chain pattern), [[multi-agent-orchestration]] (cross-link to the new design-patterns page)

**Why this matters structurally**: this is the wiki's first concept page primarily about *patterns / techniques* rather than products, organizations, or threats. It joins [[agentic-harness-primitives]] and [[four-prompting-disciplines]] as the third "framework" page in the wiki's concept tier. The user flagged it as *"a core pillar — LLM Design Patterns which I want to flesh out over time"*, so the page is built for extensibility: every entry has a consistent template (what it is / when to use / when NOT to use / architectural sketch / cost profile / implementations / source(s)), and there's an explicit "how to extend this page" footer that defines the rules for future ingests (same pattern → extend; different name → add as alias; new pattern → new section; cross-tool → record all implementations).

**New CLI primitives captured for the first time**: the wiki had no record of `claude -w` (git work-trees flag — Pattern 2) or `claude -p` (headless flag — Pattern 5). Both are now documented on [[claude-code]] with cross-links to the patterns they implement. Also captured: the **10 concurrent sub-agent hard limit**, the **Agent Teams research preview** (Opus 4.6, opt-in via `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1` env var, costs 4–7× tokens), and the **3 always-on built-in sub-agents** (Explore on Haiku / Plan / General-purpose on Sonnet).

**Boris Cherny** (Claude Code creator) is name-checked in the source as having spun up 15 sub-agents at a time. **No person page created yet** — deferred until a primary source covers him directly per the wiki's "no stub person pages from name-checks" rule. Same for the **GSD framework by Tash** and the **Ralph loop** community pattern — both name-checked, neither walked through, both deferred.

**Skipped from raw/**: 2 duplicate files (Fireship 10-illegal-tools and Google Gemma 4 Apache) that had been re-clipped after they were already archived earlier today; deleted at user request before processing. Also skipped: Document360 review (Savage Reviews) as low-value affiliate-driven SaaS review on a tool already covered by [[docmost]] in the self-hostable alternatives map.

**Notes**: 109 sources total. 5 memories added.

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








