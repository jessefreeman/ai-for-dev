---
type: source-summary
sources: ["DeerFlow FULLY FREE Local DEEP Research Agent - Powerful AI Agent Can Do Anything!.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, deep-research, multi-agent, langgraph, open-source, bytedance]
---

# DeerFlow: FULLY FREE Local DEEP Research Agent

**Source**: YouTube — [[worldofai|WorldofAI]], published 2025-05-31
**Tool covered**: [[deerflow|DeerFlow]]

## Summary

[[deerflow|DeerFlow]] is **ByteDance's** open-source deep-research framework — a self-hostable [[langgraph|LangGraph]]-based multi-agent system that mimics the Manus / GenSpark / OpenAI Deep Research workflow with a **Coordinator → Planner → Research Team (agents + coder)** topology. Notable for being a **frontier-lab open-source release** (ByteDance is the wiki's first first-party Chinese-megacap contribution). Optimized for deep reasoning models (DeepSeek R1, Qwen) but works with any OpenAI-compatible endpoint including [[ollama|Ollama]], LM Studio, and [[openrouter|OpenRouter]] free tiers.

## Architecture

The Coordinator → Planner → Reporter pattern is the load-bearing idea:

1. **Coordinator** receives the user prompt, decides scope
2. **Planner** decomposes into multi-step research plan
3. **Research Team** — agents (search/MCP/RAG) and a coder agent execute each step in parallel
4. **Reporter** stitches outputs into final brief, including citations, images, charts

Supports human-in-the-loop checkpoints between phases. Built-in: web search, code execution, RAG, MCP integrations, **podcast generation**, **presentation generation**.

## Demo

"Brief me on GitHub trending repos" → top 10 repos with overview, analysis, images, and citations in ~2 minutes.

## What's notable

- **First wiki entry from ByteDance** — Chinese megacap publishing a serious open-source agent framework
- Built on **[[langgraph|LangGraph]]** — adds another data point to the [[langchain|LangChain]] org's downstream impact
- **Local-first by default** — Ollama/LM Studio support is first-class, not an afterthought
- Targets the same use case as [[archon-os|Archon OS]] but biases toward research-output formats (briefs, podcasts) vs Archon's code-task-orchestration framing

## Sources

- [[deerflow|DeerFlow]]
- [[langgraph|LangGraph]] — the framework underneath
- [[multi-agent-orchestration|Multi-Agent Orchestration]]
- [[mcp|MCP]]
- [[openmanus|OpenManus]] / [[manus|Manus]] — sibling general-research-agent thread
- [[worldofai|WorldofAI]]
