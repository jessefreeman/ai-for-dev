---
title: Kimi K2 pricing — ~10× cheaper than Sonnet at output
summary: Moonshot's Kimi K2 open-weights MoE (32B active / 1T training tokens) prices at $0.15/M input, $2.50/M output — roughly an order of magnitude cheaper than Sonnet for comparable coding output.
tags: [tool_kimi_k2, concept_open_weights, topic_pricing, source_worldofai_kimi_coder]
---

# Kimi K2 pricing — ~10× cheaper than Sonnet

## Context

From [[summary-worldofai-kimi-coder|Kimi Coder walkthrough]]. Entities: [[kimi-k2]], [[kimi-coder]].

## Content

[[kimi-k2|Kimi K2]] is Moonshot AI's open-weights mixture-of-experts model:

- **32B activated parameters** (MoE)
- **1 trillion training tokens**
- **"Reflex-grade" instruction-following** (Moonshot's term for non-deliberative agentic responsiveness)
- Two variants: **K2-Base** (for fine-tuning) and **K2-Instruct** (general use + agentic workflows)

**Pricing**:
- **$0.15 per million input tokens**
- **$2.50 per million output tokens**

For comparison, ~10× cheaper than Sonnet for output. WorldofAI's claim: K2 outperforms GPT-4 series and stands toe-to-toe with Sonnet 4 / Opus 4 on coding and agentic benchmarks (among non-thinking models).

**Latency caveat**: at launch, hosted K2 inference is slow. Moonshot is actively optimizing. This is the gap [[kimi-coder|Kimi Coder]] (a fork of Nutlope's Llama Coder repointed at K2 via Together AI) fills with a dedicated single-shot pipeline.

**Position in the open-weights field**: joins [[deepseek]], [[qwen]], [[llama]], [[gemma-4]], [[minimax-m1]] as a top-tier open-weights alternative to closed frontier models.
