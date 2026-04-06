---
title: Quantization Naming Convention — Q4_K_M Decoded
summary: How to read llama.cpp's quantization naming scheme: Q=quantized, 4=4-bit precision, K_M=quality-tuned compression variant.
tags: tool_llama_cpp, topic_quantization, topic_local_ai, source_ibm_llama_cpp
---

# Quantization Naming Convention — Q4_K_M Decoded

## Context

From [[summary-ibm-llama-cpp|IBM Technology's llama.cpp explainer]]. See also [[llama.cpp]], [[TurboQuant]].

## Content

When browsing open-source models on Hugging Face, you'll see names like `DeepSeek-R1-Q4_K_M.gguf`. Here's how to read them:

| Part | Meaning |
|------|---------|
| `Q` | Quantized (reduced precision) |
| `4` | 4-bit precision (vs 16-bit original) |
| `K_M` | K-quant variant M — the compression algorithm tuned for quality |

**What the numbers mean for hardware:**
- 16-bit (original): Full RAM footprint
- 4-bit (Q4): ~25% of the RAM required for the 16-bit version
- **Net**: ~75% reduction in RAM requirement with similar capability

**K-quant variants**: K_S = small (most compressed), K_M = medium (quality-tuned, most commonly recommended), K_L = large (highest quality among K-quants).

**Rule of thumb**: When in doubt, use Q4_K_M. It's the default recommendation for balancing quality and hardware efficiency.

**Why this matters**: Understanding the naming scheme tells you immediately what hardware you need to run a model and what quality tradeoffs you're accepting.
