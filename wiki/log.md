---
type: log
created: 2026-04-06
updated: 2026-04-07
---

# Wiki Log

Rolling window of recent operations with interpretation. Capped at 10 entries per [`log-rules.md`](../.instructions/core/rules/log-rules.md). Older history is in `git log -- wiki/log.md`.

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

## [2026-04-07] ingest | THIS is the REAL DEAL for local LLMs (Alex Ziskind)
- **Source**: YouTube transcript by Alex Ziskind on vLLM + FP8 + RTX PRO 6000 Blackwell
- **Pages created** (4): `summary-alex-ziskind-vllm-fp8.md`; `wiki/people/alex-ziskind.md`; `wiki/open-source/vllm.md`; `wiki/concepts/fp8-quantization.md`

## [2026-04-07] ingest | Sim AI (WorldofAI)
- **Source**: YouTube transcript by WorldofAI on Sim AI
- **Pages created** (2): `summary-worldofai-sim-ai.md`; `wiki/tools/sim-ai.md`
