---
type: hot-cache
created: 2026-04-06
updated: 2026-04-07
---

# Hot Cache

## Current State

**51 sources ingested** across multiple April-7 batches. Most recent: a **4-source local-AI batch** anchored on Tech With Tim's fine-tuning walkthrough, Wolfgang's self-hosted code-assistant deep dive, WorldofAI's Open-SWE coverage, and Tim's Docker Model Runner Python recipes. The wiki now has solid coverage of the **fine-tuning → local-runtime → IDE-integration** pipeline end-to-end, plus a 6th org page (LangChain).

## Most Active Pages

- [[claude-code|Claude Code]] — primary tool; /loop, /ultra-plan, skills ecosystem
- [[mcp|MCP]] — canonical concept page; foundational across the wiki
- [[ollama]] — most-cross-linked local runtime; now has Modelfile section for fine-tuned models
- [[docker-model-runner]] — second source landed; now has Python integration + host.docker.internal pattern + Compose `provider: type: model` syntax
- [[ai-coding-workflow]] + [[bmad-method]] + [[meta-prompting]] — the planning-discipline thread
- [[saas-death-spiral]] — the market thesis tying it all together; Open-SWE added as another data point
- [[fine-tuning]] — **NEW** concept thread anchored on Tim's Unsloth+LoRA+GGUF recipe
- [[continue]] — **NEW** local Copilot replacement; the IDE-integration leg of the local-AI thread

## Most Recently Added (2026-04-07, local-AI batch)

- **Fine-tuning recipe** ([[summary-tech-with-tim-fine-tune-ollama|Tech With Tim]]) — Unsloth + LoRA + GGUF + Ollama Modelfile pipeline. ~25 min on free Google Colab T4. New entities: [[unsloth]], [[fine-tuning]], [[tech-with-tim]]. Anchors a new concept thread connecting training → artifact → runtime → engine.
- **Self-hosted code assistant** ([[summary-wolfgangs-channel-self-host-ai-code-assistant|Wolfgang's Channel]]) — Real Docker Compose recipe + power consumption data. **130W gaming PC vs 4.6W MiniPC, no usable middle ground** — corroborates [[summary-alex-ziskind-vllm-fp8|Alex's vLLM analysis]] from a different angle. New entities: [[continue]] (the local-Copilot extension), [[wolfgangs-channel]]. Builds the bridge between the local-AI hardware thread and the agentic-coding thread.
- **Open-SWE async coding agent** ([[summary-worldofai-open-swe|WorldofAI]]) — LangChain's open-source asynchronous coding agent on LangGraph. Free Jules alternative. Bring-your-own-API-key flexibility. **New 6th org page**: [[langchain]] (framework vendor distinct from model vendors and open-source collectives).
- **Docker Model Runner Python recipes** ([[summary-tech-with-tim-docker-model-runner|Tech With Tim]]) — **Second source** on existing [[docker-model-runner]] entity. Adds Python integration via OpenAI client, port distinction (12434 vs Ollama's 11434), `host.docker.internal` pattern for container-to-host LLM access, Compose `provider: type: model` syntax.

## Earlier April-7 Batches

- **OpenAI Industrial Policy ingest** (PDF batch): first PDF ingest, source-summary + source-entity in [[ai-2027]] pattern, heavy interested-party caveats
- **Org pages batch**: [[anthropic]], [[google]], [[nous-research]] alongside earlier [[openai]] and [[lovable]] (5 then 6 with [[langchain]])
- **Methodology refactor batch**: `.instructions/` reorganized into `core/` + `projects/`, all 11 issues closed
- **Batch 3**: Alex Ziskind on vLLM + FP8, Archon OS, DeepCode, Sim AI
- **Batch 2**: Ultra Plan in Claude Code, SaaS death spiral, meta-prompting, Hermes GEPA, Docker Model Runner
- **Batch 1**: MCP canonical, Augment Agent, BMAD Method, Cole Medin AI coding workflow, Gemma 4 VRAM, Firebase Studio, Open WebUI, Dolphin Llama 3, pixegami RAG

## Open Gaps

- Karpathy's gist, AI 2027, Dan Shapiro, StrongDM, METR study — long-standing primary sources still uningested
- **LangChain (the library)** and **LangGraph** — heavily referenced via Open-SWE and the broader agent ecosystem; deserve their own entity pages once a second source lands
- **Jules (Google)** — only mentioned as the thing Open-SWE replaces; would be a useful primary source ingest
- **CAISI** — referenced in OpenAI's industrial policy paper; needs corroboration
- 12 candidate orgs in tasks.md (HKUDS, Microsoft/GitHub, Alibaba, MiniMax, Meta, Apple, xAI, DeepSeek, Glowforge, TCM Security, Tempo, Stability AI)
- 6 sources skipped across batches — archived

## Architectural Threads to Watch

- **Local-AI throughput ceiling**: [[vllm]] + [[fp8-quantization]] anchor the Nvidia Blackwell parallelism story; Wolfgang and Tim's videos anchor the everyday-developer side ([[continue]] + [[ollama]] + [[fine-tuning]])
- **Agentic coding platform proliferation**: 7 entries now ([[claude-code]], [[cursor]], [[augment-agent]], [[firebase-studio]], [[archon-os]], [[deepcode]], [[open-swe]]) — see [[saas-death-spiral]]
- **Planning-discipline convergence**: [[ai-coding-workflow]] + [[bmad-method]] + [[meta-prompting]] + Claude Code Ultra Plan
- **AI ethics & policy as observability signal**: still single-source ([[industrial-policy-intelligence-age|OpenAI policy paper]]). Watch for Anthropic, Google DeepMind, xAI, Meta to publish equivalents.
- **NEW: Local-AI training-to-deployment pipeline**: [[unsloth]] (training) → GGUF (artifact) → [[ollama]] (runtime) → [[continue]] (IDE integration). All free, all local, all open-source.
