---
title: Google Jules is the first first-party Google async coding agent in the wiki
summary: Jules launched at Google I/O 2025 as a free cloud-based async coder on Gemini 2.5 Pro; closes the long-standing gap that Open-SWE was tracked against.
tags: [tool_jules, org_google, topic_async_coding_agents, source_worldofai_google_jules]
---

# Google Jules is the first first-party Google async coding agent in the wiki

## Context

From [[summary-worldofai-google-jules|Google Jules launch coverage]]. See also [[jules]], [[open-swe]], [[google]], [[gemini]].

## Content

**[[jules|Google Jules]]** is Google's free cloud-based async AI coding agent, launched at Google I/O 2025. Built on **Gemini 2.5 Pro**, served from `jules.google`.

**Workflow**: connect a GitHub repo → describe a task in natural language → Jules reads the entire codebase, builds a plan, executes in a sandboxed VM, opens a PR, and produces an **audio summary** of the changes. Free tier capped at **5 tasks/day** per Google account.

**Why this entry matters in the wiki**: until this source was ingested, [[open-swe|Open-SWE]] (LangChain's open-source async coder) was tracked as "the open-source Jules alternative" — but Jules itself had no entity page because no first-party source had been ingested. This source closes the loop. The relationship is now: Jules is the official Google product (cloud-only, 5 tasks/day cap), Open-SWE is the bring-your-own-model self-hostable version of the same workflow shape.

**Position in the agent-coding landscape**:

| | [[claude-code|Claude Code]] | [[codex|Codex]] | **Jules** | [[open-swe|Open-SWE]] |
|---|---|---|---|---|
| Vendor | Anthropic | OpenAI | **Google** | LangChain (OSS) |
| Surface | CLI | CLI + Mac app | **Cloud / web** | Self-hostable |
| Async | Yes (Ultra Plan) | Yes | **Yes (cloud-native)** | Yes |
| Free tier | Pro $17 | Plus $20 | **Free, 5 tasks/day** | Free, BYO model |

**Sibling launch**: Google shipped [[google-stitch|Google Stitch]] (UI design) at the same Google I/O 2025 event, also free, also Gemini-powered. The pair is the strongest near-term signal in the [[saas-death-spiral|SaaS death spiral]] thread — a frontier lab giving away two production-grade tools targeted at paid incumbents (Codex/Copilot, v0.dev/Figma).

**Caveat**: the headline "Jules wrote 2,000+ LOC vs Codex's 77" demo from WorldofAI's launch video is a single side-by-side example, not a benchmark. The *direction* of the gap is real; the exact ratio is not load-bearing.
