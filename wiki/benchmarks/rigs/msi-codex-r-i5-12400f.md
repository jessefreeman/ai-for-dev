---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, intel, nvidia, msi, desktop, gpu-test-bench]
---

# MSI Codex R (i5-12400F Test Bench)

**Identifier:** Intel Core i5-12400F on MSI PRO B760-VC WIFI (MS-7D98)
**Form factor:** mid-tower desktop ("MSI Codex R" prebuilt chassis)
**Status:** active — primary GPU swap test bench

The CPU+motherboard combination I use as a stable platform to benchmark different GPUs against the same baseline. The 12400F is intentionally modest — it's a known constant, not the star.

Confirmed via Geekbench detail pages: **all 12 captured runs use the same MSI PRO B760-VC WIFI motherboard and 128 GB of RAM** — the only thing that swapped was the GPU. The board is the **DDR5 variant** (the user attributed two Corsair Vengeance RGB DDR5 kits to this rig).

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| Chassis | MSI Codex R prebuilt (case + PSU + base RAM) | $814.68 (2023) |
| Motherboard | MSI PRO B760-VC WIFI (MS-7D98) — DDR5 variant | included |
| CPU | Intel Core i5-12400F (6P/12T, Alder Lake) | included |
| RAM upgrade | 2 × Corsair Vengeance RGB 64 GB (2×32) DDR5-5200 CL40 = 128 GB | $355.98 (2024) |
| GPU: NVIDIA RTX 5090 | 32 GB | $1,999.00 (2025) |
| GPU: NVIDIA RTX 4070 Ti | 12 GB | $653.24 (2024) |
| GPU: NVIDIA RTX 3090 | 24 GB | $1,132.45 (2025) |
| GPU: NVIDIA RTX 4060 | 8 GB | included with Codex R prebuilt (est. ~$300 market value 2023) |
| GPU: NVIDIA RTX 3060 | 12 GB | $706.05 (2022, GPU shortage pricing) |
| **Chassis + RAM upgrade** | | **$1,170.66** |

## Geekbench AI Runs

### GPU swap matrix

| GPU | VRAM | Backend | Single | Half | Quant | Result |
|-----|------|---------|--------|------|-------|--------|
| **RTX 5090** | 32 GB | ONNX/DirectML | **42,496** | **61,328** | **31,856** | [357342](https://browser.geekbench.com/ai/v1/357342) |
| RTX 5090 | 32 GB | ONNX/DirectML | 42,008 | 60,655 | 31,363 | [341704](https://browser.geekbench.com/ai/v1/341704) |
| RTX 5090 | 32 GB | ONNX/DirectML | 41,400 | 60,038 | 30,718 | [357657](https://browser.geekbench.com/ai/v1/357657) |
| RTX 4070 Ti | 12 GB | ONNX/DirectML | 27,553 | 39,999 | 21,827 | [191639](https://browser.geekbench.com/ai/v1/191639) |
| RTX 3090 | 24 GB | ONNX/DirectML | 21,048 | 29,810 | 13,563 | [357654](https://browser.geekbench.com/ai/v1/357654) |
| RTX 3090 | 24 GB | ONNX/DirectML | 20,978 | 29,751 | 13,562 | [341706](https://browser.geekbench.com/ai/v1/341706) |
| RTX 4060 | 8 GB | ONNX/DirectML | 14,422 | 22,768 | 11,696 | [191595](https://browser.geekbench.com/ai/v1/191595) |
| RTX 4060 | 8 GB | ONNX/DirectML | 14,279 | 22,829 | 11,400 | [191524](https://browser.geekbench.com/ai/v1/191524) |
| RTX 3060 | 12 GB | ONNX/DirectML | 13,582 | 23,007 | 9,272 | [191592](https://browser.geekbench.com/ai/v1/191592) |
| RTX 3060 | 12 GB | ONNX/DirectML | 12,346 | 19,867 | 8,819 | [177647](https://browser.geekbench.com/ai/v1/177647) |

### CPU baseline

| Backend | Single | Half | Quant | Result |
|---------|--------|------|-------|--------|
| ONNX / CPU | 2,318 | 1,191 | 4,977 | [191470](https://browser.geekbench.com/ai/v1/191470) |
| OpenVINO / CPU | 3,733 | 3,675 | 8,713 | [191522](https://browser.geekbench.com/ai/v1/191522) |

## AI Capability

| Configuration | Best Single | Best Half | Best Quant | ACI | Tier | GPU cost | GPU $/ACI |
|---------------|-------------|-----------|------------|-----|------|----------|-----------|
| **+ RTX 5090** | 42,496 | 61,328 | 31,856 | **920.4** | **S** | $1,999 | $2.17 |
| + RTX 4070 Ti | 27,553 | 39,999 | 21,827 | 642.4 | A | $653 | **$1.02** ⭐ |
| + RTX 3090 | 21,048 | 29,810 | 13,563 | 444.5 | B | $1,132 | $2.55 |
| + RTX 4060 | 14,422 | 22,829 | 11,696 | 326.7 | B | included (~$300 est.) | ~$0.92 |
| + RTX 3060 | 13,582 | 23,007 | 9,272 | 311.4 | B | $706 | $2.27 |

The **RTX 4070 Ti at $1.02/ACI is the best value of any priced compute GPU in the entire collection** — narrowly beating even the included-with-prebuilt 4060 estimate. The 3060 at $706 looks expensive in 2026 hindsight but reflects 2022 GPU shortage pricing.

The 5090 configuration is the highest-scoring rig in this collection. Note that the i5-12400F bottleneck is real on the 5090 but doesn't show in Geekbench AI's compute-bound tests — only LLM serving with high batch sizes will reveal the PCIe/CPU ceiling.

## See Also
- [[methodology|Benchmark Methodology]]
- [[proxmox-ultra7-265k|Proxmox host (Ultra 7 265K)]] — also tested with 5090 and 3090
- [[intel-nuc9v7qnx|Intel NUC9V7QNX]] — same physical RTX 4060 GPU on an older 9th-gen Intel mobile platform; direct CPU-bottleneck comparison
- [[Gemma 4 VRAM Requirements]] — VRAM-driven model picks
