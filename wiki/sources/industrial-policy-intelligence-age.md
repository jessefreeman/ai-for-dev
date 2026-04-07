---
type: entity
sources: ["Industrial Policy for the Intelligence Age.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [pdf, paper, policy, ai, ethics, openai, thought-leadership]
---

# Industrial Policy for the Intelligence Age

A 13-page policy paper published by [[OpenAI]] in **April 2026** as the company's first major public industrial-policy position. Frames the transition to "superintelligence" as a moment requiring proactive policy choices, then proposes 21 named ideas across two sections: **Building an Open Economy** and **Building a Resilient Society**. Explicitly positioned as "first contribution to the conversation, not final recommendations."

For the dense bullet-by-bullet record see [[summary-openai-industrial-policy-intelligence-age|the source summary]]. This page captures the document's structure, the policy threads worth tracking long-term, and the editorial framing the wiki should discount.

**Hosted at:** `cdn.openai.com/pdf/.../Industrial%20Policy%20for%20the%20Intelligence%20Age.pdf`

## Why this document is in the wiki

Three reasons:

1. **Industry observability** — Major AI labs publishing policy positions is itself a signal worth tracking. This is OpenAI's first major such artifact, and the policy positions a frontier lab takes publicly will shape what regulations get drafted, what the press covers, and what the next wave of incumbents argues for.
2. **Concrete enough to argue with** — Unlike most AI-policy thought leadership, the 21 proposals are specific. "Public Wealth Fund," "32-hour workweek pilots with no loss in pay," "audit requirements only for the most advanced models" — these have testable consequences and identifiable winners and losers.
3. **Counterpart to the [[saas-death-spiral|sharper market-mechanism thesis]]** — Where Fireship's analysis is "$1T in SaaS market cap evaporated because per-seat pricing breaks," this paper is "here are the policy responses we propose." Both views are useful; neither alone is sufficient.

## Document structure

### Opening — "Let's Talk"

Frames the paper as an open invitation for democratic deliberation. Three guiding principles:

1. **Spread the benefits** — Living standards should rise broadly, not concentrate
2. **Mitigate risks** — Economic disruption, misuse (cyber/biology), loss of alignment or control
3. **Democratize access and agency** — Broad participation should not depend on access to the most powerful models

Argues that the transition to superintelligence requires "an even more ambitious form of industrial policy" than previous tech transitions (electricity, combustion, mass production).

### Section 1 — Building an Open Economy

Eleven proposals targeting worker outcomes, broad participation, and the economic distribution of AI gains. Highlights:

- **Public Wealth Fund** — Sovereign-style fund seeded by AI companies + government, returns distributed to citizens. The most ambitious distributive proposal in the document.
- **Right to AI** — AI access as foundational infrastructure, like literacy or electricity. Aimed at workers, schools, libraries, underserved communities.
- **Modernize the tax base** — Capital-based taxation paired with wage-linked retention incentives. Names "taxes related to automated labor" as an explicit category.
- **Adaptive safety nets** — Automatic temporary expansions (wage insurance, training vouchers, fast cash assistance) that scale with measured displacement metrics
- **Pathways into human-centered work** — Care/connection economy as the absorber for displaced workers; family benefit recognizing caregiving as economically valuable

### Section 2 — Building a Resilient Society

Ten proposals targeting safety, governance, and accountability. Highlights:

- **CAISI auditing regimes** — Build on the Center for AI Standards and Innovation as the foundation for frontier-AI auditing standards. **Important caveat**: audit requirements apply *only* to "a small number of companies and the most advanced models" — see Editorial framing below.
- **Model-containment playbooks** — For dangerous AI systems already released into the world (leaked weights, autonomous self-replicating systems). Explicit acknowledgment that recall is sometimes impossible.
- **Mission-aligned corporate governance** — Frontier AI companies should adopt **Public Benefit Corporation** governance with long-term philanthropic commitments
- **Mechanisms for public input** — Democratic input into model alignment via published model specifications and representative input processes
- **International information-sharing** — Global network of AI Institutes building on CAISI; antitrust safe harbors so companies can share safety info

### Closing — "Starting the Conversation"

OpenAI announces a pilot program: feedback inbox at `newindustrialpolicy@openai.com`, **fellowships of up to $100K and up to $1M in API credits** for work building on these ideas, and an OpenAI Workshop opening in DC May 2026.

## Editorial framing the wiki should discount

OpenAI is a direct interested party in nearly every proposal. The most acute conflicts:

- **"Mission-aligned corporate governance via Public Benefit Corporations"** is *literally OpenAI's own corporate structure*. The proposal validates the structure they already chose for themselves.

- **"Apply audit requirements only to a small number of companies and the most advanced models"** is the canonical regulatory-moat play. OpenAI sits at the top of the moat. The paper explicitly addresses regulatory-capture concerns in the same paragraph, but the disclaimer doesn't change the economic effect.

- **"Accelerate grid expansion" with subsidies, investment credits, and equity stakes** is a request for public subsidy of OpenAI's dominant input cost, paired with a separate proposal that "AI data centers should pay their own way on energy." The two are in tension.

- **Soft language on disruption**: "Some jobs will disappear, others will evolve" is much softer than the [[saas-death-spiral|$1T market-cap thesis]] or the [[five-levels-of-ai-coding|junior pipeline collapse]] framings already in the wiki. OpenAI consistently uses language that minimizes near-term displacement while proposing safety nets for it.

- **"Strengthen CAISI"** is OpenAI calling for an institution it can directly engage with as the dominant US frontier-AI lab.

These flags don't make the paper worthless — they just mean the wiki should treat it as a position document from one specific incumbent, not as a neutral analysis.

## Where this connects to existing wiki threads

| Wiki page | Connection |
|---|---|
| [[saas-death-spiral]] | Market-mechanism view of the same disruption. The two views complement each other. |
| [[five-levels-of-ai-coding]] | The architectural-consequence thread (L4/L5 dark factory, junior pipeline collapse) that this paper softens politically. |
| [[ai-professional-interface]] | The hiring-pipeline-collapse case study that motivates this paper's "Adaptive safety nets" and "Pathways into human-centered work" proposals. |
| [[frontier-operations]] | Nate B Jones's "expanding bubble" framework — adjacent to the paper's "human connection will remain essential" thesis but argued from architecture rather than policy. |
| [[ai-automation-workflows]] | Nate Herk's 5 highest-value workflows that get sold *into* the vacated SaaS spend the paper is responding to. |
| [[mcp]], [[hermes-agent]], [[autoresearch-evals]] | Technical agent infrastructure that the paper's "AI trust stack" and "auditing regimes" proposals would govern. |

## Open questions raised by this document

These are added to [[tasks]] and revisited if a second source corroborates or contradicts:

- **CAISI** — referenced as an existing institution. Need to ingest a primary source on what it currently does, who runs it, and how active it is.
- **Public Wealth Fund** — Norway-style sovereign wealth fund analogue? Alaska Permanent Fund analogue? A novel structure? Not specified.
- **Public Benefit Corporation governance for frontier AI** — only OpenAI and Anthropic operate under PBC structures today. What does it actually constrain? OpenAI's own conversion drama (the 2024 attempted restructuring) is relevant context.
- **METR study** (already in [[tasks]] from earlier) — referenced indirectly when the paper claims AI is "increasing productivity" but workers may not see benefits. The METR finding (experienced devs 19% slower with AI) sharpens this.
- **Whether Anthropic, Google DeepMind, xAI, and Meta publish equivalent industrial-policy papers in response.** This is the natural follow-on watch. If they do, the [[saas-death-spiral]] policy-response thread becomes a real concept page.

## See Also

- [[summary-openai-industrial-policy-intelligence-age]] — the dense source summary with section-level bullets
- [[saas-death-spiral]] — the market-mechanism counterpart
- [[chatgpt]] — OpenAI's flagship product; this paper updates the org's policy positioning
- [[ai-2027]] — adjacent forecasting/policy artifact pattern (also a notable-document entity page)
