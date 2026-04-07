---
type: concept
sources: ["THIS is the REAL DEAL 🤯 for local LLMs.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [concept, ai, llm, quantization, gpu, nvidia, blackwell]
---

# FP8 Quantization

**Floating-point 8-bit quantization.** The format of choice for Nvidia Blackwell tensor cores running large language models in production. FP8 sits between BF16 (full precision) and Int8 / Q4_K_M (more aggressive quantization) and is currently the throughput sweet spot for serious local inference on Nvidia hardware.

## FP8 vs Int8

Both formats use 8 bits per weight. The difference is how those bits encode values:

| Format | Encoding | Strength | Weakness |
|---|---|---|---|
| **Int8** | 8 bits, evenly spread across integer values | Simple, broad hardware support | Static spacing — large outliers compressed; small values lose granularity |
| **FP8** | 8 bits, floating-point (sign + exponent + mantissa) | **Fluid scaling** — adapts precision to value range | More complex to implement; requires modern tensor core support |

[[alex-ziskind|Alex Ziskind]]'s framing:

> "Integer 8 bits are static and they're spread out equally across eight values. Floating point is a little bit more fluid, giving you the ability to actually get better precision depending on the data."

The practical result: FP8 retains more of the model's reasoning quality than Int8 at the same memory footprint, *and* runs faster on Nvidia Blackwell because tensor cores natively support FP8 math without conversion overhead.

## Hardware Support

**Native FP8 tensor core support**:
- Nvidia Blackwell (RTX 50-series, RTX PRO 6000, Blackwell datacenter)
- AMD Instinct (server-grade, not consumer)

**Notably NOT native FP8**:
- Apple Silicon — supports only GGUF, safe tensors, and MLX quantizations (Apple's own format optimized for Apple Silicon). This is one of the structural reasons Macs lag Nvidia for serious throughput-bound workloads.
- Older Nvidia (Ada / 40-series and below) — can run FP8 but not as efficiently

## FP4 — The Next Step

Nvidia Blackwell also supports **FP4** (floating-point 4-bit) natively, which is even faster than FP8. Same fluid-scaling principle, half the bits. Alex Ziskind has a follow-up video planned on FP4. The trade-off curve is the same as the rest of the quantization stack: more aggressive = faster + smaller, with diminishing precision retention at each step.

## In Practice

For an FP8 workflow on a Blackwell card:
1. Start with a model that has an FP8 build (e.g. Quen 3 Coder 30B FP8 from Hugging Face)
2. Run via [[vllm|vLLM]] — the runtime that supports FP8 natively
3. Pair with parallelism (`--max-num-seqs 256` or similar) to saturate the GPU
4. Result on RTX PRO 6000: **5,800+ tokens/sec** sustained across concurrent requests

This is the configuration Alex Ziskind demonstrates produces the "REAL DEAL" headline — not because FP8 alone is magic, but because **FP8 + vLLM + Blackwell tensor cores + parallelism** stack on each other.

## Relationship to Other Quantization in the Wiki

- **[[gemma-4-vram-requirements|Gemma 4 VRAM table]]** — covers Q5_K_M, Q4_K_M, Q8 (all integer/GGUF formats) for Ollama/LM Studio workflows. FP8 is an orthogonal stack: same bit budget, different runtime, different hardware target.
- **[[turboquant]]** — KV cache optimization. Complementary to FP8 (you can run an FP8 model with TurboQuant'd KV cache).
- **[[llama-cpp]]** — uses GGUF integer quantizations. llama.cpp doesn't natively run FP8; that's vLLM's territory.

## Why This Page Exists

The wiki has solid coverage of GGUF integer quantization (Q4_K_M, Q5_K_M, Q8) from the Gemma 4 and llama.cpp ingests. FP8 is a completely different track — different runtime ([[vllm]] not Ollama), different hardware target (Blackwell not "any GPU"), different precision math (floating-point not integer). It deserves its own concept page so future content about Nvidia local-AI throughput has somewhere to anchor.

## See Also

- [[vllm]] — the runtime that makes FP8 practical
- [[alex-ziskind]] — primary advocate / source
- [[gemma-4-vram-requirements]] — the integer quantization counterpart
- [[turboquant]] — complementary KV cache optimization
- [[benchmarks/rigs/proxmox-lenovo-p8-threadripper]] — the Blackwell rig where FP8 matters most
- [[summary-alex-ziskind-vllm-fp8|Source: vLLM + FP8 walkthrough]]
