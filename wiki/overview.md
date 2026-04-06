---
type: overview
sources: ["Andrej Karpathy Just 10x'd Everyone's Claude Code.md", "I Broke Down Anthropic's $2.5 Billion Leak. Your Agent Is Missing 12 Critical Pieces..md", "Ollama + Claude Code = 99% CHEAPER.md", "Google just dropped Gemma 4... (WOAH).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [ai, llm, knowledge-management, agent]
---

# Overview

This knowledge base tracks research on AI tools, techniques, and knowledge management — with a growing focus on production agent architecture and cost-effective AI workflows.

## Current State

Four sources ingested. The wiki has expanded from its original LLM wiki pattern focus to cover production agent engineering and open-source model workflows.

## Key Themes

### Knowledge Compounding
The central insight from [[Andrej Karpathy]]'s [[LLM Wiki Pattern]]: a wiki incrementally maintained by an LLM accumulates value in a way that chat-based or RAG-based approaches don't. Cross-references, contradictions, and synthesis are pre-compiled. See [[RAG vs Wiki]].

### Production Agent Architecture
[[Nate B Jones]]'s analysis of the leaked [[Claude Code]] architecture reveals that **successful agents are 80% plumbing, 20% AI model**. The [[Agentic Harness Primitives]] framework identifies 12 infrastructure patterns that separate production systems from demos: crash-resistant sessions, explicit workflow state, permission audit trails, typed event streaming, token budgeting, and more.

### AI Tooling Cost Optimization
[[Nate Herk]]'s work on [[Open-Source Model Integration]] demonstrates that Claude Code's harness and model are decoupled — you can substitute open-source models via Ollama (local) or OpenRouter (cloud) for 50–100x cost reduction on lower-stakes tasks. [[Gemma 4]] (Google, Apache 2.0) is a standout: 31B parameters ranking #3 among all open models worldwide.

### Open-Source Model Maturity
The gap between open-source and closed-source models is narrowing fast. Qwen 3.5 outperforms Claude Sonnet 3.7 on SWE-bench; Gemma 4 31B matches Qwen 3.5's ELO at a fraction of the parameters. The practical takeaway: hybrid workflows (frontier models for complex coding, local models for routine tasks) are now viable.

## Key Pages

- [[LLM Wiki Pattern]] — the core method behind this wiki
- [[Claude Code]] — primary tool; internal architecture now documented from the leak
- [[Agentic Harness Primitives]] — 12-primitive framework for production agents
- [[Open-Source Model Integration]] — how to run Claude Code with non-Anthropic models
- [[RAG vs Wiki]] — why structured wikis beat semantic search for personal knowledge bases

## Gaps & Next Steps

- No primary sources from Karpathy himself (the gist would be valuable to ingest directly).
- The AI 2027 article is referenced but not yet ingested — would add depth on AI forecasting.
- No sources on traditional RAG implementations for direct comparison.
- No coverage of the Claude Mythos model leak referenced in the Nate B Jones video.
- Token management strategies for long-running Claude Code sessions not yet covered as a dedicated concept.
