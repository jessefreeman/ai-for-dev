# Prompt: Add a New Benchmark

> Use this prompt by saying *"run the benchmark-add prompt"* or *"add a new benchmark"*.

You are adding a new Geekbench AI test result (or set of results) to the personal hardware benchmarks in `wiki/benchmarks/`.

## Inputs
- A Geekbench AI result URL, an export, or a screenshot — the user will provide this.
- Optionally: pricing info, build notes, intended use.

## Protocol

### Phase 1 — Identify the rig

A **rig** is uniquely identified by its **CPU + motherboard/chassis** combo. Computer names are friendly labels for that pair.

1. From the new test data, extract: CPU model, motherboard or chassis, GPU(s) tested, NPU/Neural Engine if any, RAM.
2. Check `wiki/benchmarks/index.md` for an existing rig with the same CPU+mobo.
   - **If it exists:** you are *adding rows* to that existing rig page, not creating a new one. A new GPU is a new row, not a new rig.
   - **If it doesn't exist:** you are creating a new rig page.

### Phase 2 — Confirm with the user

Report back:
- Whether this is an "add row" or "new rig" operation.
- The proposed rig page filename (kebab-case: `<vendor-or-chassis>-<board>-<cpu>.md`).
- Which Geekbench result IDs you're including.
- What the user needs to provide that's missing (pricing? motherboard model? form factor?).

**Wait for confirmation** before writing.

### Phase 3 — Write or update the page

- **New rig:** copy `.instructions/projects/benchmarks/rig-template.md` to `wiki/benchmarks/rigs/<slug>.md` and fill in every field. Delete the instructional comment block.
- **Existing rig:** add the new test rows to the run table. If a new GPU was added, also add it to the AI Capability per-config table. Bump `updated` in frontmatter.

Compute the **AI Capability Index (ACI)** per [methodology](../../../wiki/benchmarks/methodology.md):

```
ACI = (BestSingle + BestHalf*0.6 + BestQuant*0.4) / 100
```

Best across **any** backend tested for that rig (or that GPU configuration on a swap bench).

Tiers: **S** 700+ | **A** 500–699 | **B** 300–499 | **C** 150–299 | **D** <150.

### Phase 4 — Update the index

In `wiki/benchmarks/index.md`:
1. Add or move the rig's row in the master ranking table. Keep it sorted by ACI descending.
2. Add the rig to the appropriate "By form factor" subsection.
3. If the rig sets a new record (highest Single, Half, Quant, or any NPU/NE category), update the "Notable champions" callouts.
4. If the new rig is in S or A tier, consider whether `wiki/hot.md` should mention it.

### Phase 5 — Cross-link

In the rig page's See Also section, link to:
- [[methodology|Benchmark Methodology]]
- [[index|Benchmark Index]]
- 1–3 related rigs (same CPU family, same GPU, same form factor)
- Any model-specific guide whose VRAM/memory profile makes this rig relevant (e.g. [[Gemma 4 VRAM Requirements]])

### Phase 6 — Log and commit

1. Append a dated `benchmarks:` entry to `wiki/log.md` summarizing what was added.
2. Commit with message `benchmarks: <rig slug> — <short summary>`.

## Pricing rules
- Use what the user paid **at time of purchase**, with year in parentheses: `$699 (2024)`.
- If unknown, write `TBD`. Don't guess.
- Compute `$/ACI = TotalCost / ACI` only when both are real numbers.

## Don'ts
- Never create a new rig page when the CPU+mobo matches an existing one. Add rows to the existing rig.
- Never invent pricing. TBD is acceptable; fabrication is not.
- Never compute ACI from a single backend's score. It's "best across any backend".
- Never skip the index update. The leaderboard is the whole point of this section.
