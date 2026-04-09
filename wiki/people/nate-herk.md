---
type: entity
sources: ["Andrej Karpathy Just 10x'd Everyone's Claude Code.md", "Ollama + Claude Code = 99% CHEAPER.md", "Planning In Claude Code Just Got a Huge Upgrade.md", "I Tested Claude's New Managed Agents... What You Need To Know.md"]
created: 2026-04-06
updated: 2026-04-09
tags: [person, ai, youtube, automation]
---

# Nate Herk

YouTube creator focused on AI automation and practical Claude Code workflows. Runs UpAI and hosts the AI Automation Society community on Skool.

## Channels

- **YouTube**: [Nate Herk | AI Automation](https://www.youtube.com/@nateherk) — practical AI automation tutorials
- **Community**: AI Automation Society on Skool (free + paid tiers) — courses, unlimited support, resource docs
- **Site**: skool.com/ai-automation-society-plus

## Content in This Wiki

- [[summary-karpathy-10x-claude-code|Andrej Karpathy Just 10x'd Everyone's Claude Code]] — Demonstrates Karpathy's [[LLM Wiki Pattern]] in practice; shows two working wikis and the executive assistant integration
- [[summary-nate-herk-ollama-claude-code|Ollama + Claude Code = 99% CHEAPER]] — Two methods for running Claude Code with open-source models (local via [[Ollama]], cloud via [[OpenRouter]])
- [[summary-nate-herk-paperclip|Claude Code + Paperclip Just Destroyed OpenClaw]] — Demonstrates [[Paperclip]] for multi-agent orchestration; building a persistent AI "company" using Claude Code agents with heartbeats, ticketing, and a CEO/engineer/QA hierarchy
- [[summary-nate-herk-500-ai-workflows|I've Built 500 AI Workflows, This is What Businesses Want in 2026]] — The 5 highest-value AI automation workflows for selling to businesses, plus the clogged pipe framework for identifying which one a client needs
- [[summary-nate-herk-ultra-plan|Planning In Claude Code Just Got a Huge Upgrade]] — Walkthrough of Claude Code's new [[claude-code|Ultra Plan]] feature: cloud-hosted Opus 4.6 with 3 parallel exploration agents + 1 critique agent. Side-by-side dashboard build shows Ultra Plan at ~10–15 min vs local plan at ~45 min total.
- [[summary-nate-herk-zep-memory|Unlock the Next Evolution of Agents with Human-like Memory (n8n + Zep)]] — Long-term knowledge-graph memory for [[n8n]] agents via [[zep]]; the cost-trap fix that drops per-turn tokens ~2.4×.
- [[summary-nate-herk-managed-agents|I Tested Claude's New Managed Agents]] — Hands-on review of [[managed-agents|Anthropic Managed Agents]]: cloud sandbox runtime at $0.08/hr; great onramp for Claude.ai users, missing crons/heartbeats for power users; three private-preview features (Outcomes, Multi-Agent Orchestration, Persistent Memory) define whether it becomes a real Claude Code competitor.
- [[summary-nate-herk-faceless-shorts-n8n|How I Automated Faceless Shorts with AI in n8n]] — Free n8n template for fully automated faceless YouTube Shorts via Ideas Agent + Creator Agent + [[json-to-video|JSON-to-Video]] + 11Labs + Suno; the canonical n8n + generative-media short-form pipeline.

## Key Ideas

- Demonstrated ingesting 36 YouTube transcripts in ~14 minutes and a long article in ~10 minutes using Claude Code
- "Claude Code is the car, the AI model is the engine" — framing for why model swapping works
- Pointed out that setting only `ANTHROPIC_MODEL` in OpenRouter config causes silent fallback to paid Anthropic Haiku for tool calls
- Human-as-board pattern: operate Paperclip in 30-minute board sessions (set high-level goals, approve hires) rather than managing individual agent sessions
- "Businesses don't want fancy AI — they want boring workflows that save time, save money, or remove mistakes"
- The clogged pipe diagnostic: *"If 500 new clients showed up tomorrow, what would break first?"* — reveals the real bottleneck
- **"Give me 6 hours to chop down a tree and I will spend the first four sharpening the axe"** — quoted re: planning. Spending more tokens upfront on planning is worth it if execution is faster and higher-quality
- Ultra Plan in Claude Code uses **3 parallel exploration agents + 1 critique agent** running cloud-hosted Opus 4.6 — multi-agent exploration is the structural reason it produces better plans than local single-agent linear thinking

## See Also
- [[Claude Code]]
- [[LLM Wiki Pattern]]
- [[Open-Source Model Integration]]
- [[Paperclip]]
- [[Multi-Agent Orchestration]]
- [[AI Automation Workflows]]
- [[Andrej Karpathy]]
