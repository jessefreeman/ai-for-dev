---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, amd, ryzen, nvidia, desktop, minisforum]
---

# Minisforum BD790i + Ryzen 9 7945HX

**Identifier:** AMD Ryzen 9 7945HX on Minisforum BD790i (Shenzhen Meigao DRFXI board)
**Form factor:** mini-ITX desktop ("Uranus Series" chassis)
**Status:** active

A 16-core mobile-class Zen 4 CPU soldered onto a mini-ITX board. Pairs with a full-size desktop GPU via PCIe 5.0 x16 — punches well above its size class.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| Board + CPU | Minisforum BD790i (Ryzen 9 7945HX, 16c/32t) | $479.99 (2024) |
| RAM | Crucial 96 GB (2×48) DDR5-5600 SODIMM (CT2K48G56C46S5) — shared with N5 Pro | $224.99 (2024) |
| GPU (config A) | NVIDIA RTX 4070 Super 12 GB Founders Edition | $653.24 (2024) |
| GPU (config B) | NVIDIA RTX 3090 24 GB — same physical card as the [[proxmox-lenovo-p8-threadripper\|Lenovo P8]] 3090 | shared, $1,132.45 (2025) |
| **Total invested (Config A)** | | **$1,358.22** |
| $/ACI (A) | | $2.21 |

**Shared parts:** the Crucial 96 GB SODIMM kit also appears in the [[minisforum-n5-pro-hx-pro-370|Minisforum N5 Pro]] (single physical kit, swapped). The RTX 3090 used in Config B is the same physical card that lives on the Lenovo P8 — confirmed by the user.

Prices reflect what was paid at time of purchase, not current market.

## Geekbench AI Runs

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| ONNX / DirectML | RTX 4070 Super | **27,830** | **42,004** | **21,032** | [81278](https://browser.geekbench.com/ai/v1/81278) |
| ONNX / DirectML | RTX 3090 | 25,104 | 37,226 | 15,153 | [204967](https://browser.geekbench.com/ai/v1/204967) |
| ONNX / CPU | Ryzen 9 7945HX | 4,082 | 1,724 | 4,938 | [81273](https://browser.geekbench.com/ai/v1/81273) |
| OpenVINO / CPU | Ryzen 9 7945HX | 8,157 | 8,260 | 18,444 | [81280](https://browser.geekbench.com/ai/v1/81280) |

## AI Capability

### Config A: RTX 4070 Super
- **Best Single / Half / Quant:** 27,830 / 42,004 / 21,032
- **ACI:** **614.5** — **Tier A** (top of A, near S)

### Config B: RTX 3090 (24 GB)
- **Best Single / Half / Quant:** 25,104 / 37,226 / 18,444 (quant from CPU OpenVINO)
- **ACI:** **548.2** — **Tier A**
- The lower compute is offset by **double the VRAM** — the 3090 can run 31B Q5/Q8 locally; the 4070S cannot. See [[Gemma 4 VRAM Requirements]].

The 7945HX's OpenVINO quant score (18,444) is the highest CPU quant of any rig in this collection — useful when GPU memory is full.

## See Also
- [[methodology|Benchmark Methodology]]
- [[asus-b550i-ryzen7-5800x|ASUS B550-I + 5800X]] — same GPU
- [[msi-codex-r-i5-12400f|MSI Codex R]] — also tested with RTX 3090
