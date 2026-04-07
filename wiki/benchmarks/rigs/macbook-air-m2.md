---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, apple, m2, laptop]
---

# MacBook Air M2 (2022)

**Identifier:** Apple M2 on MacBook Air (2022)
**Form factor:** fanless laptop
**Status:** active

The fanless 2022 Air. 8-core CPU / 10-core GPU / 16-core Neural Engine. 16 GB unified memory.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | MacBook Air 13" (2022), M2, 16 GB unified, 256 GB | $1,199 (2024) |
| $/ACI | | ~$6.66 |

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| Core ML / GPU | M2 10-core | **5,419** | 5,589 | 1,871 | [69902](https://browser.geekbench.com/ai/v1/69902) |
| Core ML / CPU | M2 8-core | 3,214 | 4,700 | 4,063 | [69901](https://browser.geekbench.com/ai/v1/69901) |
| Core ML / Neural Engine | M2 16-core NE | 2,008 | **12,050** | **13,343** | [69904](https://browser.geekbench.com/ai/v1/69904) |

## AI Capability

- **Best Single / Half / Quant:** 5,419 / 12,050 / 13,343
- **ACI:** **179.9** — **Tier C**

Surprising quantized score from the Neural Engine — competitive with much larger machines on INT8 workloads. The 16 GB memory ceiling caps it at ~7B models, but for E4B and small vision tasks the fanless thermals make it a daily driver.

## See Also
- [[methodology|Benchmark Methodology]]
- [[macbook-pro-m3-max|MacBook Pro M3 Max]]
- [[macbook-neo-a18-pro|MacBook Neo A18 Pro]]
