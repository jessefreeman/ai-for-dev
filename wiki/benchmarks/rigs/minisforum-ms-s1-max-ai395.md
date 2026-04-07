---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, amd, ryzen-ai, minisforum, mini-pc, integrated-graphics]
---

# Minisforum MS-S1 MAX (Ryzen AI MAX+ 395)

**Identifier:** AMD Ryzen AI MAX+ 395 on Minisforum MS-S1 MAX (Shenzhen Meigao SHWSA board)
**Form factor:** mini-PC
**Status:** active

A mini-PC built around AMD's "Strix Halo" SoC — Zen 5 cores plus the massive **Radeon 8060S** integrated GPU (40 CUs). Effectively a discrete-class GPU on a unified memory architecture, AMD's answer to Apple Silicon.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | Minisforum MS-S1 MAX (all-in-one — RAM included) | $2,299.99 (2025) |
| CPU | AMD Ryzen AI MAX+ 395 | — |
| iGPU | AMD Radeon 8060S (40 CUs) | — |
| RAM | 128 GB LPDDR5X-8000 unified (soldered) | included |
| $/ACI | | ~$4.42 |

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| ONNX / DirectML | Radeon 8060S | **25,316** | **31,296** | **19,970** | [391345](https://browser.geekbench.com/ai/v1/391345) |
| OpenVINO / CPU | Ryzen AI MAX+ 395 | 7,124 | 7,099 | 18,690 | [391344](https://browser.geekbench.com/ai/v1/391344) |
| ONNX / CPU | Ryzen AI MAX+ 395 | 6,410 | 2,393 | 11,330 | [391341](https://browser.geekbench.com/ai/v1/391341) |

## AI Capability

- **Best Single / Half / Quant:** 25,316 / 31,296 / 19,970
- **ACI:** **520.8** — **Tier A**

A genuinely impressive integrated GPU — within striking distance of an RTX 4070 Super on raw Geekbench AI numbers, in a mini-PC form factor. The big appeal is **unified memory**: like Apple Silicon, the GPU can address far more memory than any discrete consumer card. Pair this with [[Gemma 4 VRAM Requirements]] — this rig should comfortably run 31B at Q5 or higher depending on RAM config. CPU OpenVINO quant (18,690) is also one of the highest in the collection.

## See Also
- [[methodology|Benchmark Methodology]]
- [[mac-studio-m3-ultra|Mac Studio M3 Ultra]] — closest competitor in the unified-memory class
