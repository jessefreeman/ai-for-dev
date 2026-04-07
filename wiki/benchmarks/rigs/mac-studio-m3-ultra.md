---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, apple, m3-ultra, desktop]
---

# Mac Studio M3 Ultra

**Identifier:** Apple M3 Ultra on Mac15,14 (Mac Studio)
**Form factor:** desktop
**Status:** active

Apple's top-of-stack workstation chip — two M3 Max dies fused via UltraFusion. Up to 192 GB unified memory.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | Mac Studio (Mac15,14), M3 Ultra 28-core CPU / 60-core GPU | $5,399.00 (2025) |
| RAM | 256 GB unified (custom build-to-order) | included |
| $/ACI | | ~$10.24 |

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| Core ML / GPU | M3 Ultra GPU | **20,984** | 23,288 | 21,488 | [247789](https://browser.geekbench.com/ai/v1/247789) |
| Core ML / Neural Engine | M3 Ultra NE | 5,305 | **30,643** | **33,379** | [247791](https://browser.geekbench.com/ai/v1/247791) |
| Core ML / CPU | M3 Ultra CPU | 5,260 | 8,203 | 6,419 | [247788](https://browser.geekbench.com/ai/v1/247788) |

## AI Capability

- **Best Single / Half / Quant:** 20,984 / 30,643 / 33,379
- **ACI:** **527.2** — **Tier A**

Highest **quantized** score of any rig in the collection — the Neural Engine pulls ahead of every NVIDIA card on INT8 workloads. With 96+ GB of unified memory this is one of the few rigs able to host the largest local LLMs without quantization compromises. See [[Gemma 4 VRAM Requirements]] for what fits.

## See Also
- [[methodology|Benchmark Methodology]]
- [[macbook-pro-m3-max|MacBook Pro M3 Max]] — same M3 generation, half the cores
- [[minisforum-ms-s1-max-ai395|Minisforum MS-S1 MAX]] — closest x86 unified-memory competitor
