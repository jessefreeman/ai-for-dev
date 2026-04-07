---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, apple, m3-max, laptop]
---

# MacBook Pro 16" M3 Max

**Identifier:** Apple M3 Max on MacBook Pro (16-inch, Nov 2023)
**Form factor:** laptop
**Status:** active

14-core CPU / 30-core GPU / 16-core Neural Engine. 36 GB unified memory.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | MacBook Pro 16" (Nov 2023), M3 Max 14C/30C, 36 GB unified, 1 TB | $2,999 (2023) |
| $/ACI | | ~$11.10 |

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| Core ML / GPU | M3 Max 30-core | **13,411** | 13,358 | 12,570 | [27948](https://browser.geekbench.com/ai/v1/27948) |
| Core ML / Neural Engine | M3 Max 16-core NE | 2,457 | **13,410** | **13,896** | [27953](https://browser.geekbench.com/ai/v1/27953) |
| Core ML / CPU | M3 Max 14-core | 3,841 | 5,356 | 4,472 | [27947](https://browser.geekbench.com/ai/v1/27947) |

## AI Capability

- **Best Single / Half / Quant:** 13,411 / 13,410 / 13,896
- **ACI:** **270.2** — **Tier C**

Geekbench AI undersells the M3 Max for what most users actually do with it: 36 GB of unified memory means it can host LLMs that no 12 GB Windows laptop can touch — see [[Gemma 4 VRAM Requirements]] (M3 Max sits in the "31B at Q5" tier). The compute score is lower than RTX-class laptops but the *memory ceiling* is far higher.

## See Also
- [[methodology|Benchmark Methodology]]
- [[macbook-air-m2|MacBook Air M2]] — smaller sibling
- [[mac-studio-m3-ultra|Mac Studio M3 Ultra]] — same generation, more cores
