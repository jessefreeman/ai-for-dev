---
type: entity
sources: ["Build BEAUTIFUL Diagrams with Claude Code (Full Workflow).md", "Why the Best AI Coding Tools Abandoned RAG (And What They Use Instead).md", "This One Command Makes Coding Agents Find All Their Mistakes (Use it Now).md", "Code 100x Faster with AI, Here's How (No Hype, FULL Process).md"]
created: 2026-04-06
updated: 2026-04-07
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

## See Also

- [[Claude Code]]
- [[RAG vs Wiki]]
- [[AutoResearch and Evals]] — related skill improvement methodology
- [[summary-cole-medin-excalidraw-skill|Source: Excalidraw Diagrams]]
- [[summary-cole-medin-rag-for-code|Source: RAG for Code]]
- [[summary-cole-medin-e2e-testing|Source: E2E Testing]]
