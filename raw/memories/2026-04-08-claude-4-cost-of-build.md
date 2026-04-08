---
title: Claude 4 Sonnet generates a SaaS landing page for ~$2.60 via Cline
summary: Concrete cost-of-build data point from WorldofAI's Claude 4 + Cline demo; Sonnet at $3/$15 per million tokens generates a full SaaS landing page for ~$2.60.
tags: [tool_claude, tool_cline, topic_cost_of_build, topic_saas_death_spiral, source_worldofai_claude_4_opus_sonnet_cline]
---

# Claude 4 Sonnet generates a SaaS landing page for ~$2.60 via Cline

## Context

From [[summary-worldofai-claude-4-opus-sonnet-cline|Claude 4 Opus/Sonnet + Cline]]. See also [[claude]], [[cline]], [[saas-death-spiral]].

## Content

**Claude 4 launch pricing** (May 2025 generation):

| Tier | Input | Output | Notable |
|---|---|---|---|
| **Opus 4** | $15/1M | $75/1M | #1 SWE-bench Verified at launch; one-shot full-stack capability |
| **Sonnet 4** | $3/1M | $15/1M | Faster than Opus; "$2.60 SaaS landing page" demo |

**The data point**: WorldofAI generates a full SaaS landing page (hero, features, pricing, animations) using **Claude Sonnet 4 inside Cline** for **~$2.60 in tokens**. Opus 4 in the same demo one-shots a full Browserbase agent (backend + frontend) from a single prompt — cost not specified but in the same low-dollar order.

**Why this matters**: this is the first time the wiki has a **concrete dollar number** for AI-generated full-stack work. Every prior source has been qualitative ("cheap," "much cheaper"). $2.60 for a landing page that previously cost a freelancer $500-2000 is the kind of evidence the [[saas-death-spiral|SaaS death spiral]] thesis needed to move from "this is happening" to "here's the math."

**Free-API workarounds** the source mentions: **Requesty** and **Kilo** are free-credit gateways that let Cline users skip Anthropic billing entirely. These are distinct from [[openrouter|OpenRouter]] (pay-as-you-go) — they're a sub-pattern of [[open-source-model-integration|Open-Source Model Integration]] specifically for users who want true $0 builds. Worth tracking as an emerging category.

**Caveat**: the demo is a single landing page. Real production work involves debugging, iteration, and edge cases — the per-page cost in a real project is typically several × the demo. But the order of magnitude is the part that matters: AI-generated full-stack work is now in **single dollars**, not hundreds.
