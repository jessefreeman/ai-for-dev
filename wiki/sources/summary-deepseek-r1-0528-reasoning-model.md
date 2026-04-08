---
type: source-summary
sources: ["Deepseek-R1-0528 BEST Opensource Reasoning Model! Powerful, Fast, & Cheap! Fully Tested + Free API.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, model, deepseek, reasoning, open-weights]
---

# DeepSeek-R1-0528: BEST Opensource Reasoning Model

**Source**: YouTube — [[worldofai|WorldofAI]], published 2025-05-28
**Model covered**: [[deepseek|DeepSeek]] R1-0528

## Summary

WorldofAI benchmarks the **R1-0528 release** of [[deepseek|DeepSeek]] R1 — an **MIT-licensed** 671B-parameter Mixture-of-Experts model with 37B active params and a 136K context window. Achieves MMLU competitive with O3-high and GPT-4 mini on chain-of-thought reasoning tasks. Available **free via [[openrouter|OpenRouter]]** (rate-limited) or **$1.95/$5 per million tokens** via DeepSeek's own API. Demoed: multi-step unit-conversion math (~107s reasoning, correct answer) and a full animated SaaS landing-page generation.

## Key facts

- **Params**: 671B total, **37B active** (MoE)
- **Context**: 136K
- **License**: **MIT** — fully unrestricted (no Commons Clause, no acceptable-use nuance)
- **Pricing**: $1.95/M input, $5/M output via DeepSeek API; **free tier on OpenRouter**
- **MMLU**: competitive with OpenAI O3-high and GPT-4 mini

## Why the release matters

R1-0528 is a refresh, not a new model — but the *combination* of MIT license + 136K context + free OpenRouter tier + reasoning-grade benchmarks is what makes it the wiki's new default recommendation for "free local-equivalent reasoning model."

This release directly enables several other tools in this batch:

- **[[codename-goose]]** — Block's Claude Code alternative; the recommended free model is exactly this one via OpenRouter
- **[[stagehand|Stagehand]] v2** — Browserbase's model eval picks DeepSeek R1 distilled Qwen 32B as fastest + cheapest
- **[[deerflow|DeerFlow]]** — ByteDance's research framework optimizes for "deep reasoning models," DeepSeek R1 explicitly named
- **[[agenticseek|AgenticSeek]]** — recommended local model

The pattern: **R1-0528 is becoming the default open-weights reasoning backbone** for the open-source agent ecosystem in mid-2025.

## Demos in the source

- **Math reasoning**: multi-step unit conversion problem; ~107 seconds of chain-of-thought; correct answer
- **SaaS landing page**: full animated UI with hero, features, pricing tiers, profile section — generated in one shot

## See Also

- [[deepseek|DeepSeek]] — entity page
- [[open-source-model-integration|Open-Source Model Integration]] — how to use this model with Claude Code
- [[openrouter|OpenRouter]] — the free-tier gateway
- [[codename-goose]], [[stagehand]], [[deerflow]], [[agenticseek]] — tools in this batch that use it as default
- [[worldofai|WorldofAI]]
