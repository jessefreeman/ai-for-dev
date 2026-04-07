---
type: hot-cache
created: 2026-04-06
updated: 2026-04-07
---

# Hot Cache

## Current State

**47 sources ingested** (46 + Bjorn re-ingest + OpenAI policy paper) + 16-rig benchmark section. **First PDF ingest landed** using the new `pdf-extraction.md` rule and `pdf-source.md` template — OpenAI's "Industrial Policy for the Intelligence Age" (April 2026), tracked as a thought-leadership / industry-observability artifact with heavy interested-party caveats.

## Most Active Pages

- [[claude-code|Claude Code]] — primary tool; /loop, /ultra-plan, skills ecosystem
- [[mcp|MCP]] — canonical concept page; foundational across the wiki
- [[archon-os]] — Cole Medin's MCP-based knowledge + task backbone for any AI coding agent
- [[vllm]] + [[fp8-quantization]] — the throughput upgrade past Ollama / LM Studio for serious local serving
- [[ai-coding-workflow]] + [[bmad-method]] + [[meta-prompting]] — the planning-discipline thread
- [[saas-death-spiral]] — the market thesis; now has a Policy responses subsection
- [[hermes-agent]] — GEPA self-improving loop ("backprop for prompts")
- [[industrial-policy-intelligence-age]] — OpenAI's first major policy paper (newest)

## Most Recently Added (2026-04-07, PDF batch)

- **OpenAI: Industrial Policy for the Intelligence Age** ([[summary-openai-industrial-policy-intelligence-age]] + [[industrial-policy-intelligence-age]]) — **first PDF ingest** through the new rule. 13-page policy paper, 21 named proposals across "Building an Open Economy" (Public Wealth Fund, Right to AI, modernized tax base, 32-hour workweek pilots) and "Building a Resilient Society" (CAISI auditing, model-containment playbooks, Public Benefit Corporation governance). **Treat as positioning, not analysis** — OpenAI is a direct interested party in nearly every proposal. Most acute conflict: Public Benefit Corporation governance proposal validates OpenAI's own corporate structure; audit-only-for-the-most-advanced-models is the canonical regulatory-moat play. Linked from [[saas-death-spiral#policy-responses]] and [[chatgpt#openai-policy-positioning]].

## April-7 Earlier Batches

- **Batch 3**: Alex Ziskind on vLLM + FP8 (5,800 tok/s vs LM Studio's 80), Archon OS, DeepCode, Sim AI
- **Batch 2**: Ultra Plan in Claude Code, SaaS death spiral, meta-prompting, Hermes GEPA, Docker Model Runner
- **Batch 1**: MCP canonical, Augment Agent, BMAD Method, Cole Medin AI coding workflow, Gemma 4 VRAM, Firebase Studio, Open WebUI, Dolphin Llama 3, pixegami RAG

## Open Gaps

- Karpathy's gist, AI 2027, Dan Shapiro, StrongDM, METR study — long-standing primary sources still uningested
- Lovable — referenced repeatedly, no entity page
- **OpenAI as a policy entity** (org page) — needs ≥2 sources before getting its own page
- **CAISI (Center for AI Standards and Innovation)** — referenced as existing institution; needs corroboration
- **AI ethics, politics, and policy** as a wiki thread — currently single-source (just the OpenAI paper); becomes a concept page when a second policy artifact lands
- Shadow factory agency model — Jesse's business vision
- 6 sources skipped across batches — archived
- Qwen 3 Coder Next, ZAI GLM 5, MiniMax M2.5, Waymo World Model, Kimi K2 — mentioned but no entity pages

## Architectural Threads to Watch

- **Local-AI throughput ceiling** is now anchored by [[vllm]] + [[fp8-quantization]]. The benchmarks section reflects single-request scores; vLLM unlocks ~70× more on concurrent workloads.
- **Agentic coding platform proliferation** — [[claude-code]], [[cursor]], [[augment-agent]], [[firebase-studio]], [[archon-os]], [[deepcode]] all coexist with distinct positioning. [[saas-death-spiral]] explains why this market is fragmenting.
- **Planning-discipline convergence** — [[ai-coding-workflow]], [[bmad-method]], [[meta-prompting]], [[claude-code|Ultra Plan]] all converge on: structured thinking before code, executed by agents.
- **AI ethics & policy as observability signal** — currently a single-source thread (the OpenAI paper). Watch for: Anthropic, Google DeepMind, xAI, or Meta publishing equivalent industrial-policy artifacts. Two artifacts → real concept page.
