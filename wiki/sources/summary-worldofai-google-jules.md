---
type: source-summary
sources: ["Google Jules New FULLY FREE Async AI Coder Is INSANE! RIP Codex and Copilot!.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, google, jules, async-coding, gemini, codex-alternative]
---

# Google Jules: New FULLY FREE Async AI Coder

**Source**: YouTube — [[worldofai|WorldofAI]], published 2025-05-21
**Tools covered**: [[jules|Google Jules]], [[gemini|Gemini]] 2.5 Pro

## Summary

WorldofAI walks through **[[jules|Google Jules]]**, Google's free cloud-based async AI coder built on **Gemini 2.5 Pro**, launched at Google I/O 2025. Jules autonomously plans and executes coding tasks against a connected GitHub repo — bug fixes, refactors, test generation, full feature builds — in a sandboxed VM, then opens a pull request with an audio summary of the changes. The headline data point: a side-by-side test against [[codex|OpenAI Codex]] using the same CRM dashboard prompt produced **2,000+ lines of working Express + React + Tailwind code from Jules vs 77 lines from Codex**. Free tier capped at **5 tasks per day** per Google account.

## Key facts

- **Vendor**: Google (DeepMind / Labs); launched at Google I/O 2025
- **Model**: Gemini 2.5 Pro
- **Surface**: Cloud-based; web UI at jules.google
- **Workflow**: Connects to a GitHub repo → reads full codebase → plans → executes in sandboxed VM → opens PR → audio summary of changes
- **Free tier**: 5 tasks/day per account
- **Comparison demo**: 2,000+ lines (Jules) vs 77 lines (Codex) on the same CRM dashboard prompt

## Why it matters

Jules closes a long-standing gap in the wiki. Until this batch, [[open-swe|Open-SWE]] was tracked as "the open-source alternative to Google Jules" — but **Jules itself had no entity page** because no first-party source had been ingested. This source closes that loop.

The product positioning is also load-bearing for the [[saas-death-spiral|SaaS death spiral]] thread: Google shipping a free async coding agent with Gemini 2.5 Pro behind it is the kind of move that breaks per-seat coding-tool pricing for everyone downstream. Codex / Copilot / Cursor all have to respond.

The Jules vs Codex code-volume comparison should be cited carefully — it's a single demo, not a benchmark, and the prompt was provided by the demo presenter. But the *direction* of the gap (orders of magnitude) is the part that matters for tracking competitive position.

## Position vs siblings

| | [[claude-code\|Claude Code]] | [[codex\|Codex]] | **Jules** | [[open-swe\|Open-SWE]] |
|---|---|---|---|---|
| Vendor | Anthropic | OpenAI | **Google** | LangChain (OSS) |
| Surface | CLI | CLI + Mac app | **Cloud / web** | Self-hostable |
| Async | Yes (Ultra Plan) | Yes | **Yes (cloud-native)** | Yes |
| Free tier | Pro $17 | Plus $20 | **Free, 5 tasks/day** | Free, BYO model |

## See Also

- [[jules|Google Jules]]
- [[google|Google]]
- [[gemini|Gemini]]
- [[open-swe|Open-SWE]] — the open-source alternative
- [[codex|Codex]] — the OpenAI sibling
- [[saas-death-spiral|SaaS Death Spiral]]
- [[worldofai|WorldofAI]]
