---
type: source-summary
sources: ["Cline v3.18 HUGE UPDATE Fully FREE Autonomous AI Coding Agent! Gemini CLI + Claude Code!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, cline, ai-coding]
---

# Cline v3.18 HUGE UPDATE

**Author / channel:** [[worldofai|WorldofAI]]
**Format:** video
**Source:** [Original](../../raw/archive/Cline%20v3.18%20HUGE%20UPDATE%20Fully%20FREE%20Autonomous%20AI%20Coding%20Agent%21%20Gemini%20CLI%20%2B%20Claude%20Code%21.md)
**Published:** 2025-06-27

## Summary

Cline v3.15→v3.18 release notes covered: Gemini CLI integration (1,000 free Gemini 2.5 Pro requests/day via personal Google account), Claude Code CLI as a model provider, Claude 4 optimization (diff-edit failure rate 10% → 6% production; hard-mode benchmark 64.4% → 84.3%), self-knowledge via web fetch on Cline's own docs, free Grok 3, SAP AI Core, terminal customization, and 35 new MCP servers (DynamoDB, EKS, CloudWatch, Cost Explorer, etc.).

## Key Points

- **Gemini CLI provider** — Cline now uses Google's Gemini CLI as a backend; 1,000 free daily requests on Gemini 2.5 Pro/Flash by signing into a personal Google account. No API key required.
- **Claude Code CLI as provider** — you can now point Cline at the Anthropic CLI tool as the LLM backend, layering Cline's UX on top of Claude Code's session.
- **Diff-edit reliability** — Claude 4 + tuning dropped production diff-edit failures from 10% to 6%; on internal "hard mode" eval, success jumped from 64.4% to 84.3%. Token waste from retries cut materially.
- **Self-knowledge** — Cline's `web_fetch` tool (via Claude 4 / Gemini 2.5 Pro) can now read its own docs to answer "how do I use feature X" in-session.
- **35 new MCP servers** — AWS-heavy: DynamoDB, EKS, CloudWatch, Cost Explorer. Natural-language ops on cloud infra without leaving the IDE.
- **Free Grok 3** — added as a no-cost provider for code generation/edits (acceptable for non-critical work, not best-in-class).

## Connected Pages

- [[cline]] — entity
- [[claude-code]] — Cline can now wrap Claude Code as a backend
- [[mcp]] — 35 new servers expand the ecosystem materially
- [[continue]] — adjacent open-source IDE assistant
- [[worldofai|WorldofAI]] — author hub
