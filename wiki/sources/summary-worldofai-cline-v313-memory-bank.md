---
type: source-summary
sources: ["Cline v3.13 UPDATE Fully FREE Autonomous AI Coding Agent! (Memory Bank, Slash Commands).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, cline, ai-coding, memory-bank]
---

# Cline v3.13: Memory Bank, Slash Commands, Checkpoints

**Source**: YouTube — [[worldofai|WorldofAI]], published 2025-05-01
**Tool**: [[cline|Cline]]

## Summary

Walkthrough of Cline v3.13's release. Headline features: **Memory Bank** (markdown-based persistent context across sessions, written and read by Cline itself), a **slash-command framework** (`/new-task`, jump-to-chat-input), a **checkpoint system** for infinite undo via message editing and workspace rollback, **prompt caching** for cheaper token usage, and expanded model support (Qwen 3, Azure DeepSeek, additional OpenRouter routes).

## Key facts

- **Memory Bank**: structured markdown the agent maintains across sessions; survives session resets
- **Slash commands**: `/new-task` and a jump-to-chat-input shortcut; framework for more
- **Checkpoint system**: edit a previous message to roll the workspace back to that point — infinite undo
- **Prompt caching**: provider-side caching to reduce per-turn token cost
- **New model support**: Qwen 3, Azure DeepSeek, additional Google Gemini and OpenRouter routes

## Why it matters

This is the v3 → v4 lead-up. Memory Bank is the load-bearing piece — it's Cline's answer to the [[open-brain|OpenBrain]] / [[zep|Zep]] memory thread, but built into the agent harness instead of bolted on as an MCP server. The checkpoint system is the v3 version of what every agent harness needs (per [[agentic-harness-primitives|Agentic Harness Primitives]] §3 "session persistence that survives crashes").

## See Also

- [[cline|Cline]]
- [[summary-worldofai-cline-v4-yolo-mode|Cline v4.0 (next release)]]
- [[agentic-harness-primitives|Agentic Harness Primitives]]
- [[worldofai|WorldofAI]]
