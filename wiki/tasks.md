---
type: tasks
created: 2026-04-06
updated: 2026-04-08
# 12-source ingest batch 2026-04-08 added 5 new items
---

# Tasks

Open questions that need **your** input or judgment. See [`tasks-rules.md`](../.instructions/core/rules/tasks-rules.md) for what belongs here. Resolved items are deleted, not archived — the historical record lives in [[log|log.md]]. Walk through these with the [task-review prompt](../.instructions/core/prompts/task-review.md).

## Open

- [ ] **Dissect Journey Kits to extract borrowable concepts** — You flagged Matthew Berman's [[journey-kits|Journey]] as something you want to try out and take apart for the packaging format and any concepts you might use or borrow. The [[journey-kits]] entity page has an initial "What's borrowable" section with 7 candidates ([[ai-coding-workflow|kit.md as workflow spec]], "failures overcome" as first-class field, credentials-by-pointer, learnings-flow-back, host-adaptation-as-kit-responsibility, agent-prompted upgrades, publisher reputation), but those are derived from the launch video — not from hands-on use of an actual installed kit.
      **What I need from you:** Want to install Journey ([`npm install -g journey-kits`](https://journeykits.ai)) on a throwaway environment, install one of Berman's published kits (the knowledge-base RAG kit is the most-detailed in the source), then walk through with me to identify which concepts actually apply to the wiki's [[page-conventions]] / ingest methodology vs which are agent-runtime-specific?
      *Referenced from:* [[journey-kits]], [[summary-matthew-berman-journey-kits]]

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

- [ ] **Browserbase as a company page** — [[stagehand]] is published by Browserbase, which also runs the serverless browser backend Stagehand depends on. The company has appeared in two open-source agent contexts now (Stagehand v2 + the agent-controlled browser pattern). Probably worth an `orgs/` page to track its position.
      **What I need from you:** Approve / defer creating a Browserbase org page. A 2nd-source threshold isn't quite met yet, but the structural importance is.

- [ ] **Block as a company page** — [[codename-goose|Goose]] is published by Block (Square / Cash App / Tidal parent). Block doesn't have a wiki page, but the corporate-backing point is load-bearing for Goose's positioning vs solo-maintained alternatives. Same threshold question as Browserbase.
      **What I need from you:** Approve / defer creating a Block org page.

- [ ] **ByteDance as a company page** — [[deerflow|DeerFlow]] is the wiki's first ByteDance OSS contribution. Pattern to watch — if a second ByteDance OSS framework lands, the org page becomes a clear yes. For now: tracking only.

- [ ] **LLMs Explained / Aggregate Intellect / AI.SCIENCE — creator attribution** — The Dify knowledge-base source ([[summary-dify-knowledge-base-rag-configuration]]) is from a YouTube channel that uses three different display names but doesn't credit an individual creator on screen. Per page-conventions ("never create stub person pages with unknown channel info"), no person page was created.
      **What I need from you:** If you know who runs this channel, name them and I'll create the person page. Otherwise we leave the source-summary stand-alone.
      *Referenced from:* [[summary-dify-knowledge-base-rag-configuration]]

- [ ] **20 stub pages need richer coverage as new sources land** — Lint 2026-04-08 flagged the following pages as <150 words. They are intentionally thin "nascent entity" pages that the wiki rule says should grow with new sources, not by fabricating content from training data. This task is a tracking pointer so we remember to enrich them when relevant sources come in.
      **People (need a second source each):** [[tin-rovic]], [[zubair-trabzada]], [[nathan-sebhastian]], [[beyond-fireship]], [[simon-hoiberg]], [[dave-swift]].
      **Self-hostable alternatives (will grow with deployment-experience sources):** [[nocodb]], [[strapi]], [[grafana]], [[plane]], [[docmost]].
      **Tools/models with one source so far:** [[anything-llm]], [[manus]], [[kimi-coder]], [[minimax-m1]], [[obsidian]], [[obsidian-web-clipper]], [[mirrorish]], [[agency]].
      **Demo/legacy:** [[ai-2027]] (demo ingest source, intentionally minimal).
      **What I need from you:** Nothing right now. This is a tracking item — when an ingest naturally touches one of these entities, treat the pass as an opportunity to expand the page beyond stub status. Delete this task when most have grown out of stub state.
      *Referenced from:* lint 2026-04-08
