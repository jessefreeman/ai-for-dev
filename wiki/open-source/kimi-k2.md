---
type: entity
created: 2026-04-07
updated: 2026-04-07
tags: [open-source, model, moe]
---

# Kimi K2

Moonshot AI's open-weights mixture-of-experts model. **32B activated parameters, 1T training tokens.** Two variants: K2-Base (for fine-tuning) and K2-Instruct ("reflex-grade" instruction-tuned for general use and agentic workflows).

## Why it matters

K2 is the open-weights model that credibly claims to beat GPT-4 series and stand toe-to-toe with Sonnet 4 / Opus 4 on coding and agentic benchmarks — at an order of magnitude lower cost. Joins [[deepseek]], [[qwen]], [[llama]], [[gemma-4]] as a top-tier open-weights option.

## Pricing

- **$0.15 per million input tokens**
- **$2.50 per million output tokens**

For comparison, ~10x cheaper than Sonnet at output.

## Caveat: latency

At launch, hosted K2 inference is slow. Moonshot is actively optimizing. This is exactly the gap [[kimi-coder]] fills with a dedicated single-shot pipeline.

## Sources

- [[summary-worldofai-kimi-coder|WorldofAI Kimi Coder walkthrough]] — covers both K2 and the Coder app

## See Also

- [[kimi-coder]] — the K2-powered app builder
- [[deepseek]], [[qwen]], [[llama]], [[gemma-4]] — sibling open-weights models
- [[minimax-m1]] — adjacent open-weights MoE play
