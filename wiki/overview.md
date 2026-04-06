---
type: overview
sources: ["Andrej Karpathy Just 10x'd Everyone's Claude Code.md", "I Broke Down Anthropic's $2.5 Billion Leak. Your Agent Is Missing 12 Critical Pieces..md", "Ollama + Claude Code = 99% CHEAPER.md", "Google just dropped Gemma 4... (WOAH).md", "Claude Code + Paperclip Just Destroyed OpenClaw.md", "TurboQuant will change Local AI for everyone.md", "I Cut Claude Code Costs by 95% (MiniMax M2.7).md", "I've Built 500 AI Workflows.md", "A Markdown File Just Replaced Your Most Expensive Design Meeting. (Google Stitch).md", "What Is Llama.cpp? The LLM Inference Engine for Local AI.md", "You NEED to try these open-source AI projects right now....md", "Every AI Model Explained in 20 Minutes.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [ai, llm, knowledge-management, agent]
---

# Overview

This knowledge base tracks research on AI tools, techniques, and workflows for developers — with a focus on production agent architecture, cost-effective AI workflows, and the emerging command-line creative stack.

## Themes

### Knowledge Compounding
The central insight from [[Andrej Karpathy]]'s [[LLM Wiki Pattern]]: a wiki incrementally maintained by an LLM accumulates value that chat-based or RAG-based approaches don't. Cross-references, contradictions, and synthesis are pre-compiled. See [[RAG vs Wiki]].

### Production Agent Architecture
[[Nate B Jones]]'s analysis of the leaked [[Claude Code]] architecture: **successful agents are 80% plumbing, 20% AI model**. The [[Agentic Harness Primitives]] framework identifies 12 infrastructure patterns that separate production systems from demos. The Claude Code ecosystem has matured rapidly — [[GStack]], [[Superpowers]], and [[Hermes Agent]] are now dedicated plugin/skill layers on top of Claude Code, each encoding a different methodology (startup thinking, TDD enforcement, self-improving loops).

### Local AI and Cost Optimization
[[Nate Herk]]'s work on [[Open-Source Model Integration]] demonstrates that Claude Code's harness and model are decoupled — substitute open-source models via [[Ollama]] (local) or [[OpenRouter]] (cloud) for 50–100x cost reduction. [[llama.cpp]] is the invisible foundation: GGUF format, quantization (Q4_K_M = 4-bit, 75% RAM reduction), optimized kernels for every platform. [[TurboQuant]] extends this further with 4x context window on the same hardware.

### Open-Source Model Landscape
The frontier is contested. Chinese labs ([[DeepSeek]], [[Qwen]]) have surpassed [[Llama]] (Meta) for most tasks. [[Gemma 4]] (Google, 31B) ranks #3 globally. [[MiniMax M2.7]] claims to outperform Claude Opus 4.6 at 20x lower cost. For 95% of use cases, open-source models are sufficient.

### Frontier Model Specialties
Each major lab has a lane: [[ChatGPT]] = ease of use; [[Claude]] = work and coding; [[Gemini]] = search and deep research (+ unique frame-by-frame video ingestion); [[Grok]] = real-time Twitter/X data.

### The Command-Line Creative Stack
March 2026 saw a cluster of releases that [[Nate B Jones]] frames as design moving to the command line. [[Google Stitch]] (voice→UI, design.md export), [[Remotion]] (video-as-code, 150k Claude Code installs), [[Blender MCP]] (natural language→3D, 17k stars). The pattern: MCP turns any tool into an agent-accessible primitive. This is Nate's "growth hack of 2026" thesis: if your product isn't an MCP server, it should be.

### Multi-Agent Orchestration
[[Paperclip]] (company-level), [[Hermes Agent]] (personal agent with self-improving loop), and the [[Multi-Agent Orchestration]] framework describe different levels of coordinating AI agents: individual session, personal agent, and company-as-agent-fleet.

### AI as Business
[[Nate Herk]]'s [[AI Automation Workflows]] covers the 5 highest-return workflows for selling AI to businesses: speed-to-lead, document processing, follow-up sequences, database reactivation, and internal reporting. Framework: find the clog in the pipe before adding more water.

## Key Pages

- [[LLM Wiki Pattern]] — the method behind this wiki
- [[Claude Code]] — primary tool; architecture documented from the leak
- [[Agentic Harness Primitives]] — 12-primitive framework for production agents
- [[Open-Source Model Integration]] — substituting models for cost reduction
- [[llama.cpp]] — the inference engine underlying local AI
- [[AI Automation Workflows]] — business framework for selling AI
- [[Google Stitch]], [[Remotion]], [[Blender MCP]] — the command-line creative stack

## Gaps & Next Steps

- No primary sources from Karpathy (the gist is the canonical source for the LLM Wiki pattern)
- AI 2027 article referenced but not ingested
- OpenClaw has no page despite being the primary comparison point for Hermes and Paperclip
- No coverage of Claude Mythos model leak (mentioned in Nate B Jones's analysis)
- Factory, ElevenLabs, and other coding agents/audio tools mentioned but not covered
