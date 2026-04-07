---
type: analysis
sources: ["raw/<source-file-or-geekbench-export>"]
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [benchmark, rig, <vendor>, <cpu-family>, <gpu-family>, <form-factor>]
---

<!--
================================================================================
RIG BENCHMARK TEMPLATE
================================================================================
INSTRUCTIONS FOR THE LLM:

1. A "rig" is uniquely identified by its CPU + motherboard. If a new test uses
   the same CPU+mobo as an existing rig, ADD A ROW to that rig's page instead
   of creating a new file.

2. Naming: rig page filename is <vendor-or-chassis>-<board>-<cpu>.md in
   kebab-case. Example: minisforum-bd790i-ryzen9-7945hx.md

3. Fill EVERY Geekbench AI run for this rig (CPU, iGPU, dGPU, NPU, NE), one
   row per backend/component combo. Bold the highest score in each precision
   column. Each row must link to the Geekbench result by ID.

4. Compute the AI Capability Index (ACI):
       ACI = (BestSingle + BestHalf*0.6 + BestQuant*0.4) / 100
   where Best* is the highest score across ANY backend tested on this rig.
   For multi-GPU rigs, compute one ACI per GPU configuration.

   Tiers: S 700+ | A 500-699 | B 300-499 | C 150-299 | D <150

5. Pricing: use what the user paid AT TIME OF PURCHASE, with the year in
   parentheses. If unknown, write TBD. Compute $/ACI = TotalCost / ACI when
   both are known.

6. After creating/updating this rig page, ALWAYS update:
   - wiki/benchmarks/index.md  (add/move row in the master ranking table,
     keep table sorted by ACI descending; also update form-factor section,
     and any "notable champions" callouts if this rig sets a new record)
   - wiki/log.md                (append a benchmark entry under today's date)
   - wiki/hot.md                (only if this rig is materially noteworthy)

7. Cross-link to related rigs (same CPU family, same GPU, same form factor)
   in the See Also section.

8. Delete this entire HTML comment block before saving the page.
================================================================================
-->

# {Rig Friendly Name}

**Identifier:** {CPU} on {Motherboard / Chassis}
**Form factor:** {desktop | mini-ITX | mini-PC | SFF | server | gaming-laptop | creator-laptop | ultraportable | fanless-laptop | tablet}
**Status:** {active | retired | repurposed | sold}

{One- or two-sentence description: what makes this rig interesting, where it
fits in your stack, and any quirks (passthrough, swap bench, soldered CPU, etc.)}

## Build & Cost

| Component | Spec | Cost |
|-----------|------|------|
| Motherboard / chassis | {model} | $X (year) |
| CPU | {model, cores, gen} | $X (year) |
| RAM | {capacity, type, speed} | $X (year) |
| GPU | {model, VRAM} | $X (year) |
| Storage | {optional} | $X (year) |
| **Total invested** | | **$X** |
| $/ACI | | $X |

## Geekbench AI Runs

<!-- Bold the highest value in each of the Single, Half, Quant columns. -->

| Backend | Component | Single | Half | Quant | Result |
|---------|-----------|--------|------|-------|--------|
| ONNX / DirectML | {GPU model} | **X** | **X** | **X** | [ID](https://browser.geekbench.com/ai/v1/ID) |
| ONNX / CPU | {CPU model} | X | X | X | [ID](https://browser.geekbench.com/ai/v1/ID) |
| OpenVINO / CPU | {CPU model} | X | X | X | [ID](https://browser.geekbench.com/ai/v1/ID) |
| OpenVINO / NPU | {NPU model} | X | X | X | [ID](https://browser.geekbench.com/ai/v1/ID) |
| Core ML / GPU | {Apple chip} | X | X | X | [ID](https://browser.geekbench.com/ai/v1/ID) |
| Core ML / Neural Engine | {Apple chip NE} | X | X | X | [ID](https://browser.geekbench.com/ai/v1/ID) |
| Core ML / CPU | {Apple chip CPU} | X | X | X | [ID](https://browser.geekbench.com/ai/v1/ID) |

<!--
For GPU swap benches (one CPU, multiple GPUs), use a per-GPU matrix instead:

### GPU swap matrix

| GPU | VRAM | Backend | Single | Half | Quant | Result |
|-----|------|---------|--------|------|-------|--------|
| RTX 5090 | 32 GB | ONNX/DirectML | X | X | X | [ID](url) |
| ...     | ...   | ...           | ...| ...| ... | ...     |

### CPU baseline
| Backend | Single | Half | Quant | Result |
|---------|--------|------|-------|--------|
| ONNX / CPU | X | X | X | [ID](url) |
-->

## AI Capability

- **Best Single:** X ({which backend won})
- **Best Half:** X ({which backend won})
- **Best Quantized:** X ({which backend won})
- **ACI:** **X** — **Tier {S/A/B/C/D}**

<!-- For multi-GPU rigs, use a per-config table:

| Configuration | Best Single | Best Half | Best Quant | ACI | Tier |
|---------------|-------------|-----------|------------|-----|------|
| + RTX 5090    | X | X | X | X | S |
| + RTX 3090    | X | X | X | X | A |
-->

{2-4 sentences interpreting the numbers. Mention the binding constraint
(VRAM ceiling, CPU bottleneck, memory bandwidth, thermals). Note any
surprising results (e.g. NPU beating GPU on quant). If relevant, point to
a model-specific guide like [[Gemma 4 VRAM Requirements]] for what fits.}

## Notes

{Optional: known issues, driver versions, BIOS settings, thermal behavior,
intended use case, what this rig is good for and what it isn't.}

## See Also
- [[methodology|Benchmark Methodology]]
- [[index|Benchmark Index & Rankings]]
- [[<related-rig-1>|Related rig 1]] — {why related}
- [[<related-rig-2>|Related rig 2]] — {why related}
