---
type: overview
created: 2026-04-06
updated: 2026-04-06
tags: [ai, llm, knowledge-management, agent]
---

# Overview

This knowledge base tracks research on AI tools, techniques, and workflows for developers — with a focus on production agent architecture, cost-effective AI workflows, the command-line creative stack, and the emerging agent proactivity/memory layer.

## Themes

### Knowledge Compounding
The central insight from [[Andrej Karpathy]]'s [[LLM Wiki Pattern]]: a wiki incrementally maintained by an LLM accumulates value that chat-based or RAG-based approaches don't. Cross-references, contradictions, and synthesis are pre-compiled. See [[RAG vs Wiki]].

### Production Agent Architecture
[[Nate B Jones]]'s body of work defines the architectural layer: the [[Agentic Harness Primitives]] (12 primitives from the Claude Code leak), the three-Lego-brick model (memory + proactivity + tools), and the argument that [[OpenClaw]]'s 200k-star appeal is reducible to these primitives. The [[Claude Code]] ecosystem now includes multiple skill/plugin layers ([[GStack]], [[Superpowers]], [[Agency]], [[Impeccable]]) each encoding different methodologies.

### Agent Proactivity and Memory
The newest theme. [[/loop]] (Anthropic, March 2026) gives agents a native heartbeat. [[OpenBrain]] (SQL + MCP, $0.30/month) gives them persistent memory. Together they enable accumulated-value loops: each cycle informed by all previous cycles. [[AutoResearch and Evals]] provides the convergence logic — binary evals, objective metrics, mutation. [[Hermes Agent]] takes a different approach with a closed learning loop and autonomous skill creation.

### Local AI and Cost Optimization
[[llama.cpp]] is the invisible foundation: GGUF format, quantization (Q4_K_M = 4-bit, 75% RAM reduction), optimized kernels for every platform. [[Ollama]] wraps it. [[TurboQuant]] extends it with 4x context windows. [[Open-Source Model Integration]] demonstrates 50–100x cost reduction via model substitution. [[Project Nomad]] takes local AI to its logical extreme: fully offline knowledge infrastructure.

### Open-Source Model Landscape
Chinese labs ([[DeepSeek]], [[Qwen]]) have surpassed [[Llama]] (Meta). [[Gemma 4]] (Google, 31B) ranks #3 globally. [[MiniMax M2.7]] claims to outperform Claude Opus 4.6 at 20x lower cost. For 95% of use cases, open-source is sufficient.

### Frontier Model Specialties
[[ChatGPT]] = ease of use; [[Claude]] = work and coding; [[Gemini]] = search, deep research, and unique video ingestion; [[Grok]] = real-time Twitter/X.

### The Command-Line Creative Stack
[[Google Stitch]] (voice→UI, design.md), [[Remotion]] (video-as-code, 150k installs), [[Blender MCP]] (natural language→3D). MCP turns any tool into an agent-accessible primitive — [[Nate B Jones]]'s "growth hack of 2026" thesis.

### AI as Business
[[AI Automation Workflows]]: 5 highest-return workflows for selling AI to businesses. Framework: find the clog in the pipe before adding more water.

### Audio and TTS
[[VoiceBox]] fills the audio gap as an open-source local TTS alternative to ElevenLabs — voice cloning, effects, API access, all running locally.

## Key Pages

- [[Claude Code]] — primary tool; architecture, /loop, skills
- [[Agentic Harness Primitives]] — 12-primitive production framework
- [[/loop]] + [[OpenBrain]] — the agent proactivity + memory stack
- [[AutoResearch and Evals]] — self-improving methodology
- [[llama.cpp]] — the inference engine underlying local AI
- [[OpenClaw]] — what everyone wants; why /loop+OpenBrain is the safer path
- [[AI Automation Workflows]] — business framework for selling AI

## Gaps & Next Steps

- Karpathy's original gist — the canonical source for the LLM Wiki pattern
- AI 2027 article — referenced but not ingested
- Factory, ElevenLabs — coding agent and audio tool mentioned but uncovered
- No traditional RAG sources for direct comparison to the wiki pattern
- Lint pass recommended — 18 sources ingested
