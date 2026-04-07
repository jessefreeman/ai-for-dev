---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, amd, ryzen, nvidia, desktop]
---

# ASUS B550-I + Ryzen 7 5800X

**Identifier:** AMD Ryzen 7 5800X on ASUS ROG Strix B550-I
**Form factor:** mini-ITX desktop
**Status:** active

A compact mini-ITX gaming/AI desktop. The 5800X is now an older Zen 3 part but pairs well with a current-gen GPU thanks to the B550-I's PCIe 4.0 x16 slot.

## Build & Cost

| Component | Spec | Cost (when bought) |
|-----------|------|--------------------|
| Motherboard | ASUS ROG Strix B550-I | $217.99 (2022) |
| CPU | AMD Ryzen 7 5800X (8c/16t, Zen 3) | $349.99 (2022) |
| RAM (original) | Corsair Vengeance LPX 32 GB (2×16) DDR4-3600 | $129.99 (2022) |
| RAM upgrade | Corsair Vengeance LPX 64 GB (2×32) DDR4-3600 → 96 GB or replacement | $124.99 (2024) |
| GPU | NVIDIA RTX 4070 Super 12 GB Founders Edition | $699.00 (2024) |
| **Total invested** | | **~$1,521.96** |
| $/ACI | | ~$2.71 |

Prices reflect what was paid at time of purchase, not current market.

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| ONNX / DirectML | RTX 4070 Super | **25,495** | **37,950** | 19,608 | [27972](https://browser.geekbench.com/ai/v1/27972) |
| ONNX / DirectML | RTX 4070 Super | 25,387 | 37,657 | **19,810** | [71437](https://browser.geekbench.com/ai/v1/71437) |
| ONNX / DirectML | RTX 4070 Super | 25,417 | 37,601 | 19,732 | [71433](https://browser.geekbench.com/ai/v1/71433) |
| ONNX / CPU | Ryzen 7 5800X | 3,582 | 884 | 3,313 | [27967](https://browser.geekbench.com/ai/v1/27967) |
| OpenVINO / CPU | Ryzen 7 5800X | 4,991 | 5,019 | 7,593 | [27985](https://browser.geekbench.com/ai/v1/27985) |

## AI Capability

- **Best Single:** 25,495 (RTX 4070 Super)
- **Best Half:** 37,950 (RTX 4070 Super)
- **Best Quantized:** 19,810 (RTX 4070 Super)
- **ACI:** **561.9** — **Tier A**

A reliable Zen 3 + 4070 Super pairing. The 4070 Super dominates every precision; the 5800X CPU is only useful as a fallback. With 12 GB VRAM this rig is comfortable up to 13B Q5 and 27B Q4 — see [[Gemma 4 VRAM Requirements]].

## See Also
- [[methodology|Benchmark Methodology]]
- [[minisforum-bd790i-ryzen9-7945hx|Minisforum BD790i]] — same GPU, faster CPU
