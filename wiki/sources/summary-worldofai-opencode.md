---
type: source-summary
sources: ["OpenCode FASTEST AI Coder + Opensource! BYE Gemini CLI & ClaudeCode!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, opencode, ai-coding, cli]
---

# OpenCode: FASTEST AI Coder + Opensource

**Author / channel:** [[worldofai|WorldofAI]]
**Format:** video
**Source:** [Original](../../raw/archive/OpenCode%20FASTEST%20AI%20Coder%20%2B%20Opensource%21%20BYE%20Gemini%20CLI%20%26%20ClaudeCode%21.md)
**Published:** 2025-07-01

## Summary

WorldofAI walks **OpenCode** ([github.com/sst/opencode](https://github.com/sst/opencode)) — SST's open-source terminal AI coder. Differentiators vs [[claude-code]] and Gemini CLI: native themable terminal UI, parallel multi-agent support on the same project, shareable session links for collaboration, and native support for **75+ LLM providers** through routers (Anthropic, OpenAI, Gemini, OpenRouter, Azure, Bedrock, Deepseek, **Ollama**, **LM Studio**). Demoes a SaaS landing page generation. Notes a "CLI battle royale" stress test where OpenCode was the last contestant standing against Gemini CLI and Aider.

## Key Points

- **Identity disambiguation** — there was an *earlier* "OpenCode" project that was abandoned. This is a *new* project from SST, more polished and actively developed. Don't confuse the two.
- **What it has that Claude Code / Gemini CLI don't**:
  - Native themable terminal UI (vs plain text)
  - Parallel multi-agents on the same project
  - Shareable session links for real-time collaboration
  - 75+ LLM providers via routers (not locked to one ecosystem)
  - LSP-aware code accuracy comparable to Claude Code
- **Free model paths**:
  - **Google Gemini 2.5 Pro free tier** via AI Studio key
  - **OpenRouter** free DeepSeek tiers
  - Local: Ollama / LM Studio
- **Install** — `npm install -g opencode` (or platform installer); `opencode` to start, `opencode --cwd <path>` to scope.
- **Slash commands** — `/models`, `/share`, `/sessions`, `/themes`, `/editor`, plus per-session config via `opencode.json` (providers, MCP servers, key bindings).
- **MCP support** — local MCP servers configurable in `opencode.json`.

## Sponsorship & Bias Notes

No sponsor disclosed. WorldofAI does have a track record of overstating "this kills X" framings — the actual claim ("better-themed UI, parallel agents, BYO model") is accurate; the headline is hype.

## Connected Pages

- [[opencode]] — entity
- [[claude-code]] — primary competitor
- [[cline]], [[void-ide]] — sibling open-source agentic coders
- [[mcp]] — supported via opencode.json
- [[worldofai|WorldofAI]] — channel hub
