---
type: analysis
sources: ["raw/benchmarks/_source.html"]
created: 2026-04-07
updated: 2026-04-07
tags: [benchmarks, index, geekbench-ai, rankings]
---

# Personal Rig Benchmark Index

Historical Geekbench AI snapshots for every machine I own (or have owned and tested). For methodology and the **AI Capability Index (ACI)** formula see [[methodology|Benchmark Methodology]]. For VRAM-driven model picks see [[Gemma 4 VRAM Requirements]].

A **rig** is identified by its CPU + motherboard. Swapping a GPU produces a new row on the same rig page, not a new rig.

## Master Ranking — by AI Capability Index

| # | Rig + Config | Single | Half | Quant | ACI | Tier |
|---|---|---|---|---|---|---|
| 1 | [[proxmox-lenovo-p8-threadripper\|Proxmox: Lenovo P8 Threadripper]] + RTX PRO 6000 Blackwell | 44,500 | 67,341 | 32,427 | **978.8** | **S** |
| 2 | [[proxmox-lenovo-p8-threadripper\|Proxmox: Lenovo P8 Threadripper]] + RTX 5090 | 44,345 | 65,437 | 32,958 | 970.5 | S |
| 3 | [[msi-codex-r-i5-12400f\|MSI Codex R]] + RTX 5090 | 42,496 | 61,328 | 31,856 | 920.4 | S |
| 4 | [[proxmox-ultra7-265k\|Proxmox: Ultra 7 265K]] + RTX 5090 | 36,140 | 50,470 | 27,963 | 775.4 | S |
| 5 | [[msi-codex-r-i5-12400f\|MSI Codex R]] + RTX 4070 Ti | 27,553 | 39,999 | 21,827 | 642.4 | A |
| 6 | [[minisforum-bd790i-ryzen9-7945hx\|Minisforum BD790i]] + RTX 4070 Super | 27,830 | 42,004 | 21,032 | 614.5 | A |
| 7 | [[proxmox-lenovo-p8-threadripper\|Proxmox: Lenovo P8 Threadripper]] + RTX 3090 | 26,521 | 41,573 | 15,689 | 580.2 | A |
| 8 | [[asus-b550i-ryzen7-5800x\|ASUS B550-I + 5800X]] + RTX 4070 Super | 25,495 | 37,950 | 19,810 | 561.9 | A |
| 9 | [[minisforum-bd790i-ryzen9-7945hx\|Minisforum BD790i]] + RTX 3090 | 25,104 | 37,226 | 18,444 | 548.2 | A |
| 10 | [[mac-studio-m3-ultra\|Mac Studio M3 Ultra]] (28C/60C, 256 GB) | 20,984 | 30,643 | 33,379 | 527.2 | A |
| 11 | [[minisforum-ms-s1-max-ai395\|Minisforum MS-S1 MAX]] + Radeon 8060S | 25,316 | 31,296 | 19,970 | 520.8 | A |
| 12 | [[mac-mini-m4\|Mac Mini M4]] (24 GB) | 8,606 | 36,802 | 51,472 | 512.8 | A |
| 13 | [[asus-zephyrus-g16-ultra9-185h\|ASUS Zephyrus G16]] + RTX 4090 Laptop | 22,486 | 33,742 | 17,513 | 497.4 | B |
| 14 | [[msi-codex-r-i5-12400f\|MSI Codex R]] + RTX 3090 | 21,048 | 29,810 | 13,563 | 444.5 | B |
| 15 | [[macbook-neo-a18-pro\|MacBook Neo (A18 Pro, 8 GB)]] | 6,885 | 32,583 | 44,385 | 441.9 | B |
| 16 | [[asus-proart-p16-hx370\|ASUS ProArt P16]] + RTX 4070 Laptop | 18,992 | 31,754 | 14,173 | 437.1 | B |
| 17 | [[asus-proart-px13-hx370\|ASUS ProArt PX13]] (32 GB) + RTX 4050 Laptop | 14,537 | 26,877 | 13,668 | 361.3 | B |
| 18 | [[msi-codex-r-i5-12400f\|MSI Codex R]] + RTX 4060 | 14,422 | 22,829 | 11,696 | 326.7 | B |
| 19 | [[msi-codex-r-i5-12400f\|MSI Codex R]] + RTX 3060 | 13,582 | 23,007 | 9,272 | 311.4 | B |
| 20 | [[minisforum-n5-pro-hx-pro-370\|Minisforum N5 Pro]] + RTX 2000E Ada | 12,762 | 21,743 | 10,288 | 299.0 | C |
| 21 | [[asus-zephyrus-g15-6900hs\|ASUS Zephyrus G15]] + RTX 3060 Laptop | 12,858 | 21,751 | 8,784 | 294.2 | C |
| 22 | [[macbook-pro-m3-max\|MacBook Pro M3 Max]] | 13,411 | 13,410 | 13,896 | 270.2 | C |
| 23 | [[macbook-air-m2\|MacBook Air M2]] | 5,419 | 12,050 | 13,343 | 179.9 | C |
| 24 | [[intel-nuc9v7qnx\|Intel NUC9V7QNX]] + RTX 4060 | 13,112 | — | — | (incomplete) | ? |
| 25 | [[lenovo-thinkpad-x1-fold-i5-1230u\|Lenovo ThinkPad X1 Fold]] | 1,847 | 1,750 | 3,391 | 42.5 | D |

> **The Lenovo P8 Threadripper now occupies #1, #2, and #7** because the same physical workstation has been tested with the PRO 6000 Blackwell, RTX 5090, and RTX 3090. Cross-host comparison: the P8's RTX 5090 run (44,345) is **8,205 points higher** than the Ultra 7 host's best 5090 run (36,140) — same GPU, different motherboard/CPU/cooling, ~23% delta. Worth investigating whether that's PCIe topology, host CPU contention, or thermal headroom.

> The Intel NUC's RTX 4060 GPU run is missing half/quant in the source dump — re-benchmark needed for a complete ACI.

## Value Ranking — by $/ACI

Lower is better. Cost basis is "system" (whole machine paid price) or "GPU only" for swap-bench rigs where the GPU is the variable.

| # | Rig + Config | Cost | Cost basis | ACI | $/ACI |
|---|---|---|---|---|---|
| 1 | [[msi-codex-r-i5-12400f\|MSI Codex R]] + RTX 4060 (included) | ~$300 est | GPU only | 326.7 | **~$0.92** ⭐ |
| 2 | [[msi-codex-r-i5-12400f\|MSI Codex R]] + RTX 4070 Ti | $653 | GPU only | 642.4 | **$1.02** |
| 3 | [[macbook-neo-a18-pro\|MacBook Neo (A18 Pro)]] | $599 | system | 441.9 | $1.36 |
| 4 | [[mac-mini-m4\|Mac Mini M4]] (24 GB) | $899 | system | 512.8 | $1.75 |
| 5 | [[proxmox-lenovo-p8-threadripper\|Lenovo P8 Threadripper]] + RTX 3090 | $1,132 | GPU only | 580.2 | $1.95 |
| 6 | [[proxmox-lenovo-p8-threadripper\|Lenovo P8 Threadripper]] + RTX 5090 | $1,999 | GPU only | 970.5 | $2.06 |
| 7 | [[msi-codex-r-i5-12400f\|MSI Codex R]] + RTX 5090 | $1,999 | GPU only | 920.4 | $2.17 |
| 8 | [[minisforum-bd790i-ryzen9-7945hx\|Minisforum BD790i]] + RTX 4070 Super | $1,358 | system | 614.5 | $2.21 |
| 9 | [[msi-codex-r-i5-12400f\|MSI Codex R]] + RTX 3060 | $706 | GPU only | 311.4 | $2.27 |
| 10 | [[asus-b550i-ryzen7-5800x\|ASUS B550-I + 5800X]] | $1,522 | system | 561.9 | $2.71 |
| 11 | [[minisforum-n5-pro-hx-pro-370\|Minisforum N5 Pro]] + RTX 2000E Ada | $750 | GPU only | 299.0 | $2.51 |
| 12 | [[msi-codex-r-i5-12400f\|MSI Codex R]] + RTX 3090 | $1,132 | GPU only | 444.5 | $2.55 |
| 13 | [[proxmox-ultra7-265k\|Proxmox: Ultra 7 265K]] + RTX 5090 | $1,999 | GPU only | 775.4 | $2.58 |
| 14 | [[asus-proart-px13-hx370\|ASUS ProArt PX13]] (32 GB) | $1,166 | system | 361.3 | $3.23 |
| 15 | [[asus-zephyrus-g15-6900hs\|ASUS Zephyrus G15]] | $1,100 | system | 294.2 | $3.74 |
| 16 | [[minisforum-ms-s1-max-ai395\|Minisforum MS-S1 MAX]] (128 GB) | $2,300 | system | 520.8 | $4.42 |
| 17 | [[asus-proart-p16-hx370\|ASUS ProArt P16]] | $2,018 | system | 437.1 | $4.62 |
| 18 | [[asus-zephyrus-g16-ultra9-185h\|ASUS Zephyrus G16]] | $2,565 | system | 497.4 | $5.16 |
| 19 | [[minisforum-n5-pro-hx-pro-370\|Minisforum N5 Pro]] (chassis + RAM + GPU) | $1,994 | system | 299.0 | $6.67 |
| 20 | [[macbook-air-m2\|MacBook Air M2]] | $1,199 | system | 179.9 | $6.66 |
| 21 | [[proxmox-lenovo-p8-threadripper\|Lenovo P8 Threadripper]] + RTX PRO 6000 Blackwell | $9,145 | GPU only | 978.8 | $9.34 |
| 22 | [[mac-studio-m3-ultra\|Mac Studio M3 Ultra]] (28C/60C, 256 GB) | $5,399 | system | 527.2 | $10.24 |
| 23 | [[macbook-pro-m3-max\|MacBook Pro M3 Max]] | $2,999 | system | 270.2 | $11.10 |
| 24 | [[lenovo-thinkpad-x1-fold-i5-1230u\|Lenovo ThinkPad X1 Fold]] | $1,724 | system | 42.5 | $40.57 |


**Findings:**
1. **The RTX 4070 Ti is the absolute value champion** — $1.02/ACI on the MSI Codex R. The free-with-prebuilt RTX 4060 is technically better at ~$0.92/ACI but only because it cost nothing as a discrete purchase.
2. **5090 host scaling is real:** the same RTX 5090 hits $2.06/ACI on the Lenovo P8, $2.17 on the MSI Codex R, $2.58 on the Ultra 7 host. That's a **25% spread on the same GPU** depending on the platform underneath it. The Threadripper PRO 9965WX + workstation cooling outperforms the consumer Ultra 7 box by 23% on the same card.
3. **2022 GPU shortage hangover:** the RTX 3060 at $706 (2022) is roughly 2× what it would cost today and 2× the value of the same generation's 3090 at $1,132 (2025). Buying during shortages permanently locks in bad $/ACI math.
4. **PRO 6000 Blackwell at $9.34/ACI is the worst-value compute card** in the collection. Its only justification is the 96 GB VRAM ceiling for hosting models the 5090 can't fit.

## Quick views

### By form factor

**Workstations & Proxmox hosts**
- [[proxmox-lenovo-p8-threadripper|Lenovo P8 Threadripper PRO 9965WX]] — RTX PRO 6000 Blackwell, RTX 5090, RTX 3090
- [[proxmox-ultra7-265k|Proxmox: Intel Core Ultra 7 265K]] — RTX 5090
- [[minisforum-bd790i-ryzen9-7945hx|Minisforum BD790i (7945HX)]] — RTX 4070 Super, RTX 3090
- [[msi-codex-r-i5-12400f|MSI Codex R (i5-12400F)]] — 5 GPU swap bench
- [[asus-b550i-ryzen7-5800x|ASUS B550-I + 5800X]]

**Mini-PCs & NAS**
- [[minisforum-ms-s1-max-ai395|Minisforum MS-S1 MAX (Ryzen AI MAX+ 395)]]
- [[minisforum-n5-pro-hx-pro-370|Minisforum N5 Pro (HX PRO 370)]] — also a Proxmox host with RTX 2000E Ada
- [[mac-mini-m4|Mac Mini M4]]
- [[mac-studio-m3-ultra|Mac Studio M3 Ultra]]
- [[intel-nuc9v7qnx|Intel NUC9V7QNX]]

**Laptops (gaming/creator)**
- [[asus-zephyrus-g16-ultra9-185h|ASUS ROG Zephyrus G16 (Ultra 9 185H + RTX 4090)]]
- [[asus-proart-p16-hx370|ASUS ProArt P16 (HX 370 + RTX 4070)]]
- [[asus-zephyrus-g15-6900hs|ASUS ROG Zephyrus G15 (6900HS + RTX 3060)]]
- [[asus-proart-px13-hx370|ASUS ProArt PX13 (HX 370 + RTX 4050)]]
- [[macbook-pro-m3-max|MacBook Pro M3 Max]]

**Laptops (ultraportable / fanless / foldable)**
- [[macbook-neo-a18-pro|MacBook Neo (A18 Pro)]]
- [[macbook-air-m2|MacBook Air M2]]
- [[lenovo-thinkpad-x1-fold-i5-1230u|Lenovo ThinkPad X1 Fold (i5-1230U)]]

### Notable champions
- **Highest Single:** RTX PRO 6000 Blackwell on Lenovo P8 — 44,500
- **Highest Half:** RTX PRO 6000 Blackwell — 67,341
- **Highest Quantized (any backend):** Mac Mini M4 Neural Engine — **51,472** (beats every NVIDIA card)
- **Best $/ACI:** MacBook Neo (A18 Pro) — $1.36
- **Best $/ACI on a discrete GPU:** RTX 3090 on Lenovo P8 — $1.95

### NPU/Neural Engine standouts (quant)
1. Mac Mini M4 NE — 51,472
2. MacBook Neo A18 Pro NE — 44,385
3. Mac Studio M3 Ultra NE — 33,379
4. Intel AI Boost (Zephyrus G16) — 11,822

### Strongest CPU-only quantized scores (OpenVINO)
1. Ryzen AI MAX+ 395 — 18,690
2. Ryzen 9 7945HX — 18,444
3. Ryzen AI 9 HX 370 / PX13 — 13,668
4. Ryzen AI 9 HX 370 / P16 — 13,476
5. Apple M3 Max (Core ML) — 4,472

## Open work

- Re-benchmark [[intel-nuc9v7qnx|Intel NUC9V7QNX]] GPU to capture half/quant
- Confirm motherboard + RAM on the three Proxmox hosts via `dmidecode`
- Investigate RTX 5090 score variance on the Ultra 7 host (driver/power state)
- Identify chassis for the Mobile HX PRO 370 Proxmox host

## See Also
- [[methodology|Benchmark Methodology — ACI explained]]
- [[Gemma 4 VRAM Requirements]]
