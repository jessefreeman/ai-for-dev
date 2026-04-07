---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, asus, amd, ryzen, nvidia, laptop]
---

# ASUS ROG Zephyrus G15

**Identifier:** AMD Ryzen 9 6900HS on ASUS ROG Zephyrus G15 GA503RM
**Form factor:** 15" gaming laptop
**Status:** active

2022-era Zen 3+ gaming laptop with RTX 3060 Laptop GPU and 16 GB RAM.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | ASUS ROG Zephyrus G15 GA503RM, 16 GB DDR5 | $1,099.99 (2023) |
| $/ACI | | ~$3.74 |
| CPU | AMD Ryzen 9 6900HS (8c/16t) + Radeon 680M | — |
| GPU | NVIDIA RTX 3060 Laptop 6 GB | — |

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| ONNX / DirectML | RTX 3060 Laptop | **12,858** | **21,751** | **8,784** | [67367](https://browser.geekbench.com/ai/v1/67367) |
| ONNX / DirectML | RTX 3060 Laptop | 12,848 | 21,712 | 8,786 | [68155](https://browser.geekbench.com/ai/v1/68155) |
| ONNX / DirectML | RTX 3060 Laptop | 12,887 | 21,546 | 8,711 | [37153](https://browser.geekbench.com/ai/v1/37153) |
| ONNX / DirectML | Radeon 680M (iGPU) | 5,674 | 8,417 | 3,961 | [68182](https://browser.geekbench.com/ai/v1/68182) |
| ONNX / CPU | Ryzen 9 6900HS | 2,902 | 794 | 3,105 | [68186](https://browser.geekbench.com/ai/v1/68186) |
| OpenVINO / CPU | Ryzen 9 6900HS | 4,218 | 4,219 | 7,217 | [67369](https://browser.geekbench.com/ai/v1/67369) |

## AI Capability

- **Best Single / Half / Quant:** 12,858 / 21,751 / 8,784
- **ACI:** **294.2** — **Tier C** (just below B)

A capable 2022 laptop. 6 GB VRAM is the binding constraint — only E4B and small 7B Q4 are realistic. The integrated Radeon 680M is roughly half the discrete GPU, useful as a low-power fallback.

## See Also
- [[methodology|Benchmark Methodology]]
- [[asus-zephyrus-g16-ultra9-185h|Zephyrus G16]] — successor model, RTX 4090
