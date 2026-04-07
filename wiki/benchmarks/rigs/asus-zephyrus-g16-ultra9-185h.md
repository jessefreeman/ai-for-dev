---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, asus, intel, nvidia, npu, laptop]
---

# ASUS ROG Zephyrus G16

**Identifier:** Intel Core Ultra 9 185H on ASUS ROG Zephyrus G16 GU605MY
**Form factor:** 16" gaming laptop
**Status:** active

Meteor Lake laptop with discrete RTX 4090 Laptop GPU, Intel Arc iGPU, and an Intel AI Boost NPU — one of only two rigs in this collection with a real NPU.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | ASUS ROG Zephyrus G16 GU605MY, 32 GB DDR5 | $2,564.99 (2024, open box) |
| $/ACI | | ~$5.16 |
| CPU | Intel Core Ultra 9 185H (16c, Meteor Lake) | — |
| iGPU | Intel Arc Graphics | — |
| NPU | Intel AI Boost | — |
| GPU | NVIDIA RTX 4090 Laptop 16 GB | — |

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| ONNX / DirectML | RTX 4090 Laptop | **22,486** | **33,742** | **17,513** | [88799](https://browser.geekbench.com/ai/v1/88799) |
| ONNX / DirectML | Intel Arc Graphics | 2,614 | 1,056 | 2,045 | [88804](https://browser.geekbench.com/ai/v1/88804) |
| ONNX / CPU | Core Ultra 9 185H | 3,076 | 1,342 | 3,875 | [92641](https://browser.geekbench.com/ai/v1/92641) |
| ONNX / CPU | Core Ultra 9 185H | 2,897 | 1,299 | 3,597 | [88797](https://browser.geekbench.com/ai/v1/88797) |
| OpenVINO / CPU | Core Ultra 9 185H | 3,114 | 3,139 | 7,855 | [92647](https://browser.geekbench.com/ai/v1/92647) |
| OpenVINO / CPU | Core Ultra 9 185H | 3,009 | 2,992 | 7,794 | [88808](https://browser.geekbench.com/ai/v1/88808) |
| OpenVINO / NPU | Intel AI Boost | 3,124 | 8,184 | 11,822 | [92644](https://browser.geekbench.com/ai/v1/92644) |

## AI Capability

- **Best Single / Half / Quant:** 22,486 / 33,742 / 17,513
- **ACI:** **497.4** — **Tier B** (top of B)

The RTX 4090 Laptop carries the score; the Intel NPU is the standout for INT8 workloads at low power. 16 GB of VRAM means it can host 13B Q5–Q8 comfortably and 27B Q4. NPU drivers matter — install the latest from Intel for best NPU numbers.

## See Also
- [[methodology|Benchmark Methodology]]
- [[asus-zephyrus-g15-6900hs|Zephyrus G15]] — predecessor
- [[proxmox-ultra7-265k|Proxmox host (Ultra 7 265K)]] — same Meteor Lake family
