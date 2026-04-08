---
title: DeepSeek R1-0528 is the default open-source reasoning backbone (mid-2025)
summary: R1-0528's MIT license + free OpenRouter tier made it the default free model for the major open-source agent frameworks released in May–June 2025.
tags: [tool_deepseek, topic_local_ai, topic_cost_reduction, source_deepseek_r1_0528_reasoning_model]
---

# DeepSeek R1-0528 is the default open-source reasoning backbone

## Context

From [[summary-deepseek-r1-0528-reasoning-model|WorldofAI's R1-0528 benchmark]]. See also [[deepseek]], [[open-source-model-integration]], and the four tools below that converged on it.

## Content

DeepSeek R1-0528 (released late May 2025) is a Mixture-of-Experts model with **671B total parameters, 37B active**, a **136K context window**, and is licensed under **MIT** with no acceptable-use restrictions or Commons Clause. It is available **free via OpenRouter** (rate-limited) or paid at $1.95/M input + $5/M output via DeepSeek's own API. Benchmark MMLU is competitive with OpenAI O3-high and GPT-4 mini.

Within ~3 weeks of the R1-0528 release, **four major open-source agent frameworks** independently shipped with R1-0528 (or its distillations) as the recommended default model:

1. **Codename Goose** (Block) — recommended free model via OpenRouter
2. **Stagehand v2** (Browserbase) — Stagehand's own model eval picked R1-distilled Qwen 32B as fastest+cheapest
3. **DeerFlow** (ByteDance) — explicitly named in the deep-research framework's recommended models
4. **AgenticSeek** — recommended local reasoning model (alongside Qwen 3)

The structural reason is the combination of MIT license (no commons-clause carve-outs that block commercial agent products), 136K context (enough for serious reasoning chains), and the OpenRouter free tier (no API account-creation friction for new users). This combination broke the chicken-and-egg problem that had kept earlier open-weights models out of default-recommended slots.
