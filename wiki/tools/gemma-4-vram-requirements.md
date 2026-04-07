---
type: entity
sources: ["Gemma 4 VRAM Requirements Every GPU and Mac Tested (2026).md"]
created: 2026-04-07
updated: 2026-04-07
tags: [reference, ai, llm, hardware, gemma, quantization, vram]
---

# Gemma 4 VRAM Requirements

Hardware reference for running [[gemma-4|Gemma 4]] locally. Sourced from [Gemma4Guide.com](https://gemma4guide.com/guides/gemma4-vram-requirements) (April 2026). The short answer: **E4B needs 4–6 GB, 26B A4B needs 10–14 GB, 31B needs 20–24 GB** — but the specific GPU matters more than the tier.

## Model weight sizes

| Model | BF16 | Q8 | Q5_K_M | Q4_K_M | Minimum GPU |
|---|---|---|---|---|---|
| **E2B** | ~2 GB | ~1.5 GB | ~1.2 GB | ~1 GB | Any — phones, Raspberry Pi |
| **E4B** | ~5 GB | ~3.5 GB | ~2.8 GB | ~2.4 GB | 6 GB GPU (RTX 3060, RX 6600) |
| **26B A4B** (MoE) | ~14 GB | ~10 GB | ~8 GB | ~7 GB | 12 GB GPU at Q5 (RTX 3080 12GB / 4070) |
| **31B** dense | ~24 GB | ~17 GB | ~13 GB | ~11 GB | 16 GB GPU at Q4 (RTX 4080 / 3090) |

**Add 1–3 GB overhead** for runtime, KV cache, and context. Right at the boundary? Size down or quantize harder.

## Quantization quick reference

| Format | Quality vs BF16 | Memory savings | Use when |
|---|---|---|---|
| **BF16** | Reference | — | Datacenter / 80GB H100 |
| **Q8_0** | Nearly identical | ~30% less | Maximum quality, can spare ~70% of BF16 VRAM |
| **Q5_K_M** | Very close, small gaps on hard reasoning | ~45% less | **Best default for most people** |
| **Q4_K_M** | Noticeable on complex tasks, fine for chat | ~55% less | Fitting a tight VRAM budget |
| **Q3_K_M** | Meaningful degradation | ~65% less | Last resort |

GGUF files for all levels: Unsloth on HuggingFace. With [[ollama|Ollama]]: pick by tag, e.g. `ollama run gemma4:26b-q5_K_M`.

## GPU lookup table

| GPU | VRAM | E4B | 26B A4B | 31B |
|---|---|---|---|---|
| RTX 3060 / 4060 | 8–12 GB | ✅ | ⚠️ Q4 only, tight | ❌ |
| RTX 3060 Ti / 4060 Ti | 8–16 GB | ✅ | ✅ Q5 at 16GB | ⚠️ Q4 at 16GB tight |
| RTX 3070 / 4070 | 8–12 GB | ✅ | ⚠️ Q5, 12GB tight | ❌ |
| RTX 3080 (10GB) | 10 GB | ✅ | ⚠️ Q4 only, tight | ❌ |
| RTX 3080 12GB / 4070 Super | 12 GB | ✅ | ✅ Q5 comfortable | ❌ |
| RTX 3080 Ti / 4080 | 12–16 GB | ✅ | ✅ Q5–Q8 | ⚠️ Q4 at 16GB |
| RTX 3090 / 4090 | 24 GB | ✅ | ✅ BF16 | ✅ Q5–Q8 |
| RX 7900 XTX (ROCm/Linux) | 24 GB | ✅ | ✅ Q5 | ✅ Q4–Q5 |

## Apple Silicon

On Mac, GPU and CPU share memory. **macOS reserves ~4–6 GB for the OS** — subtract that from your RAM total before choosing a model.

| Mac | RAM | Recommended | Notes |
|---|---|---|---|
| M1 / M2 base | 8 GB | E2B or E4B at Q4 | Very tight; close other apps |
| M1 / M2 base | 16 GB | E4B comfortably; 26B A4B at Q4 | Fine for everyday |
| M2/M3 Pro | 18–36 GB | 26B A4B at Q5 or Q8 | **Sweet spot for Mac local inference** |
| M2/M3 Max | 32–96 GB | 31B at Q5; 26B A4B in BF16 | Workstation-class |
| M4 Max / M4 Ultra | 64–192 GB | 31B in BF16; multiple models | No compromises |

[[ollama|Ollama]] uses Metal automatically on Mac — no extra config.

## Decision rule

| Your situation | Start with | Reason |
|---|---|---|
| Any GPU under 8 GB | E4B | Only realistic local option — and genuinely good |
| 8–12 GB GPU | E4B; or 26B A4B at Q4 to experiment | 26B A4B at Q4 leaves little headroom |
| 12–16 GB GPU | **26B A4B at Q5** | Sweet spot — big-model reasoning at fraction of memory |
| 24 GB GPU | 31B at Q5; or 26B A4B in BF16 | Quality-first becomes realistic |
| Mac 16 GB | E4B | Leave headroom for macOS |
| Mac 32–36 GB | 26B A4B at Q5 or Q8 | Best Mac experience for serious use |

## Why 26B A4B is the standout

Mixture-of-Experts: only ~4B parameters are *active* during inference, which is why it fits into 12–14 GB VRAM while delivering reasoning quality close to a 26B dense model. Most efficient Gemma 4 option for users who want more than E4B but can't run 31B.

## See Also

- [[gemma-4]] — the model entity
- [[ollama]] — common runner
- [[llama-cpp]], [[turboquant]] — quantization and KV optimization context
- [[benchmarks/index|Personal Hardware Benchmarks]] — rig pages reference this guide for model fit
- [[open-source-model-integration]]
- [[summary-gemma4guide-vram-requirements|Source: Gemma 4 VRAM Requirements]]
