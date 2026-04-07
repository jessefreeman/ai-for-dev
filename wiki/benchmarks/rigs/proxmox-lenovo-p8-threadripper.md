---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmark, rig, amd, threadripper, nvidia, proxmox, lenovo, workstation, gpu-passthrough]
---

# Proxmox Host: Lenovo P8 (Threadripper PRO 9965WX)

**Identifier:** AMD Ryzen Threadripper PRO 9965WX on Lenovo ThinkStation P8
**Form factor:** workstation tower running Proxmox with GPU passthrough
**Status:** active

A Lenovo ThinkStation P8 workstation repurposed as a Proxmox host with GPU passthrough to a Windows 11 VM. Confirmed by user notes on the test results ("Lenovo P8 Proxmox VM"). This is the only rig in the collection running a Threadripper PRO and the only one tested with the **NVIDIA RTX PRO 6000 Blackwell Max-Q**.

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| System | Lenovo ThinkStation P8 (30HHCTO1WW), Win 11 Pro, 1400W PSU, 512 GB NVMe | $5,045.72 (2025-10-20) |
| CPU | AMD Threadripper PRO 9965WX (Zen 5, 24c/48t, 4.20–5.40 GHz) | included |
| RAM (base) | 16 GB DDR5-6400 ECC RDIMM (1×16) — Lenovo factory config | included |
| RAM upgrade | NEMIX 256 GB (4×64 GB) DDR5-4800 ECC RDIMM (PC5-38400) | $1,636.99 (2025, ~Aug) |
| GPU (config A) | NVIDIA RTX PRO 6000 Blackwell Max-Q 96 GB | $9,145.00 (2025) |
| GPU (config B) | NVIDIA RTX 3090 24 GB | $1,132.45 (2025) |
| GPU (config C) | NVIDIA RTX 5090 32 GB | $1,999.00 (2025) |
| **System base + RAM upgrade** | | **$6,682.71** |

## Beyond Geekbench: vLLM + FP8 Throughput

Geekbench AI numbers reflect *single-request* throughput. The real ceiling for this rig comes from running [[vllm|vLLM]] with [[fp8-quantization|FP8 quantization]] on the Blackwell tensor cores — see [[summary-alex-ziskind-vllm-fp8|Alex Ziskind's benchmark on the same RTX PRO 6000 class]]: ~5,800–6,000 tokens/sec sustained across 256 concurrent users with Quen 3 Coder 30B FP8. The Max-Q variant in this rig will be slightly lower (lower power envelope) but in the same order of magnitude. **This is the practical answer to "why pay $9,145 for the PRO 6000."**

## Geekbench AI Runs

All runs are GPU passthrough into a Windows 11 Pro VM (16 GB allocated to guest).

### Config A — RTX PRO 6000 Blackwell

| Date | Single | Half | Quant | Result |
|------|--------|------|-------|--------|
| 2026-03-27+ | **44,500** | **67,341** | **32,427** | [470442](https://browser.geekbench.com/ai/v1/470442) |

### Config B — RTX 5090

The same Lenovo P8 host was also tested with an RTX 5090 in passthrough — confirmed by the CPU ID reporting as Threadripper PRO 9965WX in this run (the [[proxmox-ultra7-265k|Ultra 7 host]] runs the rest of the 5090 tests).

| Date | Single | Half | Quant | Result |
|------|--------|------|-------|--------|
| 2026-03-27+ | **44,345** | **65,437** | **32,958** | [470447](https://browser.geekbench.com/ai/v1/470447) |

### Config C — RTX 3090

| Date | Single | Half | Quant | Result |
|------|--------|------|-------|--------|
| 2026-01-25 | **26,521** | **41,573** | **15,689** | [470438](https://browser.geekbench.com/ai/v1/470438) |
| earlier | 24,943 | 37,641 | 15,099 | [428699](https://browser.geekbench.com/ai/v1/428699) |

## AI Capability

| Configuration | Best Single | Best Half | Best Quant | ACI | Tier | GPU cost | GPU $/ACI |
|---------------|-------------|-----------|------------|-----|------|----------|-----------|
| **+ RTX PRO 6000 Blackwell** | 44,500 | 67,341 | 32,427 | **978.8** | **S** | $9,145 | $9.34 |
| + RTX 5090 | 44,345 | 65,437 | 32,958 | 970.5 | S | $1,999 | $2.06 |
| + RTX 3090 | 26,521 | 41,573 | 15,689 | 580.2 | A | $1,132 | $1.95 ⭐ |

The **RTX 3090 is the best $/ACI of any compute card in the entire collection** (1.95) — but the **RTX 5090 on the same host gets within 1% of the PRO 6000's score for 22% of the GPU cost**. The PRO 6000 Blackwell only justifies its premium when a workload needs the 96 GB VRAM. For anything that fits in 32 GB, the 5090 is dramatically more efficient per dollar; for anything that fits in 24 GB, the 3090 is the value champion.

**Total invested for the P8 with all three cards + RAM upgrade:** $5,045.72 + $1,636.99 + $9,145 + $1,999 + $1,132.45 = **$18,959.16**

**Notes:** the NEMIX RAM kit is technically marketed for the ASUS Pro WS WRX90E SAGE SE (also a Threadripper PRO board) but the same DDR5-4800 ECC RDIMM modules work in any compatible Threadripper PRO platform — the P8's official spec sheet supports DDR5 ECC RDIMM up to 8 channels. Confirmed installed via the P8's actual host OS, not from Geekbench (which only sees the VM's allocated 16 GB).

## Notes

- **Workstation board identification needed** — confirm Lenovo P8 motherboard model and host RAM via `dmidecode` on the Proxmox host.
- **Threadripper PRO 9965WX** is a 24-core Zen 5 part — capable as a CPU compute fallback, though no CPU-only Geekbench AI run was captured for this host.
- **Test variance is much smaller here** than on the Ultra 7 host — the Threadripper platform plus stable workstation cooling may be why.

## See Also
- [[methodology|Benchmark Methodology]]
- [[proxmox-ultra7-265k|Proxmox: Ultra 7 265K]] — sibling Proxmox host, different physical hardware
- [[Gemma 4 VRAM Requirements]]
