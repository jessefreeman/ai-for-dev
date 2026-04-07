# YouTube Source Template

Use this template when ingesting a YouTube video transcript or notes from a YouTube video. Lives at `wiki/sources/summary-<slug>.md` like any other source-summary, but YouTube content has specific bias and sponsorship rules.

## ⚠️ Critical rules — read first

1. **NEVER add the video's sponsor as a wiki entity.** Sponsors are paid placements, not editorial endorsements. Even if the sponsor is a tool that fits the wiki's focus (a code editor, an AI service, an MCP server, anything), do **not** create a `wiki/tools/`, `wiki/open-source/`, or `wiki/business/` page for it from a sponsored mention. If the sponsor genuinely deserves wiki coverage, the user can ask for it explicitly in a separate ingest from a non-sponsored source.

2. **Flag the sponsor in the source-summary.** Note who sponsored the video so future-you knows which segment to discount when re-reading. Format: a single bullet under "Sponsorship & Bias Notes" — no marketing language, no link to the sponsor's site.

3. **Watch for product placement.** Creators frequently feature tools, hardware, or services that are *not* labeled as sponsorships but are part of an affiliate program, free review unit, or reciprocal-promotion arrangement. Symptoms:
   - The creator demos a specific brand-name product as the "obvious choice" without comparing alternatives
   - The video has an affiliate link in the description for the featured product
   - The creator mentions "the team at X sent me this" or "I've been using X for a while now"
   - The product appears prominently on screen in B-roll without being central to the topic
   When you spot this, **note it under "Sponsorship & Bias Notes"** as a possible bias even if no formal sponsorship is disclosed. Err on the side of flagging.

4. **Distinguish claims from demos.** A creator showing a tool working in a 3-minute demo segment is not the same as that tool being benchmarked, peer-reviewed, or used in production at scale. Mark demo-only claims explicitly:
   > *(claim is from a single demo in the video, not independent verification)*

5. **Bias check on comparisons.** If the video compares Tool A vs Tool B and the creator concludes A wins, check whether A is a sponsor, an affiliate product, or a previous-video subject the creator is invested in. If yes, present the comparison with a caveat — don't file it as a clean "A beats B" claim in `wiki/analyses/`.

6. **The creator is also an entity.** Update or create their person page per [`person-page.md`](person-page.md). The creator's editorial track record, biases, and affiliations should accumulate across every video of theirs you ingest — that's what makes the wiki useful over time.

## Frontmatter

```yaml
---
type: source-summary
sources: ["raw/archive/<filename>.md"]
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [video, youtube, <domain-tags>]
---
```

## Body structure

```markdown
# {Video Title}

**Channel:** [[creator-slug|Creator Name]]
**Format:** YouTube video
**URL:** {video URL — only if user-provided, never construct one}
**Length:** ~X minutes
**Published:** YYYY-MM-DD (if known)
**Sponsor:** {sponsor name, or "none disclosed"}

## Summary

2–4 sentence high-density abstract. What does the video argue, demo, or teach? Why does it matter for the wiki?

## Key Points

- Bullet 1 — claim, framework, or fact (with numbers when applicable)
- Bullet 2 — ...
- Bullet 3 — ...

(5–12 bullets. Mark claims that came from demos as such.)

## Sponsorship & Bias Notes

**Sponsor:** {name}, featured in segment from {timestamp if known}. **Not added to the wiki** per sponsorship rule. Discount any claims about {sponsor's product category} unless independently verified.

**Product placement / affiliations:** {list any tools/products that appeared prominently without being labeled sponsorships, plus why you flagged them — affiliate link in description, "they sent me this," demo-only treatment, etc. If none, write "none observed."}

**Comparison bias:** {if the video compares competing products, note whether the creator has a financial or editorial relationship with any of them. If none, write "none observed."}

## Notable Quotes

> "Quote here." — speaker, context

(Optional. Skip if nothing is worth verbatim recall.)

## Connected Pages

- [[creator-slug|Creator]] — author hub
- [[concept-slug|Concept]] — how this video relates
- [[tool-slug|Tool]] — only tools the creator covered editorially, **never the sponsor**

## See Also
- [[related-source]] — adjacent video or article
```

## Quality bar (YouTube-specific)

- A 30-minute video → ~500-word summary, max.
- Strip filler: "Hey what's up guys" intros, end-card promotions, Patreon plugs, "smash that like button" exhortations.
- If the video is mostly a demo with sparse content, the summary can be shorter — don't pad.
- If the video is sponsored *and* the sponsor's product is the primary subject (a paid review), flag the entire video as a paid placement in the Bias Notes and treat every claim with extra skepticism.

## See Also
- [[../rules/page-conventions|Page Conventions]]
- [[source-summary|Source Summary Template]]
- [[person-page|Person Page Template]]
- [[../prompts/ingest|Ingest Prompt]]
