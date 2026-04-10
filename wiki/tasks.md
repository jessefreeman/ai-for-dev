---
type: tasks
created: 2026-04-06
updated: 2026-04-10
---

# Tasks

Open questions that need **your** input or judgment. See [`tasks-rules.md`](../.instructions/core/rules/tasks-rules.md) for what belongs here. Resolved items are deleted, not archived — the historical record lives in [[log|log.md]]. Walk through these with the [task-review prompt](../.instructions/core/prompts/task-review.md).

## Open

- [ ] **Autonomous AI trading — experiment further** — The [[openclaw]] page now captures the full methodology from [[summary-cole-medin-openclaw-trading|Cole Medin's 30-day experiment]]: cron-driven execution via Alpaca API, sub-agent wealth adviser teams, adaptive strategy, inter-agent communication. Both bots beat the S&P 500 (−8.5%) — Nate at −0.2%, Samin at −3.8%. You flagged this for further experimentation and research.
      **What I need from you:** Do you want to (a) set up your own OpenClaw trading bot using the methodology on the page, (b) research more sources on AI trading patterns / tools, or (c) keep this as a tracking item until you have time to dig in? The Alpaca API + cron pattern is straightforward to replicate; the sub-agent team spawning is the interesting architectural bit.
      *Referenced from:* [[openclaw]], [[summary-cole-medin-openclaw-trading]]

- [ ] **Review agent plugins — rolling nudge** — The [[agent-plugins]] index now tracks 33+ installable plugins (Claude skills, MCPs, skill packs, sandboxing, parallel runners). This is the **catch-your-attention task** for the plugin ecosystem: when you see a plugin recommended somewhere (a video, a thread, a colleague), check if it's in the index — if it is, decide whether to flip its status from `tracked` to `try` / `recommended` / `skip`; if it isn't, add a row + create a per-plugin page so it has somewhere to land.
      Currently `try`-flagged: [[obsidian-skills-pack]] (overlaps with this wiki's own Obsidian-vault operating model — most likely to produce hands-on notes the wiki can use).
      Defensively load-bearing: [[promptfoo]] (prompt red-teaming) and [[container-use]] (Dagger sandboxing) — both connect directly to [[ai-personal-agent-hardening]] rule 1.
      **What I need from you:** Walk through the index with me whenever you've heard about a plugin and want to mark it. Or tell me one you ran — we'll fill in the hands-on notes section of its page and flip the row's status.
      *Referenced from:* [[agent-plugins]], [[summary-dubibubii-claude-skills-2026]]

- [ ] **`claude-agent-sdk` page — create when a primary source lands** — Two pages now reference [[claude-agent-sdk]] as a dangling link: [[summary-nate-herk-managed-agents]] and [[trigger-dev]]. The Claude Agent SDK is the SDK that [[managed-agents|Managed Agents]] wraps and that Nate Herk recommends building agents on top of for use with [[trigger-dev|trigger.dev]]. No primary source has covered the SDK directly yet — current references are name-checks inside other ingests. Per the wiki convention, the dangling link signals "this page should exist eventually."
      **What I need from you:** Nothing right now. When an ingest lands that's actually about the Agent SDK (Anthropic docs walkthrough, a tutorial on building with it, or a comparison of agent SDKs), create the page then. Delete this task at that point.
      *Referenced from:* [[summary-nate-herk-managed-agents]], [[trigger-dev]]

- [ ] **Hands-on with Gemma 4 — local testing across the rig fleet** — [[gemma-4]] is now anchored by 5 sources including Fireship's "first FAANG truly Apache 2.0" framing and the cleanest PLE explanation in the wiki. The page has full VRAM tables ([[gemma-4-vram-requirements]]) but **zero hands-on data from your own rigs**. Per the [[fireship]] source: 31B is 20 GB, ~10 tok/s on a single RTX 4090; the 26B A4B MoE is the Mac sweet spot at 32–36 GB unified memory; E4B runs on a 6 GB GPU. Worth running across the [[benchmarks/index|16-rig fleet]] as both a real-world capability check and a benchmark data point — especially the E4B/E2B edge variants which the wiki has *no* coverage of in practice.
      **What I need from you:** Want to pick 2–3 rigs to install Gemma 4 on (Ollama is the easiest path) and walk through with me — we capture tok/s, fit, subjective quality on a fixed prompt set, and file the results as benchmark notes? Suggested first targets: the RTX 4090 rig (matches Fireship's reference number), a Mac with 36 GB unified memory (validates the A4B MoE sweet spot), and one edge device for E4B. Also worth pairing with [[unsloth|Unsloth]] for a fine-tuning pass if you want to take it further.
      *Referenced from:* [[gemma-4]], [[summary-fireship-gemma4-apache]], [[gemma-4-vram-requirements]]

- [ ] **Dissect Journey Kits to extract borrowable concepts** — You flagged Matthew Berman's [[journey-kits|Journey]] as something you want to try out and take apart for the packaging format and any concepts you might use or borrow. The [[journey-kits]] entity page has an initial "What's borrowable" section with 7 candidates ([[ai-coding-workflow|kit.md as workflow spec]], "failures overcome" as first-class field, credentials-by-pointer, learnings-flow-back, host-adaptation-as-kit-responsibility, agent-prompted upgrades, publisher reputation), but those are derived from the launch video — not from hands-on use of an actual installed kit.
      **What I need from you:** Want to install Journey ([`npm install -g journey-kits`](https://journeykits.ai)) on a throwaway environment, install one of Berman's published kits (the knowledge-base RAG kit is the most-detailed in the source), then walk through with me to identify which concepts actually apply to the wiki's [page-conventions](../.instructions/core/rules/page-conventions.md) / ingest methodology vs which are agent-runtime-specific?
      *Referenced from:* [[journey-kits]], [[summary-matthew-berman-journey-kits]]

- [ ] **Find Nate B Jones's "shadow factory company that mocks all API endpoints" reference** — During the 2026-04-09 [[aimock]] ingest, you flagged that Nate B Jones referenced a specific company in one of his videos that mocks up all their API endpoints as part of how they operate as a 3-person shadow factory. The wiki has captured the *architectural pattern* (deterministic CI as enabling infrastructure for shadow-factory teams) on [[aimock]] and [[saas-death-spiral]], but not the *specific company* or the source video. The wiki has 12+ Nate B Jones source summaries indexed; the reference may be in one of them already, or in a video that hasn't been ingested yet.
      **What I need from you:** Either name the specific Nate B Jones video where you remember the reference (I'll grep the existing source summaries), or save the video to `raw/` and we'll ingest it. Worth doing because this would let us promote the shadow factory thread from "tracked open question" to "concept page with a real-world reference."
      *Referenced from:* [[aimock]], [[saas-death-spiral]]

- [ ] **Shadow factory thread — primary source needed?** — The "shadow factory agency model" is your business vision (referenced inline in [[saas-death-spiral]] open questions). Currently it's a one-line note backed only by the StrongDM 3-person team mention in [[summary-nate-b-jones-five-levels|5 Levels of AI Coding]]. To turn this into a real concept page or analysis we need at least one source that goes deeper on dark-factory economics or L4/L5 operating patterns.
      **What I need from you:** Do you want me to actively hunt for a primary source on shadow-factory economics (web search / specific creators to track), keep it as an inline note until something lands organically, or pivot to writing it as a vision page from your own thinking with no external source?
      *Referenced from:* [[saas-death-spiral]], [[summary-nate-b-jones-five-levels]]

- [ ] **AI Professional Interface — productize as a client service?** — [[ai-professional-interface]] is currently filed as a `business` page describing Nate's framework. The page itself flags it as productizable (interview → AI training → site build → fit tool → distribution). Marcus Chen's working demo + GitHub repo exist (now noted inline on the page). The methodology layer is ready to support a deeper build-out if you want it.
      **What I need from you:** Is this a real near-term offering you want me to develop into a service-design page (positioning, pricing, deliverables, target client), or is it observational only — track the pattern but don't build the playbook?
      *Referenced from:* [[ai-professional-interface]], [[summary-nate-b-jones-ai-professional-interface]]

- [ ] **Customize-template prompt — validate end-to-end on a fresh clone?** — `customize-template.md` has been written but never run on an actual fresh clone of this repo. Until it's tested at least once we don't know whether the prompt produces a clean second-brain starter or whether the data-agnostic split in `.instructions/core/` actually holds. GitHub issues #7 and #8 track this.
      **What I need from you:** Want to spin up a throwaway clone (e.g. `~/tmp/test-brain`) and run the prompt against it together so we can find the breakage, or defer until you actually start a second brain?
      *Referenced from:* [`customize-template.md`](../.instructions/core/prompts/customize-template.md)

- [ ] **CodeLLM pricing tier verification** — [[codellm|Abacus AI CodeLLM]] page cites "$10/mo bundles CodeLLM + ChatLLM + Deep Agent + Computer Agent" from a 2025-06-01 source. Pricing has likely shifted in the ~10 months since. Before recommending the bundle to anyone, verify current tier on codellm.abacus.ai.
      **What I need from you:** Skim the current pricing page (or have me skim it) before any external recommendation; or accept "verify current tier" as a permanent caveat on the page.
      *Referenced from:* [[codellm]]

- [ ] **JSON-to-Video pricing/credit model** — [[json-to-video]] is the assembly primitive in two new n8n video pipelines ([[summary-nate-herk-faceless-shorts-n8n|Nate Herk shorts]], [[summary-jay-e-longform-youtube-videos|Jay E longform]]). Both sources cite "$50/mo all-in with premium models" but neither breaks down JSON-to-Video's own credit model. Need a follow-up source (or a page-fetch) to give cost guidance.
      **What I need from you:** Want me to web-fetch the json2video.com pricing page and add a Pricing section, or leave it as a tasks-tracked gap until an organic source lands?
      *Referenced from:* [[json-to-video]]

- [ ] **Org pages — Browserbase, Block, ByteDance** — Three companies referenced via their products ([[stagehand]] → Browserbase, [[codename-goose]] → Block, [[deerflow]] → ByteDance) but without org pages. Create each when a 2nd source lands that references the *company* (not just the product). Browserbase is closest — appeared in two agent contexts (Stagehand v2 + browser pattern).
      **What I need from you:** Nothing right now. Create on 2nd-source threshold.
      *Referenced from:* lint 2026-04-09, lint 2026-04-10

- [ ] **LLMs Explained / Aggregate Intellect / AI.SCIENCE — creator attribution** — The Dify knowledge-base source ([[summary-dify-knowledge-base-rag-configuration]]) is from a YouTube channel that uses three different display names but doesn't credit an individual creator on screen. Per page-conventions ("never create stub person pages with unknown channel info"), no person page was created.
      **What I need from you:** If you know who runs this channel, name them and I'll create the person page. Otherwise we leave the source-summary stand-alone.
      *Referenced from:* [[summary-dify-knowledge-base-rag-configuration]]

- [ ] **30 stub pages need richer coverage as new sources land** — Lint 2026-04-10 confirmed the following pages as <150 words. They are intentionally thin "nascent entity" pages that the wiki rule says should grow with new sources, not by fabricating content from training data. This task is a tracking pointer so we remember to enrich them when relevant sources come in.
      **People (need a second source each):** [[tin-rovic]], [[zubair-trabzada]], [[nathan-sebhastian]], [[beyond-fireship]], [[simon-hoiberg]], [[dave-swift]], [[bart-slodyczka]].
      **Self-hostable alternatives (will grow with deployment-experience sources):** [[nocodb]], [[strapi]], [[grafana]], [[plane]], [[docmost]].
      **Tools/models with one source so far:** [[anything-llm]], [[manus]], [[flowith]], [[obsidian]], [[obsidian-web-clipper]], [[mirrorish]], [[agency]], [[kimi-coder]], [[minimax-m1]].
      **Plugin stubs (containers for hands-on notes):** [[brand-guidelines-skill]], [[canvas-design-skill]], [[claude-seo-skill]], [[context-optimization-skill]], [[deep-research-skill]], [[doc-co-authoring-skill]], [[pptx-skill]], [[web-artifacts-builder-skill]], [[xlsx-skill]].
      **Demo/legacy:** [[ai-2027]] (demo ingest source, intentionally minimal).
      **What I need from you:** Nothing right now. This is a tracking item — when an ingest naturally touches one of these entities, treat the pass as an opportunity to expand the page beyond stub status. Delete this task when most have grown out of stub state.
      *Referenced from:* lint 2026-04-10
