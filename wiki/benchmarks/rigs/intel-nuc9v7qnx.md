---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, intel, nvidia, nuc, sff]
---

# Intel NUC9V7QNX

**Identifier:** Intel Core i7-9850H on Intel NUC9V7QNX (Ghost Canyon Compute Element)
**Form factor:** SFF NUC with PCIe slot
**Status:** active

The Ghost Canyon NUC — a 9th-gen Coffee Lake mobile CPU on a "Compute Element" card slotted into a chassis with a PCIe x16 slot for a half-length GPU.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| NUC9i7QN Extreme Kit | Intel Core i7-9850H (6c/12t), full barebones | $369.98 (2024) |
| RAM | 64 GB DDR4-3200 (Crucial SODIMM) | $119.99 (2024) |
| GPU | MSI GeForce RTX 4060 8 GB — same physical card as the [[msi-codex-r-i5-12400f\|MSI Codex R]] 4060 | shared (included with Codex R prebuilt) |
| **Total invested** | | **$489.97** (4060 cost not double-counted) |

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| ONNX / DirectML | RTX 4060 8 GB | **13,112** | — | — | (existing template, ID not in source dump) |
| ONNX / CPU | Core i7-9850H | 2,283 | 592 | 2,353 | [29215](https://browser.geekbench.com/ai/v1/29215) |

## AI Capability

- **Best Single:** 13,112 (RTX 4060)
- **Best Half / Quant:** partial — only the CPU run is fully captured here
- **ACI:** **~145–250** (estimate; depends on rerunning the GPU benchmark for full numbers) — likely **Tier C**

This rig is bottlenecked by the 9th-gen CPU and the 8 GB of VRAM. Useful for vision workloads and small LLMs (≤7B) but the Compute Element form factor limits future upgrades. Worth re-benchmarking the GPU to fill in the half/quant numbers.

## See Also
- [[methodology|Benchmark Methodology]]
- [[index|Benchmark Index & Rankings]]
- [[msi-codex-r-i5-12400f|MSI Codex R]] — same RTX 4060 GPU on a more modern Intel platform; useful direct comparison for the CPU bottleneck on this rig
- [[mac-mini-m4|Mac Mini M4]] — same SFF form factor, very different architecture (Apple Silicon + Neural Engine); good baseline for "small box, what's possible in 2024–2026"
- [[lenovo-thinkpad-x1-fold-i5-1230u|Lenovo ThinkPad X1 Fold]] — adjacent older-Intel-mobile rig at the bottom of the leaderboard; together they bracket what 9th-gen-era Intel mobile silicon can do for AI workloads
