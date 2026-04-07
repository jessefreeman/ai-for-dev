---
type: entity
sources: ["Every AI Model Explained in 20 Minutes.md", "ChatGPT-5 Prompting is Too Hard This Video Makes it Easy for You.md", "How AI is breaking the SaaS business model....md", "Industrial Policy for the Intelligence Age.md", "7 new open source AI tools you need right now….md"]
created: 2026-04-07
updated: 2026-04-07
tags: [org, ai, llm, frontier-lab]
---

# OpenAI

US frontier-AI lab. Builds [[chatgpt|ChatGPT]] (consumer chat product) and [[codex|Codex]] (coding agent harness). The dominant US frontier lab as of 2026, with significant cloud infrastructure spending, an aggressive product release cadence, and an increasingly visible **public-policy posture** that the wiki tracks separately from its products.

- **Founded**: 2015
- **Corporate structure**: capped-profit hybrid with a Public Benefit Corporation (PBC) wrapper — a structure OpenAI itself proposes as a model for other frontier labs (see [[industrial-policy-intelligence-age|Industrial Policy paper]])
- **Products**: ChatGPT, Codex, the API platform, embeddings, image generation (DALL-E / Sora)
- **Sites**: openai.com, platform.openai.com, cdn.openai.com (PDF publications)

## Products tracked in this wiki

- **[[chatgpt|ChatGPT]]** — flagship consumer product. GPT-5 era. Now requires [[meta-prompting]] discipline per [[nate-b-jones|Nate B Jones]]'s analysis (the "speedboat with a really big rudder"). Tiers from Free → Go → Plus → Pro.
- **[[codex|Codex]]** — coding agent harness. Per [[fireship|Fireship]]'s [[saas-death-spiral|death-spiral analysis]], OpenAI shipped a Codex Mac App in early 2026 that hit 1M+ downloads in the first week, plus a Codex 5.3 model that's 25% faster than the previous generation with native skills integration.

## Acquisitions tracked in this wiki

- **[[prompt-fu|Prompt Fu]]** — prompt unit-testing framework. Per [[fireship|Fireship]]'s [[summary-fireship-7-open-source-tools|7 Open-Source AI Tools]] coverage, acquired by OpenAI.

## Policy positioning

OpenAI published its **first major public industrial-policy paper** in April 2026: [[industrial-policy-intelligence-age|Industrial Policy for the Intelligence Age]]. 21 named proposals across worker outcomes (Public Wealth Fund, Right to AI, modernized tax base, 32-hour workweek pilots) and AI safety/governance (CAISI auditing, model-containment playbooks, Public Benefit Corporation governance). Treat as **positioning, not neutral analysis** — OpenAI is a direct interested party in nearly every proposal:

- The **Public Benefit Corporation governance** proposal validates OpenAI's own structure
- The **audit-only-for-the-most-advanced-models** carve-out is the canonical regulatory-moat play
- The **grid expansion subsidies** request is a direct ask for public subsidy of OpenAI's dominant input cost (energy)

The paper announces a **$100K fellowships + $1M API credits pilot program** at `newindustrialpolicy@openai.com` and an **OpenAI Workshop** opening in DC May 2026. Both are channels OpenAI is using to shape how the policy conversation gets framed. Worth tracking which projects get funded — the funded list is itself a signal of OpenAI's policy priorities.

This is the first artifact in what may become a wiki thread on **AI ethics, politics, and policy as industry-observability signal** (see [[saas-death-spiral#policy-responses]]). When a second frontier lab publishes an equivalent industrial-policy artifact, the thread gets promoted to a concept page.

## In Multi-Agent / Tool Workflows

- **Codex appears alongside Claude** in [[paperclip|Paperclip]] multi-agent configurations (e.g., a CTO role on Claude and an engineer role on Codex)
- **GPT-5 prompting difficulty** is one of the wiki's recurring threads — see [[meta-prompting]] for the wrapper-pattern fix
- **OpenAI in [[saas-death-spiral|the SaaS death spiral]]** — Codex 5.3 + Mac App is one of the seven Feb 2026 developments Fireship cites as evidence that per-seat pricing is structurally exposed. OpenAI is both a beneficiary and an accelerant of the disruption.

## Editorial framing the wiki applies to OpenAI sources

When a source is **published by OpenAI itself** (the policy paper, the GPT-5 prompting guide, blog posts on the SWE-bench results, etc.), treat it as positioning from a major frontier lab with skin in every game it discusses. The wiki convention:

- **Prefer third-party coverage** over OpenAI's own framing for capability claims, benchmarks, and product comparisons
- **Use OpenAI's own publications** as primary sources for *their* policy positions, *their* product launches, and *their* corporate decisions — but flag the interested-party context in the Funding & Affiliation Notes section of the source-summary
- **Don't cite OpenAI marketing language** ("revolutionary," "transformative," "the most advanced") in wiki body text
- **Watch for the regulatory-moat patterns**: anything OpenAI proposes that exempts smaller competitors while raising costs on the frontier should be flagged as a possible self-serving framing

## See Also

- [[chatgpt]], [[codex]] — primary products
- [[industrial-policy-intelligence-age]], [[summary-openai-industrial-policy-intelligence-age]] — first major public policy artifact
- [[saas-death-spiral]] — the market thesis OpenAI is both responding to and accelerating
- [[meta-prompting]] — the practical answer to GPT-5's prompting difficulty
- [[prompt-fu]] — acquired by OpenAI
- [[claude]] — the closest competitor (Anthropic, also a PBC)
- [[summary-fireship-saas-death-spiral|Source: SaaS Death Spiral]]
- [[summary-nate-b-jones-chatgpt5-prompting|Source: ChatGPT-5 Prompting is Too Hard]]
- [[summary-matthew-berman-ai-models|Source: Every AI Model Explained]]
- [[summary-fireship-7-open-source-tools|Source: 7 Open-Source AI Tools]] — Prompt Fu acquisition
