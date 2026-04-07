---
title: FP8 vs Int8 — Why Floating-Point 8-Bit Beats Integer 8-Bit
summary: FP8 and Int8 both use 8 bits per weight, but FP8's floating-point encoding adapts precision to the value range while Int8's integer encoding spreads values evenly. Result: better precision retention at the same memory footprint, plus native Nvidia Blackwell tensor core support.
tags: [concept_fp8_quantization, concept_quantization, topic_nvidia_blackwell, topic_local_ai, source_alex_ziskind_vllm_fp8]
---

# FP8 vs Int8 — Why Floating-Point 8-Bit Beats Integer 8-Bit

## Context

From [[summary-alex-ziskind-vllm-fp8|Alex Ziskind's vLLM + FP8 video]]. See also [[fp8-quantization]].

## Content

**Both formats use 8 bits per weight.** The difference is in how those bits encode values:

| Format | Encoding | Strength | Weakness |
|---|---|---|---|
| **Int8** | 8 bits, integer values evenly spread | Simple, broad GPU support | **Static spacing** — large outliers compressed; small values lose granularity |
| **FP8** | 8 bits, floating-point (sign + exponent + mantissa) | **Fluid scaling** — precision adapts to value range | Requires modern tensor core support |

**Alex's clearest framing**:
> "Integer 8 bits are static and they're spread out equally across eight values. Floating point is a little bit more fluid, giving you the ability to actually get better precision depending on the data."

**Practical result**: FP8 retains more reasoning quality than Int8 at the same memory footprint, *and* runs faster on Nvidia Blackwell because tensor cores natively support FP8 math without conversion overhead.

**Hardware support**:
- ✅ **Native FP8**: Nvidia Blackwell (RTX 50-series, RTX PRO 6000, datacenter Blackwell), AMD Instinct (server-grade)
- ❌ **Not native**: Apple Silicon (only GGUF / safe tensors / MLX), older Nvidia (Ada/40-series can run FP8 but not as efficiently)

**FP4 is next**: Nvidia Blackwell also supports floating-point 4-bit natively. Even faster, half the bits, same fluid-scaling principle. Alex Ziskind has a follow-up video planned.

**The FP8 stack on a Blackwell card**:
1. Model with an FP8 build (e.g. Quen 3 Coder 30B FP8 from Hugging Face)
2. Run via [[vllm|vLLM]]
3. Pair with `--max-num-seqs 256` parallelism
4. Result on RTX PRO 6000: **5,800+ tokens/sec sustained** across concurrent requests

This is why FP8 alone isn't magic — it's **FP8 + vLLM + Blackwell tensor cores + parallelism** stacking together that produces the headline numbers.
