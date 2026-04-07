---
type: tasks
created: 2026-04-06
updated: 2026-04-07
---

# Tasks

Things to investigate, try, or read. Added automatically during ingest. Check off when done.

## High Priority — Fill Recurring Gaps

- [ ] **Karpathy's LLM Wiki Gist** — the original idea file [[LLM Wiki Pattern]]
- [ ] **Karpathy's auto_research repo** — ingest the actual code/README [[AutoResearch and Evals]]
- [ ] **AI 2027** — referenced as a rich demo source (~23 pages); good stress test [[sources/ai-2027]]

## Organizations to add to wiki/orgs/

The wiki currently has [[anthropic]], [[openai]], [[google]], [[nous-research]], and [[lovable]] as org pages. The following companies are referenced across multiple sources and should also get org pages:

- [ ] **HKUDS (Hong Kong University Data Science)** — academic group behind [[deepcode|DeepCode]]
- [ ] **Microsoft / GitHub** — [[github-agent-hq|GitHub Agent HQ]], Codex Mac App distribution context
- [ ] **Alibaba** — [[qwen|Qwen]] family, Qwen 3 Coder Next
- [ ] **MiniMax** — [[minimax-m2-7|M2.7]] and the M2.5 follow-up
- [ ] **Meta** — [[llama|Llama]] family
- [ ] **Apple** — Apple Silicon, MLX, Neural Engine — heavily referenced in benchmarks + Alex Ziskind's vLLM analysis
- [ ] **xAI** — [[grok|Grok]]
- [ ] **DeepSeek** — [[deepseek|DeepSeek]] family
- [ ] **Glowforge** — Dan Shapiro's company, context for the [[five-levels-of-ai-coding|Five Levels of AI Coding]] framework
- [ ] **TCM Security** — [[the-cyber-mentor]]'s company; PIPA cert; Bjorn pedagogy
- [ ] **Tempo** — [[ras-mic|Ras Mic]]'s employer; AI startup mentioned alongside MCP clients
- [ ] **Stability AI / Black Forest Labs** — image gen ecosystem (only referenced indirectly so far; needs a primary source)

## People to add

- [ ] **Dan Shapiro** — CEO of Glowforge, creator of the 5 Levels framework [[Five Levels of AI Coding]]
- [ ] **Marcus Chen demo site** — Nate's working AI Professional Interface demo; GitHub repo available [[summary-nate-b-jones-ai-professional-interface]]

## Institutions / agencies

- [ ] **CAISI (Center for AI Standards and Innovation)** — referenced in the OpenAI Industrial Policy paper as an existing US institution. Need a primary source on what it currently does and who runs it. Goes in `wiki/orgs/` once material exists.

## Concept threads needing a second source

- [ ] **AI ethics, politics, and policy as industry-observability signal** — currently single-source ([[industrial-policy-intelligence-age|OpenAI Industrial Policy paper]]). When a second policy artifact lands (Anthropic, Google DeepMind, xAI, Meta, or a major government agency), promote to a concept page.
- [ ] **Public Wealth Fund** as a named proposal — only the OpenAI paper so far. Norway-style? Alaska Permanent Fund analogue? Novel? Worth a primary source.
- [ ] **"Right to AI"** as a framing — only the OpenAI paper so far. Watch for adoption by others.
- [ ] **Public Benefit Corporation governance for frontier AI** — only OpenAI and Anthropic operate under PBC structures. The OpenAI paper validates this structure. Worth a deeper investigation of OpenAI's own 2024 conversion drama for context.
- [ ] **OpenAI fellowship + API credits pilot** — `newindustrialpolicy@openai.com`, $100K fellowships + $1M API credits announced in the [[industrial-policy-intelligence-age|April 2026 paper]]. Track which projects get funded — the funded list is itself a signal of OpenAI's policy priorities.

## Models Mentioned But No Entity Page

- [ ] **Kimi K2** — referenced in [[deepcode|DeepCode]] video as a recommended free local model for Text2Web
- [ ] **Qwen 3 Coder Next** — open-weight coding model in the [[saas-death-spiral]] thesis
- [ ] **Qwen 3 Coder 30B** — the FP8 fill-in-the-middle model [[Alex Ziskind]] uses for the [[vllm]] benchmarks
- [ ] **ZAI GLM 5** — open-weight model targeting complex systems engineering [[saas-death-spiral]]
- [ ] **MiniMax M2.5** — newer than [[minimax-m2-7|M2.7]]; same family, frontier reasoning at fractional cost [[saas-death-spiral]]
- [ ] **Waymo World Model** — Google simulation primitives applicable to business software [[saas-death-spiral]]

## Tools Mentioned But No Entity Page

- [ ] **LM Studio** — referenced repeatedly; [[Alex Ziskind]] benchmarks it as the parallelism counter-example to [[vllm]]
- [ ] **Factory** — coding agent cited alongside Cursor, Claude Code, Codex, Devin [[summary-matthew-berman-ai-models]]
- [ ] **ElevenLabs** — voice cloning and TTS; the comparison point for [[VoiceBox]]
- [ ] **Pulsia** — closed-source AI-runs-your-company product; comparison point for [[Paperclip]]
- [ ] **Noah's Way Claude Code Scheduler** — cloud-based scheduling [[summary-nate-b-jones-google-stitch]]
- [ ] **Recall AI** — unified meeting bot/recording API [[summary-fireship-7-open-source-tools]]
- [ ] **Bright Data** — web scraping/CAPTCHA solving for agents [[summary-cole-medin-e2e-testing]]
- [ ] **Neon** — serverless Postgres with database branching [[summary-cole-medin-e2e-testing]]
- [ ] **Bret Fisher's Open WebUI + Docker Model Runner gist** — referenced in [[summary-worldofai-docker-model-runner]] but not pulled
- [ ] **vLLM follow-up: FP4 video** — [[Alex Ziskind]] teased a follow-up on FP4 quantization on Blackwell
- [ ] **Auggie CLI**, **Zoer**, **Seer** — coding agents mentioned in WorldofAI's "must watch" lists; no first-party coverage yet
- [ ] **Kombai** — "the Cursor for design" mentioned in WorldofAI's must-watch [[summary-worldofai-archon-os]]

## Deeper Investigations

- [ ] **StrongDM Software Factory** — the 3-person dark factory team; deeper investigation warranted [[Attractor]]
- [ ] **METR RCT Study** — randomized control trial showing experienced devs 19% slower with AI; worth ingesting directly [[Five Levels of AI Coding]]
- [ ] **Shadow factory agency model** — Jesse's business vision; deeper into dark factory economics, L4/L5 operating patterns, and agency models serving businesses that can't build their own [[Five Levels of AI Coding]]
- [ ] **AI professional interface as client service** — build out the productized version: interview process, AI training, site build, fit tool config, distribution guidance [[AI Professional Interface]]

## Completed

- [x] **OpenClaw** — wiki page created [[OpenClaw]]
- [x] **MCP canonical concept page** — [[mcp]] created from [[summary-greg-isenberg-mcp-explained]]
- [x] **Gemma 4 VRAM Requirements** — [[gemma-4-vram-requirements]] created from [[summary-gemma4guide-vram-requirements]]
- [x] **Supabase entity page** — created during 2026-04-07 lint pass; convergence point for [[OpenBrain]], [[archon-os]], [[ai-coding-workflow]], [[sim-ai]]
- [x] **vLLM** — created during the [[Alex Ziskind]] ingest; the parallelism upgrade past Ollama/LM Studio
- [x] **FP8 Quantization** — concept page created during the same ingest
- [x] **Lint pass** — completed 2026-04-07 (twice in the same day)
- [x] **`[[proxmox-mobile-hx-pro-370]]` broken refs** — resolved 2026-04-07: removed the 2 forward-references from [[benchmarks/rigs/proxmox-ultra7-265k]] and [[benchmarks/rigs/proxmox-lenovo-p8-threadripper]]. The slug pointed at a planned-but-not-built rig; can be added back when the rig is benchmarked.
- [x] **OpenAI org page** — created 2026-04-07 at [[openai]]. Combined ChatGPT, Codex, Industrial Policy paper, Prompt Fu acquisition, and the policy-positioning thread into a single org entity.
- [x] **Lovable org page** — created 2026-04-07 at [[lovable]]. Captured the references from AI Professional Interface and BMAD Method.
- [x] **`wiki/orgs/` folder convention** — added to `.instructions/core/rules/page-conventions.md` as a new page-type row. Org pages exist when the wiki references the company itself (corporate decisions, policy, acquisitions) beyond just its products.
- [x] **Anthropic org page** — created 2026-04-07 at [[anthropic]]. Combined Claude, Claude Code, the architecture leak, /loop, Ultra Plan, the MCP standard origin, and the OpenClaw-replacement thread.
- [x] **Google org page** — created 2026-04-07 at [[google]]. Combined Gemini, Gemma 4, Firebase Studio, Stitch, Vertex AI, Genkit, plus the Waymo World Model context. The wiki's broadest org by surface area.
- [x] **Nous Research org page** — created 2026-04-07 at [[nous-research]]. Anchored on Hermes Agent + GEPA as the wiki's clearest "open agent-research alternative" entry.
