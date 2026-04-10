---
type: entity
sources: ["Build BEAUTIFUL Diagrams with Claude Code (Full Workflow).md", "Why the Best AI Coding Tools Abandoned RAG (And What They Use Instead).md", "This One Command Makes Coding Agents Find All Their Mistakes (Use it Now).md", "Code 100x Faster with AI, Here's How (No Hype, FULL Process).md", "Archon OS First-Ever AI Operating System for AI Coding! (Opensource).md", "Run Supabase 100% LOCALLY for Your AI Agents.md", "The ULTIMATE Guide to Building Your Own MCP Servers (Free Template).md", "This MCP Server for AI Coding Assistants Will 10x Your Productivity.md", "Turn ANY Website into LLM Knowledge in Seconds - EVOLVED.md", "I Gave OpenClaw $10,000 to Trade Stocks.md", "coleam00Archon The first open-source harness builder for AI coding. Make AI coding deterministic and repeatable..md"]
created: 2026-04-06
updated: 2026-04-10
tags: [person, ai, claude-code, rag, educator]
---

# Cole Medin

AI educator and developer. Runs the Dynamis community. Focuses on practical Claude Code skill development, RAG architecture, and agentic engineering. Previously worked extensively on Archon (AI coding assistant with RAG).

## Channels

- **YouTube**: [Cole Medin](https://www.youtube.com/@ColeMedin) — Claude Code skills, RAG, agentic engineering
- **Community**: Dynamis community (referenced in videos)
- **GitHub**: Excalidraw diagram skill repo (linked from YouTube)

## Content in This Wiki

- [[summary-cole-medin-excalidraw-skill|Build Beautiful Diagrams with Claude Code]] — Excalidraw diagram skill with visual validation loop: generate → render PNG → agent reviews screenshot → iterate. "Argue visually" design philosophy.
- [[summary-cole-medin-rag-for-code|Why the Best AI Coding Tools Abandoned RAG]] — RAG is dead for code (structured data → agentic search) but essential for unstructured data. Bridge approach: give agents both tools, let them choose per-query.
- [[summary-cole-medin-e2e-testing|This One Command Makes Coding Agents Find All Their Mistakes]] — Self-healing AI coding workflow: 6-step E2E testing with parallel sub-agents, browser automation, DB validation, screenshot review, and PIV loop (Plan→Implement→Validate).
- [[summary-cole-medin-100x-ai-coding|Code 100x Faster with AI]] — Full coding-with-AI process: 8 golden rules, PLANNING.md/TASK.md, global rules, three core MCP servers, one-shot Supabase MCP server demo. See [[ai-coding-workflow]].
- [[summary-cole-medin-local-supabase-rag|Run Supabase 100% LOCALLY for Your AI Agents]] (2025-02-16) — adds self-hosted [[supabase|Supabase]] to the `local-ai-packaged` stack; PGVector RAG with Ollama embeddings.
- [[summary-cole-medin-mcp-server-template|The ULTIMATE Guide to Building Your Own MCP Servers]] (2025-04-13) — FastMCP + lifespan + Mem0 template; the wiki's canonical "how to build an MCP server" reference.
- [[summary-cole-medin-context7-mcp|Context7 — 10x Your AI Coding Productivity]] (2025-04-20) — RAG-powered MCP server with 1,856+ curated framework docs; the production-grade MCP server example.
- [[summary-cole-medin-crawl4ai-v2|Turn ANY Website into LLM Knowledge — EVOLVED]] (2025-04-30) — Crawl4AI three-strategy guide; auto-detecting Pydantic AI + Chroma DB template.
- [[summary-cole-medin-openclaw-trading|I Gave OpenClaw $10,000 to Trade Stocks]] (2026-04-09) — 30-day real-money AI trading experiment with [[openclaw|OpenClaw]] bots on Alpaca; sub-agent wealth adviser team methodology.
- [[summary-archon-readme|Archon — Workflow Engine for AI Coding]] (2026-04-09) — GitHub README documenting Archon's pivot from AI OS to YAML-based deterministic workflow engine for coding agents.

## Key Ideas

- **"Argue visually"**: Diagrams should convey concepts through structure and labels alone — even with all explanatory text stripped
- Visual validation loops are essential for any visual AI output: the agent must check its own work by rendering and reviewing
- RAG is dead for code because of exact identifiers + file structure + terminal tools — but very much alive for unstructured knowledge bases
- The "RAG is dead" narrative is a mind virus that causes overengineering by avoiding semantic search where it's still essential
- Bridge approach: smart agents should have both semantic search and agentic search tools and choose per-query
- **PIV loop** (Plan→Implement→Validate): Structure AI coding around a validation-first mindset; E2E testing as the V
- Self-healing coding workflow: agent fixes blocking issues during testing, reports moderate/minor for human decision — not vibe coding, but delegated validation
- The PLANNING.md + TASK.md + workspace-global-rules pattern lets user prompts stay short because all the discipline is encoded outside the prompt itself — see [[ai-coding-workflow]]
- **Never trust the LLM with env vars, DB security, or API keys** — these belong to the human, period
- **Archon** has pivoted twice: from AI agent builder → AI OS → **workflow engine for AI coding**. The current version defines development processes as YAML DAGs with deterministic + AI nodes, git worktree isolation per run, and approval gates. Framing: *"Like what Dockerfiles did for infrastructure and GitHub Actions did for CI/CD — Archon does for AI coding workflows."* See [[archon-os]].

## See Also

- [[archon-os]] — Cole's flagship project
- [[Claude Code]]
- [[RAG vs Wiki]]
- [[AutoResearch and Evals]] — related skill improvement methodology
- [[summary-cole-medin-excalidraw-skill|Source: Excalidraw Diagrams]]
- [[summary-cole-medin-rag-for-code|Source: RAG for Code]]
- [[summary-cole-medin-e2e-testing|Source: E2E Testing]]
