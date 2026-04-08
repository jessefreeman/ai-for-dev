---
type: entity
sources: ["DeerFlow FULLY FREE Local DEEP Research Agent - Powerful AI Agent Can Do Anything!.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [open-source, deep-research, multi-agent, langgraph, bytedance, local-first]
---

# DeerFlow

ByteDance's open-source deep-research framework. Self-hostable [[langgraph|LangGraph]]-based multi-agent system with a **Coordinator → Planner → Research Team → Reporter** topology. Optimized for deep reasoning models (DeepSeek R1, Qwen) but accepts any OpenAI-compatible endpoint, including [[ollama|Ollama]], LM Studio, and [[openrouter|OpenRouter]] free tiers.

- **Vendor**: **ByteDance** (the wiki's first first-party Chinese megacap contribution)
- **Repo**: github.com/bytedance/deer-flow
- **Site**: deerflow.tech
- **Built on**: [[langgraph|LangGraph]]

## Architecture

```
Coordinator (scope) → Planner (multi-step plan) → Research Team (search/MCP/RAG/coder agents in parallel) → Reporter (citations + images + charts)
```

Human-in-the-loop checkpoints between phases. Built-in capabilities: web search, code execution, RAG, MCP integrations, **podcast generation**, **presentation generation**.

## Demo

"Brief me on GitHub trending repos" → top-10 repos with overview, analysis, images, and citations in ~2 minutes.

## Why it matters

- **First ByteDance entry** in the wiki — signals Chinese megacaps are now publishing serious open-source agent frameworks, not just models
- Adds another data point to **[[langchain|LangChain]]'s** downstream impact ([[open-swe|Open-SWE]] is the other LangGraph-built frontier project here)
- **Local-first** by default — Ollama / LM Studio integration is first-class, not an afterthought
- Targets the same use case as [[archon-os|Archon OS]] but biases toward **research-output formats** (briefs, podcasts, slides) vs Archon's code-task-orchestration framing

## Sources

- [[summary-deerflow-local-research-agent|DeerFlow: FULLY FREE Local DEEP Research Agent]] — [[worldofai|WorldofAI]] walkthrough; GitHub trending demo

## See Also

- [[langgraph|LangGraph]] — the underlying framework
- [[langchain|LangChain]] — the org behind LangGraph
- [[multi-agent-orchestration|Multi-Agent Orchestration]]
- [[mcp|MCP]]
- [[archon-os|Archon OS]] — sibling research/orchestration tool
- [[deepseek|DeepSeek]] / Qwen — recommended local reasoning models
- [[open-swe|Open-SWE]] — sibling LangGraph-built async coding agent
