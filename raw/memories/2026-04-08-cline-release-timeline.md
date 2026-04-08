---
title: Cline release timeline (v3.13 → v4.0 → v3.18)
summary: Cline shipped three major releases between April–June 2025 — v3.13 introduced Memory Bank and checkpoints, v4.0 added YOLO Mode and Chrome browser integration, v3.18 added the Gemini CLI provider.
tags: [tool_cline, topic_ai_coding, source_worldofai_cline_v313_memory_bank, source_worldofai_cline_v4_yolo_mode]
---

# Cline release timeline

## Context

From [[summary-worldofai-cline-v313-memory-bank]], [[summary-worldofai-cline-v4-yolo-mode]], [[summary-worldofai-cline-v318]], [[summary-worldofai-readdy-cline-fullstack]], and [[summary-worldofai-claude-4-opus-sonnet-cline]]. See also [[cline]].

## Content

Cline shipped three notable releases in April-June 2025, in WorldofAI's recording date order (the version numbers diverge from semver because v4.0 was a parallel branch line, not v3.x's successor):

| Version | Date (recording) | Headline features |
|---|---|---|
| **v3.13** | 2025-05-01 | **Memory Bank** (markdown-based persistent context across sessions, written and read by Cline itself), slash-command framework (`/new-task`), **checkpoint system** (infinite undo via message editing + workspace rollback), prompt caching, Qwen 3 + Azure DeepSeek + additional OpenRouter routes |
| **v4.0** | 2025-04-15 | **YOLO Mode** (single toggle for full autonomy, no per-step permission prompts), **Chrome browser integration** (session-based debugging — Cline opens a real browser to test what it built), **10× faster diff editing** for large files, redesigned visual checkpoints with hover-over timeline, Grok 3 Mini + ByteDance Doubao support, `CMD+'` drag-drop file/folder shortcut |
| **v3.18** | 2025-06-27 | **Gemini CLI provider** (1,000 free daily Gemini 2.5 Pro requests via personal Google account), Claude Code CLI as backend provider, Claude 4 diff-edit failure rate 10% → 6%, self-knowledge via web_fetch, **35 new MCP servers** (AWS-heavy: DynamoDB, EKS, CloudWatch, Cost Explorer), auto-approve modes with terminal output size constraints |

**The structurally important release is v4.0**: YOLO Mode is the moment Cline transitions from "interactive assistant" to "true autonomous agent." Pairs naturally with the 5-tasks/day [[jules|Jules]] model for queue-and-walk-away workflows. The Chrome browser integration is also significant — it closes the build/verify loop *inside* Cline, rather than requiring an external tool like [[stagehand|Stagehand]] as an MCP server.

**Free-API workarounds documented across the releases**: [[openrouter|OpenRouter]] (pay-as-you-go), the Gemini CLI free tier (v3.18, 1K daily Pro requests), and **Requesty / Kilo** (free-credit gateways, mentioned in the Claude 4 + Cline source) — three distinct paths to using Cline at $0.

**Cline as the backend half of a no-code stack**: [[summary-worldofai-readdy-cline-fullstack|Readdy + Cline + Supabase]] is the canonical pattern — Readdy handles the frontend (React/Figma), Cline handles backend wiring, Supabase is the data layer. Distinguishing feature vs Lovable / v0.dev: at the end of the workflow you have **real React + Supabase code**, not a hosted black-box.
