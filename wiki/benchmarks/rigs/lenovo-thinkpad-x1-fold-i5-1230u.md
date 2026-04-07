---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, intel, lenovo, laptop, ultraportable]
---

# Lenovo ThinkPad X1 Fold (i5-1230U)

**Identifier:** Intel Core i5-1230U on Lenovo 21ES001WUS (ThinkPad X1 Fold Gen 2)
**Form factor:** foldable OLED tablet/laptop
**Status:** active

The 16" foldable OLED ThinkPad X1 Fold Gen 2 — runs a 9W Alder Lake U-series CPU to keep the foldable chassis cool. Geekbench AI here is a sanity check for what a foldable ultraportable can manage.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | Lenovo ThinkPad X1 Fold (21ES001WUS) | $1,724.06 (2025) |
| CPU | Intel Core i5-1230U (2P/8E, 10c/12t, 9W) | — |
| RAM | 16 GB LPDDR5 (soldered) | included |
| iGPU | Intel Iris Xe Graphics | — |
| $/ACI | | ~$40.57 |

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| ONNX / DirectML | Intel Iris Xe | 1,714 | 1,707 | 1,062 | [225003](https://browser.geekbench.com/ai/v1/225003) |
| ONNX / CPU | Core i5-1230U | **1,847** | 758 | 3,203 | [225010](https://browser.geekbench.com/ai/v1/225010) |
| OpenVINO / CPU | Core i5-1230U | 1,763 | **1,750** | **3,391** | [225013](https://browser.geekbench.com/ai/v1/225013) |

## AI Capability

- **Best Single / Half / Quant:** 1,847 / 1,750 / 3,391
- **ACI:** **42.5** — **Tier D**

The lowest-scoring rig in the collection by a wide margin. Not for AI inference of any meaningful size. Useful as a baseline reference for "what can a 9W ultraportable do" — answer: very little. Stick to E2B / E4B at Q4 max.

## See Also
- [[methodology|Benchmark Methodology]]
