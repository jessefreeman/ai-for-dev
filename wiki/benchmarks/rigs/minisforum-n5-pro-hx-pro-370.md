---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, amd, ryzen-ai, nvidia, proxmox, mini-pc, nas, minisforum, gpu-passthrough]
---

# Minisforum N5 Pro (HX PRO 370 NAS)

**Identifier:** AMD Ryzen AI 9 HX PRO 370 on Minisforum N5 Pro 5-bay AI NAS
**Form factor:** 5-bay desktop NAS / SFF mini-PC running Proxmox with GPU passthrough
**Status:** active

A Minisforum N5 Pro — a 5-bay desktop NAS chassis built around the **commercial** AMD Ryzen AI 9 HX **PRO** 370 (the Zen 5 mobile SoC's PRO variant; the consumer HX 370 lives in the [[asus-proart-p16-hx370|ProArt P16]] and [[asus-proart-px13-hx370|ProArt PX13]]). 12 cores / 24 threads, soldered, with a 10 GbE port, a 5 GbE port, and 1×M.2 + 2×U.2/M.2 storage slots. Used as a Proxmox host with the RTX 2000E Ada passed through to a VM.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | Minisforum N5 Pro 5-bay NAS (chassis + board + CPU + 128 GB SSD) | $1,019.00 (2025) |
| CPU | AMD Ryzen AI 9 HX PRO 370 (Zen 5, 12c/24t) | included |
| RAM | Crucial 96 GB (2×48) DDR5-5600 SODIMM (CT2K48G56C46S5) — shared kit, see note | $224.99 (2024) |
| Networking | 1× 10 GbE + 1× 5 GbE | included |
| GPU | NVIDIA RTX 2000E Ada Generation 16 GB | $749.99 (2025) |
| **Total invested** | | **$1,993.98** |

**Shared RAM kit:** the same physical Crucial 96 GB SODIMM kit is also used in the [[minisforum-bd790i-ryzen9-7945hx|Minisforum BD790i]]. The $224.99 cost is counted once on both rig pages because the kit moves between machines as you swap.

## Geekbench AI Runs

| Date | Backend | Component | Single | Half | Quant | Result |
|------|---------|-----------|--------|------|-------|--------|
| 2025-10-15 | ONNX / DirectML | RTX 2000E Ada | **12,762** | **21,743** | **10,288** | [361949](https://browser.geekbench.com/ai/v1/361949) |

## AI Capability

- **Best Single / Half / Quant:** 12,762 / 21,743 / 10,288
- **ACI:** **299.0** — **Tier C**
- **GPU $/ACI:** $2.51 (RTX 2000E Ada cost only, $749.99)
- **System $/ACI:** $5.92 (chassis + GPU, $1,768.99 / 299.0 × 100)

A workstation-class entry GPU on a low-power NAS chassis. The RTX 2000E Ada is interesting precisely because it's a 70W single-slot card with 16 GB VRAM — uniquely suited to a small Proxmox box where power, thermal, and slot height matter more than raw throughput. The N5 Pro's 5-bay storage and 10 GbE networking make this a hybrid AI/storage host rather than a pure compute box.

## Notes

- **RAM** — the $1,019 N5 Pro chassis was barebones; the 96 GB Crucial DDR5 SODIMM kit ($224.99, 2024) is shared physically with the BD790i and swaps between the two machines.
- **Only one test run** — consider running a CPU-only baseline and re-running the GPU benchmark for variance check.
- **Form factor advantage:** the N5 Pro is the only NAS in the collection that's also a Proxmox AI host — useful pattern for low-power AI inference colocated with bulk storage.

## See Also
- [[methodology|Benchmark Methodology]]
- [[proxmox-ultra7-265k|Proxmox: Ultra 7 265K]]
- [[proxmox-lenovo-p8-threadripper|Proxmox: Lenovo P8 Threadripper]]
- [[asus-proart-p16-hx370|ASUS ProArt P16]] — same CPU family (consumer HX 370)
- [[asus-proart-px13-hx370|ASUS ProArt PX13]] — same CPU family
