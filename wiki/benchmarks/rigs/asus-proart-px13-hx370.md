---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, asus, amd, ryzen-ai, nvidia, laptop, convertible]
---

# ASUS ProArt PX13

**Identifier:** AMD Ryzen AI 9 HX 370 on ASUS ProArt PX13 (HN7306WU)
**Form factor:** 13" convertible creator laptop
**Status:** active

The smaller sibling of the [[asus-proart-p16-hx370|ProArt P16]] — same Zen 5 mobile CPU, smaller chassis, lower-tier discrete GPU (RTX 4050 vs 4070).

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | ASUS ProArt PX13 HN7306WU | $1,166.04 (2025) |
| CPU | AMD Ryzen AI 9 HX 370 (12c) w/ Radeon 890M | — |
| RAM | 32 GB LPDDR5X (soldered) | included |
| GPU | NVIDIA RTX 4050 Laptop 6 GB | — |
| $/ACI | | ~$3.23 |

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| ONNX / DirectML | RTX 4050 Laptop | **14,537** | **26,877** | 11,346 | [214370](https://browser.geekbench.com/ai/v1/214370) |
| ONNX / DirectML | Radeon 890M (iGPU) | 7,848 | 11,632 | 5,796 | [214371](https://browser.geekbench.com/ai/v1/214371) |
| ONNX / CPU | Ryzen AI 9 HX 370 | 4,192 | 1,873 | 7,913 | [214368](https://browser.geekbench.com/ai/v1/214368) |
| OpenVINO / CPU | Ryzen AI 9 HX 370 | 5,551 | 5,564 | **13,668** | [214372](https://browser.geekbench.com/ai/v1/214372) |

## AI Capability

- **Best Single / Half / Quant:** 14,537 / 26,877 / 13,668
- **ACI:** **361.3** — **Tier B**

Punchy for a 13" convertible. The Radeon 890M iGPU is the strongest integrated AMD graphics in the collection short of Strix Halo — about half the discrete RTX 4050's score. CPU OpenVINO quant (13,668) makes pure-CPU fallback realistic. 6 GB VRAM caps LLM ambitions at ~7B Q4.

## See Also
- [[methodology|Benchmark Methodology]]
- [[asus-proart-p16-hx370|ASUS ProArt P16]] — same CPU, RTX 4070 Laptop
