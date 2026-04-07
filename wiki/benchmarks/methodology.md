---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmarks, methodology, geekbench-ai]
---

# Benchmark Methodology

These pages are **historical capability snapshots** of every personal machine I've run [Geekbench AI](https://www.geekbench.com/ai/) on. They are not a substitute for model-specific tests like [[Gemma 4 VRAM Requirements|Gemma 4 VRAM Requirements]] — they answer a different question: *"How does this physical rig stack up against the others I own?"*

## Rig identity

A **rig** is identified by its **CPU + motherboard/chassis** combo. That pair is the only thing that doesn't change as I swap GPUs, RAM, and drives over time. A computer name like "MSI Codex R" is just a friendly label for that pair.

Each rig page lists every CPU, GPU, and NPU run executed on that hardware, regardless of when. Swapping a GPU produces a new row in the same rig's table, not a new rig.

## What Geekbench AI measures

Three precisions across ten real-world AI workloads (Style Transfer, Object Detection, Pose Estimation, Image Super-Resolution, Image Classification, Face Detection, Depth Estimation, Text Classification, Machine Translation, Image Segmentation):

- **Single Precision (FP32)** — full precision math. Headline number. GPUs almost always win here.
- **Half Precision (FP16)** — what most modern inference actually uses. Apple Neural Engines and NVIDIA tensor cores shine.
- **Quantized (INT8)** — what local LLM serving actually uses. NPUs and Apple Neural Engines often beat dedicated GPUs.

Each backend (ONNX/DirectML, CoreML/GPU, CoreML/NeuralEngine, OpenVINO/CPU, OpenVINO/NPU) gets its own run.

## AI Capability Index (ACI)

A single comparable score per rig. For each rig, take the **best** Single, Half, and Quantized score across **any** backend tested on that machine, then:

```
ACI = (BestSingle + BestHalf × 0.6 + BestQuant × 0.4) / 100
```

**Why these weights?**

- **1.0 on Single** — the canonical Geekbench AI headline. Reflects raw FP32 throughput.
- **0.6 on Half** — FP16 is what most production inference uses today. Weighted lower than Single only because Single is the apples-to-apples baseline across all backends.
- **0.4 on Quantized** — INT8 is critical for local LLMs but is less universal (some backends fake it via FP32 fallback). Lower weight prevents Apple NE quant scores from overwhelming everything.
- **÷100** — gives a clean two-to-three-digit number.

"Best across any backend" is intentional: a rig's *capability* is what its best component can do for a given precision. If you want to compare individual backends, use the per-row scores in the rig page.

## Tiers

| Tier | ACI Range | What it means |
|------|-----------|---------------|
| **S** | 700+ | Workstation-class. Comfortable with 30B+ local models. |
| **A** | 500–699 | Strong creator/AI rig. 13–27B models comfortable, 30B at Q4–Q5. |
| **B** | 300–499 | Capable laptop / older desktop. 7–13B comfortable. |
| **C** | 150–299 | Light AI work. Sub-7B models, vision tasks. |
| **D** | <150 | Hobby / CPU-only territory. |

## What ACI does *not* tell you

- **VRAM ceiling** — a rig's ACI is irrelevant if a model doesn't fit. Use [[Gemma 4 VRAM Requirements]] for that.
- **Token/sec for LLMs** — Geekbench AI is computer-vision heavy. LLM throughput depends on memory bandwidth, not compute.
- **Thermals over time** — these are short benchmarks. Sustained workloads tell a different story.
- **Cost** — paired separately as `$/ACI` once pricing is filled in.

## Pricing notes

Build cost is what I paid *when I bought the parts*, not current market value.

**What's tracked:**
- Whole-system prices for prebuilts and laptops
- Individual part prices for DIY/swap builds: motherboard, CPU, RAM, GPU
- Shared physical parts (one kit, multiple machines) are listed on every rig page they appear on but counted once in totals

**What's not tracked:**
- Cases, PSUs, coolers (granular tracking is impractical for piecemeal builds)
- Storage drives
- Cables, fans, accessories

## See Also
- [[index|Benchmark Index & Rankings]]
- [[Gemma 4 VRAM Requirements]]
