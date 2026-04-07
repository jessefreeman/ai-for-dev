---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, apple, m4, mini-pc]
---

# Mac Mini M4

**Identifier:** Apple M4 on Mac16,10 (Mac Mini M4)
**Form factor:** mini-PC
**Status:** active

The 2024 Mac Mini with the base M4 chip.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | Mac Mini (Mac16,10), Apple M4 (base, not Pro) | $899.00 (2024) |
| RAM | 24 GB unified | included |
| $/ACI | | ~$1.75 |

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| Core ML / GPU | M4 GPU | **8,606** | 10,496 | 9,432 | [104726](https://browser.geekbench.com/ai/v1/104726) |
| Core ML / Neural Engine | M4 NE | 4,732 | **36,802** | **51,472** | [104728](https://browser.geekbench.com/ai/v1/104728) |
| Core ML / CPU | M4 CPU | 4,756 | 7,829 | 6,307 | [104722](https://browser.geekbench.com/ai/v1/104722) |

## AI Capability

- **Best Single / Half / Quant:** 8,606 / 36,802 / 51,472
- **ACI:** **512.8** — **Tier A**

The Neural Engine quant score (51,472) is the **highest of any rig in this collection** — better than the RTX 5090 and the RTX PRO 6000 Blackwell on INT8. The catch is that Single Precision is modest (8,606), so the ACI doesn't fully reflect this rig's strength on quantized inference workloads. For LLM serving in INT8, this $600 mini-PC punches astonishingly above its weight. Memory ceiling is the binding constraint for model size.

## See Also
- [[methodology|Benchmark Methodology]]
- [[mac-studio-m3-ultra|Mac Studio M3 Ultra]]
- [[macbook-neo-a18-pro|MacBook Neo A18 Pro]] — same Neural Engine generation
