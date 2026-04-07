---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, apple, a18-pro, laptop]
---

# MacBook Neo (A18 Pro, 2026)

**Identifier:** Apple A18 Pro on Mac17,5 (MacBook Neo)
**Form factor:** laptop
**Status:** active

Apple's 2026 ARM MacBook running on the A18 Pro chip — the iPhone-derived SoC scaled into a Mac chassis.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | MacBook Neo (Mac17,5), Apple A18 Pro (6c CPU) | $599.00 (2026) |
| RAM | 8 GB unified | included |
| $/ACI | | ~$1.36 ⭐ |

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| Core ML / GPU | A18 Pro GPU | **6,885** | 8,135 | 7,143 | [457129](https://browser.geekbench.com/ai/v1/457129) |
| Core ML / Neural Engine | A18 Pro NE | 4,704 | **32,583** | **44,385** | [457133](https://browser.geekbench.com/ai/v1/457133) |
| Core ML / CPU | A18 Pro CPU | 4,727 | 7,848 | 6,263 | [457079](https://browser.geekbench.com/ai/v1/457079) |

## AI Capability

- **Best Single / Half / Quant:** 6,885 / 32,583 / 44,385
- **ACI:** **441.9** — **Tier B**

Same story as the [[mac-mini-m4|Mac Mini M4]] — the Neural Engine punches massively above the GPU on INT8 (44,385 vs 7,143). Single precision is modest, which Geekbench AI's headline emphasizes. For real-world LLM inference at Q4–Q8 this rig is far stronger than its ACI suggests. Memory ceiling will determine which models actually fit.

## See Also
- [[methodology|Benchmark Methodology]]
- [[mac-mini-m4|Mac Mini M4]] — same Neural Engine class
- [[macbook-air-m2|MacBook Air M2]] — predecessor in the fanless laptop slot
