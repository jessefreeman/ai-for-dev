---
title: Gemma 4 VRAM Quick Reference (Q5_K_M Default)
summary: At Q5_K_M, Gemma 4 needs ~2.8GB (E4B), ~8GB (26B A4B MoE), ~13GB (31B). Add 1–3GB runtime overhead; macOS reserves 4–6GB for the OS.
tags: [tool_gemma_4, topic_local_ai, topic_hardware, topic_quantization, source_gemma4guide_vram_requirements]
---

# Gemma 4 VRAM Quick Reference (Q5_K_M Default)

## Context

From [[summary-gemma4guide-vram-requirements|Gemma4Guide VRAM article]]. See also [[gemma-4-vram-requirements]] for full GPU and Mac lookup tables.

## Content

**Q5_K_M is the recommended default** — ~45% memory savings over BF16, very close quality.

| Model | Q5_K_M VRAM | Min GPU |
|---|---|---|
| E2B | ~1.2 GB | Any (phones, RPi) |
| E4B | ~2.8 GB | RTX 3060, RX 6600 (6 GB) |
| 26B A4B (MoE) | ~8 GB | RTX 3080 12GB, RTX 4070 |
| 31B dense | ~13 GB | RTX 4080, RTX 3090 (16 GB at Q4) |

**Add 1–3 GB runtime overhead** (KV cache, context, the runtime itself).

**Mac caveat**: macOS reserves 4–6 GB for the OS. Subtract before sizing. Sweet spot: M2/M3 Pro at 18–36 GB unified memory running 26B A4B at Q5/Q8.

**Why 26B A4B is the standout**: Mixture-of-Experts with only ~4B parameters active per inference. Fits in 12–14 GB VRAM but delivers reasoning close to a dense 26B model. Most efficient option for users between E4B and 31B.
