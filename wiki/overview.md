---
type: overview
created: 2026-04-06
updated: 2026-04-08
tags: [ai, llm, knowledge-management, agent]
---

# Overview

This knowledge base tracks research on AI tools, techniques, and workflows for developers — production agent architecture, the planning-first coding-with-AI thread, the local-AI throughput stack, the agent proactivity/memory layer, business models in the post-SaaS world, and personal hardware capacity for local inference.

**Current state:** 68 sources ingested (after 17-source batch on 2026-04-07); 16-rig personal hardware benchmark section; 6 organization pages.

## Themes

### Knowledge Compounding
The central insight from [[Andrej Karpathy]]'s [[LLM Wiki Pattern]]: a wiki incrementally maintained by an LLM accumulates value that chat-based or RAG-based approaches don't. Cross-references, contradictions, and synthesis are pre-compiled. See [[RAG vs Wiki]] and [[summary-cole-medin-rag-for-code|Cole Medin's RAG-dead-for-code thesis]].

### Production Agent Architecture
[[Nate B Jones]]'s body of work defines the architectural layer: the [[Agentic Harness Primitives]] (12 primitives from the Claude Code leak), the three-Lego-brick model (memory + proactivity + tools), and the argument that [[OpenClaw]]'s 200k-star appeal is reducible to these primitives. The [[Claude Code]] ecosystem now includes multiple skill/plugin layers ([[GStack]], [[Superpowers]], [[Agency]], [[Impeccable]], [[Open Viking]], [[Hermes Agent]]) each encoding different methodologies.

### Agent Proactivity, Memory, and Self-Improvement
Three converging primitives: [[/loop]] (Anthropic, March 2026) gives agents a native heartbeat; [[OpenBrain]] (Postgres + PGVector + MCP via [[supabase|Supabase]], ~$0.10/month) gives them persistent memory; [[mcp|MCP]] gives them tool reach. Together they enable accumulated-value loops.

The self-improvement frontier: [[hermes-agent|Hermes Agent]]'s **GEPA** loop ("backpropagation for prompts, not weights") pauses every ~15 tool calls, reviews failures, and updates the agent's own prompts and skills without fine-tuning. [[ThePopeBot]] is the self-hosted variant: Docker + GitHub Actions + [[Ollama]]. [[autoresearch-evals|AutoResearch]] is the conceptual root.

### Planning-First AI Coding Workflows
A major thread that crystallized in early April 2026: **structured thinking before code, executed by agents.**

- [[ai-coding-workflow|Cole Medin's lightweight pattern]] — `PLANNING.md` + `TASK.md` + workspace global rules + three core MCP servers (filesystem, Brave, git)
- [[bmad-method|Brian's heavyweight pattern]] — six Agile personas (BA → PM → Architect → PO → SM → Dev) producing markdown artifacts in a fresh chat thread
- [[claude-code|Claude Code Ultra Plan]] — cloud-hosted Opus 4.6 with 3 parallel exploration agents + 1 critique agent; automates what Cole and Brian do by hand
- [[meta-prompting|Meta-prompting]] — Nate B Jones's wrapper-pattern for sloppy human input on GPT-5 ("a speedboat with a really big rudder")
- [[four-prompting-disciplines]] — the broader theory: prompt craft → context engineering → intent engineering → specification engineering

[[archon-os]] is the productized layer underneath: a hosted MCP-based knowledge + task backbone that any AI coding agent ([[claude-code|Claude Code]], [[cursor|Cursor]], Kira) can plug into.

### Five Levels of AI Coding & SaaS Death Spiral
[[Five Levels of AI Coding]] (Dan Shapiro's L0→L5 framework) anchors the architectural-consequence thread: from "spicy autocomplete" to the [[Attractor|StrongDM dark factory]] where 3 humans run an entire engineering org. The J-curve, the collapsing junior pipeline, and the METR study all live here.

[[saas-death-spiral|The SaaS death spiral]] is the market consequence: ~$1T in SaaS megacap valuation erased in early 2026 because per-seat pricing breaks when an AI agent does 10 people's work in 10 milliseconds. [[fireship|Fireship]]'s thesis. New tool [[github-agent-hq]] is the orchestration-platform play that absorbs the vacated spend.

[[Frontier Operations]] and [[meta-prompting]] describe the persistent skills required to operate at the expanding AI/human boundary.

### Local AI Throughput Stack
[[llama-cpp|llama.cpp]] is the foundation: GGUF format, integer quantization (Q4_K_M, Q5_K_M, Q8). [[Ollama]] wraps it. [[Open WebUI]] is the canonical chat UI. [[docker-model-runner|Docker Model Runner]] is the container-native alternative. [[turboquant|TurboQuant]] extends the same hardware with 4x context windows.

The **throughput ceiling** is unlocked by [[vllm|vLLM]] + [[fp8-quantization|FP8 quantization]] on Nvidia Blackwell. [[Alex Ziskind]]'s benchmark on RTX PRO 6000: same model + same hardware, **vLLM hits 5,800 tok/s vs LM Studio's 80** because LM Studio cannot parallelize requests. Code completion is the use case where parallelism matters most — even for solo developers. This is the practical justification for the top-spend rig in [[benchmarks/index|the personal benchmarks section]].

[[Open-Source Model Integration]] demonstrates 50–100x cost reduction via model substitution. [[Project Nomad]] takes local AI to its logical extreme: fully offline knowledge infrastructure.

### Open-Source Model Landscape
Chinese labs ([[DeepSeek]], [[Qwen]]) have surpassed [[Llama]] (Meta). [[Gemma 4]] (Google, 31B) ranks #3 globally — see [[gemma-4-vram-requirements]] for full GPU + Mac sizing. [[minimax-m2-7|MiniMax M2.7]] claims to outperform Claude Opus 4.6 at 20x lower cost. New entrants from the 2026-04-07 batch: [[kimi-k2|Kimi K2]] (Moonshot, ~10× cheaper than Sonnet) and [[minimax-m1|MiniMax M1]] (1M context, hybrid attention). For 95% of use cases, open-source is sufficient.

### Frontier Model Specialties & Prompting
[[ChatGPT]] = ease of use (now needs [[meta-prompting]] for GPT-5's literalism); [[Claude]] = work and coding; [[Gemini]] = search, deep research, video ingestion; [[Grok]] = real-time Twitter/X.

### Agentic Coding Platform Proliferation
The market is fragmenting fast. [[claude-code|Claude Code]], [[cursor|Cursor]], [[augment-agent|Augment Agent]], [[firebase-studio|Firebase Studio]], [[archon-os|Archon OS]], [[deepcode|DeepCode]] all coexist with overlapping but distinct positioning. [[Augment Agent]] claims #1 OSS on SWE-bench Verified at 65.4%. [[deepcode|DeepCode]]'s standout is **Paper2Code** (research → working implementations). [[firebase-studio|Firebase Studio]] is Google's Project IDX rebrand. [[saas-death-spiral|The death spiral analysis]] explains why this market is fragmenting.

### Visual Workflow & Multi-Agent Orchestration
Different layers of the same problem:
- [[sim-ai|Sim AI]] — drag-and-drop visual workflow builder; n8n alternative; AI primitives as first-class nodes
- [[paperclip|Paperclip]] — multi-agent orchestration at the company level
- [[hermes-agent|Hermes Agent]], [[OpenClaw]], [[ThePopeBot]] — full personal-agent frameworks

### The Command-Line Creative Stack
[[Google Stitch]] (voice→UI, design.md), [[Remotion]] (video-as-code, #1 non-corporate Claude Code skill), [[Blender MCP]] (natural language→3D), [[VoiceBox]] (local TTS / ElevenLabs alternative). MCP turns any tool into an agent-accessible primitive.

### AI as Business
[[AI Automation Workflows]]: 5 highest-return workflows for selling AI to businesses; clogged-pipe sales framework. [[AI Professional Interface]]: replace the broken hiring pipeline with an AI-powered personal interface — productizable as a client service. [[saas-death-spiral|The death spiral]] explains where the budget for these is coming from.

### Personal Hardware Benchmarks
[[benchmarks/index|Benchmark section]] ranks 16 personal rigs by the [[benchmarks/methodology|AI Capability Index]] (S/A/B/C/D tiers). Top: [[benchmarks/rigs/proxmox-lenovo-p8-threadripper|Lenovo P8 Threadripper Proxmox host]] with **RTX PRO 6000 Blackwell Max-Q**. Notable: Mac Mini M4 has the highest INT8 quantized score of any rig (51,472), beating every NVIDIA card thanks to the Apple Neural Engine — but loses on parallelism (see [[vllm]] and [[fp8-quantization]]).

## Key Pages

- [[mcp|MCP]] — the canonical concept page; foundational across the wiki
- [[claude-code|Claude Code]] — primary tool; /loop, /ultra-plan, skills ecosystem
- [[archon-os]] — Cole Medin's MCP-based knowledge + task backbone
- [[supabase|Supabase]] — the convergence point for memory, coding workflows, visual builders
- [[vllm]] + [[fp8-quantization]] — the local-AI throughput ceiling on Nvidia Blackwell
- [[ai-coding-workflow]] + [[bmad-method]] + [[meta-prompting]] — the planning-discipline thread
- [[saas-death-spiral]] + [[five-levels-of-ai-coding]] — the market + architectural thesis
- [[OpenBrain]] + [[/loop]] — the agent proactivity/memory primitives
- [[hermes-agent]] (GEPA) + [[ThePopeBot]] — self-improving agent frameworks
- [[benchmarks/index]] — personal hardware capacity for local AI

## Gaps & Next Steps

- Karpathy's gist, AI 2027, Dan Shapiro, StrongDM, METR study — long-standing primary sources still uningested
- Qwen 3 Coder Next, ZAI GLM 5, MiniMax M2.5, Waymo World Model — mentioned but no entity pages
- HKUDS — org behind DeepCode, worth tracking
- Bret Fisher's Open WebUI + Docker Model Runner gist — referenced but not pulled
- Jules (Google) — still mentioned as the thing Open-SWE replaces; no primary ingest yet
- CAISI — referenced in OpenAI's industrial policy paper; needs corroboration
