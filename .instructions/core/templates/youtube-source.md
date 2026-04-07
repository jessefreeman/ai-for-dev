# YouTube Source Template

> **Extension** of [`source-summary.md`](source-summary.md). Use the base template's shape; this file documents only the YouTube-specific overrides and the sponsor/bias rules unique to video content.

## ⚠️ Critical rules — read first

1. **NEVER add the video's sponsor as a wiki entity.** Sponsors are paid placements, not editorial endorsements. Even if the sponsor is on-topic, do **not** create a wiki entity page for it from a sponsored mention. If the sponsor genuinely deserves wiki coverage, the user can ask for it explicitly in a separate ingest from a non-sponsored source.

2. **Flag the sponsor in the source-summary.** Note who sponsored the video so future-you knows which segment to discount when re-reading. Format: a single bullet under "Sponsorship & Bias Notes" — no marketing language, no link to the sponsor's site.

3. **Watch for product placement.** Creators frequently feature tools or services that are *not* labeled as sponsorships but are part of an affiliate program, free review unit, or reciprocal-promotion arrangement. Symptoms:
   - The creator demos a specific brand-name product as the "obvious choice" without comparing alternatives
   - The video has an affiliate link in the description for the featured product
   - The creator mentions "the team at X sent me this" or "I've been using X for a while now"
   - The product appears prominently on screen in B-roll without being central to the topic

   When you spot this, **note it under "Sponsorship & Bias Notes"** as a possible bias even if no formal sponsorship is disclosed. Err on the side of flagging.

4. **Distinguish claims from demos.** A creator showing a tool working in a 3-minute demo segment is not the same as that tool being benchmarked, peer-reviewed, or used in production at scale. Mark demo-only claims explicitly:
   > *(claim is from a single demo in the video, not independent verification)*

5. **Bias check on comparisons.** If the video compares Tool A vs Tool B and the creator concludes A wins, check whether A is a sponsor, an affiliate product, or a previous-video subject the creator is invested in. If yes, present the comparison with a caveat — don't file it as a clean "A beats B" claim in `wiki/analyses/`.

6. **The creator is also an entity.** Update or create their person page per [`person-page.md`](person-page.md). The creator's editorial track record, biases, and affiliations should accumulate across every video of theirs you ingest — that's what makes the wiki useful over time.

## Frontmatter override

Use the base template's frontmatter, but add the format tags:

```yaml
tags: [video, youtube, <domain-tags>]
```

## Body header override

Replace the generic `**Author / channel:** ... **Format:** ...` block from the base with:

```markdown
# {Video Title}

**Channel:** [[creator-slug|Creator Name]]
**Format:** YouTube video
**URL:** {video URL — only if user-provided, never construct one}
**Length:** ~X minutes
**Published:** YYYY-MM-DD (if known)
**Sponsor:** {sponsor name, or "none disclosed"}
```

Everything else (Summary, Key Points, Notable Quotes, Connected Pages, See Also) follows [`source-summary.md`](source-summary.md) unchanged.

## Added section: Sponsorship & Bias Notes

Insert this section **between Key Points and Notable Quotes**:

```markdown
## Sponsorship & Bias Notes

**Sponsor:** {name}, featured in segment from {timestamp if known}. **Not added to the wiki** per sponsorship rule. Discount any claims about {sponsor's product category} unless independently verified.

**Product placement / affiliations:** {list any tools/products that appeared prominently without being labeled sponsorships, plus why you flagged them — affiliate link in description, "they sent me this," demo-only treatment, etc. If none, write "none observed."}

**Comparison bias:** {if the video compares competing products, note whether the creator has a financial or editorial relationship with any of them. If none, write "none observed."}
```

## Connected Pages constraint

Same as base, but with one extra rule: in the **tools / open-source** links, **never link the sponsor**. The sponsor doesn't get a wiki entity (rule #1 above), so it shouldn't be referenced as one.

## Quality bar (YouTube-specific)

- A 30-minute video → ~500-word summary, max.
- Strip filler: "Hey what's up guys" intros, end-card promotions, Patreon plugs, "smash that like button" exhortations.
- If the video is mostly a demo with sparse content, the summary can be shorter — don't pad.
- If the video is sponsored *and* the sponsor's product is the primary subject (a paid review), flag the entire video as a paid placement in the Bias Notes and treat every claim with extra skepticism.

## See Also
- [`source-summary.md`](source-summary.md) — base template (this file extends it)
- [`person-page.md`](person-page.md) — for the creator's author hub
- [`../rules/page-conventions.md`](../rules/page-conventions.md)
- [`../prompts/ingest.md`](../prompts/ingest.md)
