---
type: overview
created: 2026-04-06
updated: 2026-04-07
tags: [ai, llm, knowledge-management, agent]
---

# Overview

This knowledge base tracks research on AI tools, techniques, and workflows for developers — production agent architecture, cost-effective AI workflows, the command-line creative stack, the agent proactivity/memory layer, and personal hardware capacity for local AI.

## Themes

### Knowledge Compounding
The central insight from [[Andrej Karpathy]]'s [[LLM Wiki Pattern]]: a wiki incrementally maintained by an LLM accumulates value that chat-based or RAG-based approaches don't. Cross-references, contradictions, and synthesis are pre-compiled. See [[RAG vs Wiki]] and [[summary-cole-medin-rag-for-code|Cole Medin's RAG dead-for-code thesis]].

### Production Agent Architecture
[[Nate B Jones]]'s body of work defines the architectural layer: the [[Agentic Harness Primitives]] (12 primitives from the Claude Code leak), the three-Lego-brick model (memory + proactivity + tools), and the argument that [[OpenClaw]]'s 200k-star appeal is reducible to these primitives. The [[Claude Code]] ecosystem now includes multiple skill/plugin layers ([[GStack]], [[Superpowers]], [[Agency]], [[Impeccable]], [[Open Viking]], [[Hermes Agent]]) each encoding different methodologies.

### Agent Proactivity and Memory
[[/loop]] (Anthropic, March 2026) gives agents a native heartbeat. [[OpenBrain]] (Postgres + PGVector + MCP, ~$0.10/month) gives them persistent memory. Together they enable accumulated-value loops: each cycle informed by all previous cycles. [[AutoResearch and Evals]] provides the convergence logic — binary evals, objective metrics, mutation. [[ThePopeBot]] is the self-hosted variant: Docker + GitHub Actions + [[Ollama]], no cloud dependency. [[Hermes Agent]] takes a different approach with a closed learning loop and autonomous skill creation.

### Five Levels of AI Coding
[[Five Levels of AI Coding]] (Dan Shapiro's L0→L5 framework) anchors a major thread: from "spicy autocomplete" to the [[Attractor|StrongDM dark factory]] where 3 humans run an entire engineering org. The J-curve, the collapsing junior pipeline, and the METR study (experienced devs 19% slower with AI) all live here. [[Frontier Operations]] and the [[Four Prompting Disciplines]] describe the persistent skills required as the AI/human boundary expands.

### The Four Prompting Disciplines
[[Four Prompting Disciplines]]: prompt craft → context engineering → intent engineering → specification engineering. Each layer is a more durable skill than the last. Specifications (the five primitives) are how senior operators stay relevant.

### Local AI and Cost Optimization
[[llama.cpp]] is the invisible foundation: GGUF format, quantization (Q4_K_M = 4-bit, ~55% memory savings), optimized kernels for every platform. [[Ollama]] wraps it. [[TurboQuant]] extends it with 4x context windows. [[Open-Source Model Integration]] demonstrates 50–100x cost reduction via model substitution. [[Project Nomad]] takes local AI to its logical extreme: fully offline knowledge infrastructure.

### Open-Source Model Landscape
Chinese labs ([[DeepSeek]], [[Qwen]]) have surpassed [[Llama]] (Meta). [[Gemma 4]] (Google, 31B) ranks #3 globally. [[MiniMax M2.7]] claims to outperform Claude Opus 4.6 at 20x lower cost. For 95% of use cases, open-source is sufficient.

### Frontier Model Specialties
[[ChatGPT]] = ease of use; [[Claude]] = work and coding; [[Gemini]] = search, deep research, and unique video ingestion; [[Grok]] = real-time Twitter/X.

### The Command-Line Creative Stack
[[Google Stitch]] (voice→UI, design.md), [[Remotion]] (video-as-code, #1 non-corporate Claude Code skill), [[Blender MCP]] (natural language→3D), [[VoiceBox]] (local TTS / ElevenLabs alternative). MCP turns any tool into an agent-accessible primitive — [[Nate B Jones]]'s "growth hack of 2026" thesis.

### AI as Business
[[AI Automation Workflows]]: 5 highest-return workflows for selling AI to businesses; clogged-pipe sales framework. [[AI Professional Interface]]: replace the broken hiring pipeline with an AI-powered personal interface (5 components, attention economics, bidirectional fit assessment) — productizable as a client service.

### Personal Hardware Benchmarks
[[benchmarks/index|Benchmark section]] ranks 16 personal rigs by the [[benchmarks/methodology|AI Capability Index]] (S/A/B/C/D tiers). Top: Proxmox host with RTX PRO 6000 Blackwell (978.8, S). Notable: Mac Mini M4 has the highest INT8 quantized score of any rig (51,472), beating every NVIDIA card thanks to the Apple Neural Engine.

## Key Pages

- [[Claude Code]] — primary tool; architecture, /loop, skills ecosystem
- [[Agentic Harness Primitives]] — 12-primitive production framework
- [[/loop]] + [[OpenBrain]] — agent proactivity + memory stack
- [[Five Levels of AI Coding]] — L0→L5; dark factory; J-curve
- [[Four Prompting Disciplines]] — the durable prompting skills
- [[Frontier Operations]] — five persistent skills at the AI/human boundary
- [[AutoResearch and Evals]] — self-improving methodology
- [[llama.cpp]] — the inference engine underlying local AI
- [[AI Automation Workflows]] + [[AI Professional Interface]] — business framework + applied use case
- [[benchmarks/index|Personal Benchmarks]] — hardware capacity for local AI

## Gaps & Next Steps

- Karpathy's original gist — canonical source for the LLM Wiki pattern (still uningested)
- AI 2027 article — referenced but only stub
- Dan Shapiro, StrongDM, METR study — primary sources for the Five Levels thread
- Lovable — referenced repeatedly but no entity page
- Shadow factory agency model — Jesse's business vision; deeper L4/L5 economics research
