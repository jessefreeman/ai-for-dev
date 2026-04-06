---
type: index
updated: 2026-04-06
description: "Jesse Freeman's personal AI research wiki — AI tools, techniques, and workflows for developers. Maintained by Claude Code."
socialImage: og-image.png
---

# AI for Developers — Jesse Freeman's Second Brain

I'm [Jesse Freeman](https://jessefreeman.com), founder of [BFreeLabs](https://bfreelabs.ai), and this is my personal AI research wiki: a living knowledge base focused on AI tools, techniques, and workflows for developers.

I built this after watching [Nate Herk's video](https://www.youtube.com/watch?v=sboNwYmH3AY) on [Andrej Karpathy's LLM Wiki idea](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) — the concept of using an LLM to maintain a structured, interlinked wiki instead of relying on chat history or RAG. Every page here is written and cross-referenced by Claude Code from source material I collect. I add the sources, Claude does the filing.

New content appears as I read, watch, and research. The site updates automatically.

## Start here

- [[overview|Overview]] — The big picture: what's in this wiki and why it exists.
- [[llm-wiki-pattern|LLM Wiki Pattern]] — How this wiki is built and maintained.
- [[rag-vs-wiki|RAG vs Wiki]] — Why a structured wiki beats semantic search for personal knowledge bases.

## Browse by category

### People
- [[andrej-karpathy|Andrej Karpathy]] — AI researcher, creator of the LLM Wiki pattern.
- [[nate-herk|Nate Herk]] — YouTube creator who demonstrated the LLM Wiki in practice.
- [[nate-b-jones|Nate B Jones]] — AI strategy educator; analyzed the Claude Code architecture leak.
- [[matthew-berman|Matthew Berman]] — AI YouTuber focused on open-source models and local inference.
- [[tim-carambat|Tim Carambat]] — Founder of AnythingLLM; covers local AI inference and TurboQuant.
- [[damian-malliaros|Damian Malliaros]] — AI creator focused on Claude Code cost optimization and app building.

### Tools
- [[claude-code|Claude Code]] — Anthropic's CLI tool, the engine behind this wiki.
- [[obsidian|Obsidian]] — Markdown note-taking app used as the visual frontend.
- [[obsidian-web-clipper|Obsidian Web Clipper]] — Browser extension for clipping articles into raw/.
- [[ollama|Ollama]] — Local model runner for running open-source LLMs on consumer hardware.
- [[openrouter|OpenRouter]] — Unified API gateway for hundreds of AI models, including free tiers.
- [[gemma-4|Gemma 4]] — Google's high-efficiency open-weights model family; 31B ranks #3 globally.
- [[paperclip|Paperclip]] — Open-source multi-agent orchestration dashboard; MIT licensed.
- [[anything-llm|AnythingLLM]] — All-in-one local AI app for document chat, agents, and automations.
- [[minimax-m2-7|MiniMax M2.7]] — Closed-source model claiming to outperform Opus 4.6 at 20x lower cost.

### Concepts
- [[llm-wiki-pattern|LLM Wiki Pattern]] — Method for building LLM-maintained personal knowledge bases in markdown.
- [[agentic-harness-primitives|Agentic Harness Primitives]] — 12-primitive framework for production-grade agent systems.
- [[open-source-model-integration|Open-Source Model Integration]] — Running Claude Code with local or third-party models to reduce cost.
- [[multi-agent-orchestration|Multi-Agent Orchestration]] — Coordinating multiple AI agents with distinct roles toward shared goals.
- [[turboquant|TurboQuant]] — KV cache optimization enabling 4x more context window on the same consumer hardware.

### Analyses
- [[rag-vs-wiki|RAG vs Wiki]] — Comparison of semantic search RAG vs the LLM Wiki approach.

### Business
- [[ai-automation-workflows|AI Automation Workflows]] — The 5 highest-value AI automations to sell to businesses, plus the clogged pipe sales framework.

### Sources
- [[ai-2027|AI 2027]] — Forecasting article used as a demo ingest source.
- [[summary-karpathy-10x-claude-code|Karpathy 10x'd Claude Code]] — YouTube transcript: Nate Herk demonstrates the LLM Wiki in practice.
- [[summary-nate-jones-12-agent-primitives|12 Agent Primitives]] — Nate B Jones analyzes the Claude Code leak for production agent patterns.
- [[summary-nate-herk-ollama-claude-code|Ollama + Claude Code]] — Nate Herk's guide to running Claude Code with local and free cloud models.
- [[summary-matthew-berman-gemma4|Google Drops Gemma 4]] — Matthew Berman covers Gemma 4 benchmarks and release.
- [[summary-nate-herk-paperclip|Claude Code + Paperclip]] — Nate Herk demonstrates multi-agent orchestration with Paperclip.
- [[summary-tim-carambat-turboquant|TurboQuant]] — Tim Carambat covers TurboQuant's impact on local model context windows.
- [[summary-damian-malliaros-minimax-m27|MiniMax M2.7 + Claude Code]] — Damian Malliaros demos building a ClickUp clone with MiniMax at 95% lower cost.
- [[summary-nate-herk-500-ai-workflows|500 AI Workflows]] — Nate Herk's 5 highest-value automation workflows for business clients.

## Contribute or build your own

This wiki is open source at [github.com/jessefreeman/ai-for-dev](https://github.com/jessefreeman/ai-for-dev). If you spot something wrong or want to improve a page, open a pull request — the site rebuilds automatically as content is added.

Want to build your own? Clone the repo, delete `wiki/` and `raw/`, then follow the instructions in the README to start from scratch with your own content.
