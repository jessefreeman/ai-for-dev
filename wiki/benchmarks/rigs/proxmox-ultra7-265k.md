---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, intel, nvidia, proxmox, server, gpu-passthrough]
---

# Proxmox Host (Core Ultra 7 265K)

**Identifier:** Intel Core Ultra 7 265K on ASUS Pro WS W880-ACE SE
**Form factor:** Proxmox server with GPU passthrough to Win11 VM
**Status:** active

A Proxmox host running an RTX 5090 in passthrough to a Windows 11 VM. The CPU shows up in Geekbench as "QEMU Standard PC (Q35 + ICH9, 2009)" because the guest sees the virtual chipset, but the underlying CPU reports as Intel Core Ultra 7 265K (Arrow Lake, 20c). The VM was allocated 4 vCPUs and 16 GB RAM during testing — host motherboard and total host RAM are not visible to the guest.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| Host CPU | Intel Core Ultra 7 265K (Arrow Lake, 20c, LGA 1851) | $337.50 (2025) |
| Motherboard | ASUS Pro WS W880-ACE SE (LGA 1851, DDR5, PCIe 5.0, TB4, 4× M.2) | $449.99 (2025) |
| Host RAM | Crucial Pro 64 GB (2×32) DDR5-5600 CL46 | $159.99 (2024) |
| GPU | NVIDIA RTX 5090 32 GB | $1,999.00 (2025) |
| **Total parts invested** | | **$2,946.48** |

Per user policy, case / PSU / cooler are not tracked individually for piecemeal builds.

## Geekbench AI Runs

All runs are RTX 5090 passthrough into a Windows 11 Pro VM. Score variance reflects different driver versions, power states, and thermal conditions across runs — the **best** numbers below should be used for ACI.

| Date | Single | Half | Quant | Result |
|------|--------|------|-------|--------|
| 2026-01-24 | **36,140** | **50,470** | **27,963** | [428175](https://browser.geekbench.com/ai/v1/428175) |
| 2026-01-23 | 35,851 | 50,183 | 27,827 | [427800](https://browser.geekbench.com/ai/v1/427800) |
| 2026-01-24 | 35,076 | 48,635 | 27,261 | [428196](https://browser.geekbench.com/ai/v1/428196) |
| 2026-01-24 | 34,718 | 48,382 | 27,311 | [428178](https://browser.geekbench.com/ai/v1/428178) |
| 2025-12-27 | 29,750 | 41,817 | 26,121 | [412119](https://browser.geekbench.com/ai/v1/412119) |

### CPU baseline (inside VM)

| Backend | Single | Half | Quant | Result |
|---------|--------|------|-------|--------|
| ONNX / CPU | 2,471 | 1,362 | 5,437 | [412123](https://browser.geekbench.com/ai/v1/412123) |

## AI Capability

- **Best Single / Half / Quant:** 36,140 / 50,470 / 27,963
- **ACI:** **775.4** — **Tier S**
- **GPU $/ACI:** $2.58 ($1,999 / 775.4 × 100)

The previously-attributed 5090 run [470447](https://browser.geekbench.com/ai/v1/470447) (Single 44,345) is actually from the [[proxmox-lenovo-p8-threadripper|Lenovo P8 Threadripper]] host — its user notes say "proxmox vm + 5090" but the CPU reports as Threadripper PRO 9965WX, not Ultra 7. That run has been moved.

Within this Ultra 7 host, the spread between best (36,140) and worst (29,750) suggests a thermal/power scaling issue worth tracking. VM passthrough also imposes a small overhead vs bare metal.

## Notes

- **Host hardware identification still needed** — Geekbench cannot see through QEMU. Run `dmidecode -t baseboard -t memory` on the Proxmox host directly.
- **Score variance** likely tied to NVIDIA driver versions across the Jan 23–Jan 24 cluster. Worth pinning a known-good driver.

## See Also
- [[methodology|Benchmark Methodology]]
- [[proxmox-lenovo-p8-threadripper|Proxmox: Lenovo P8 Threadripper]] — same passthrough strategy, different host, hosts the PRO 6000 Blackwell
- [[proxmox-mobile-hx-pro-370|Proxmox: Mobile HX PRO 370]] — third Proxmox host
- [[msi-codex-r-i5-12400f|MSI Codex R]] — same RTX 5090 model, bare metal
