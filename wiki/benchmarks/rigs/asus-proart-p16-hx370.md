---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, asus, amd, ryzen-ai, nvidia, laptop]
---

# ASUS ProArt P16

**Identifier:** AMD Ryzen AI 9 HX 370 on ASUS ProArt P16 (H7606)
**Form factor:** 16" creator laptop
**Status:** active

Creator laptop with a Zen 5 mobile CPU (12 cores), Radeon 890M iGPU, dedicated NPU, and an RTX 4070 Laptop GPU.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | ASUS ProArt P16, 32 GB LPDDR5X, 2 TB SSD | $2,017.99 (2024) |
| CPU | AMD Ryzen AI 9 HX 370 (12c) w/ Radeon 890M | — |
| GPU | NVIDIA RTX 4070 Laptop 8 GB | — |
| $/ACI | | ~$4.62 |

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| ONNX / DirectML | RTX 4070 Laptop | **18,992** | **31,754** | **14,173** | [47667](https://browser.geekbench.com/ai/v1/47667) |
| ONNX / CPU | Ryzen AI 9 HX 370 | 2,983 | 1,509 | 4,908 | [47666](https://browser.geekbench.com/ai/v1/47666) |
| OpenVINO / CPU | Ryzen AI 9 HX 370 | 5,315 | 5,295 | 13,476 | [47673](https://browser.geekbench.com/ai/v1/47673) |

## AI Capability

- **Best Single / Half / Quant:** 18,992 / 31,754 / 14,173
- **ACI:** **437.1** — **Tier B**

Solid creator-class machine. The 8 GB on the laptop 4070 is the binding constraint for LLMs — fine for E4B and 7–13B Q4, no chance at 27B+. The CPU OpenVINO quant (13,476) is unusually strong, making CPU fallback viable.

## See Also
- [[methodology|Benchmark Methodology]]
- [[asus-proart-px13-hx370|ProArt PX13]] — same CPU, smaller chassis, RTX 4050
