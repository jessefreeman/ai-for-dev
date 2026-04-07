---
type: entity
sources: ["Every AI Model Explained in 20 Minutes.md", "ChatGPT-5 Prompting is Too Hard This Video Makes it Easy for You.md", "Industrial Policy for the Intelligence Age.md"]
created: 2026-04-06
updated: 2026-04-07
tags: [tool, llm, openai, frontier-model]
---

# ChatGPT

[[openai|OpenAI]]'s flagship consumer AI product. A large language model interface covering text, code, images, voice, and web search. The most consumer-friendly and widely used AI product as of 2026. See [[openai]] for the company-level entity (corporate structure, policy positioning, acquisitions).

## Strengths

- **Ease of use**: Best consumer UX of the frontier models — web app, desktop app, iOS, Android
- **Breadth**: Text, coding, image generation, voice mode, web search, PDF ingestion, multi-file uploads
- **General purpose**: Good at everything; best choice when you want capable AI without configuration

## Tiers (as of early 2026)

| Plan | Price | Notable |
|------|-------|---------|
| Free | $0 | Basic model access |
| Go | $8/month | Flagship model access, more usage |
| Plus | $20/month | Advanced reasoning, GPT 5.4 Thinking |
| Pro | $200/month | Unlimited GPT 5.4 Pro, unlimited image gen, everything |

## GPT-5 Prompting Difficulty

GPT-5 changed the prompting game. Per [[nate-b-jones|Nate B Jones]]'s analysis: it's a **router over multiple sub-models**, agentic by default, literal in execution, and demands precision. Casual conversational prompts that worked on earlier models now produce fabricated, low-utility output. Nate's metaphor: "a speedboat with a really big rudder — it wants to go fast and it wants to be steered really hard."

The practical fix is **[[meta-prompting]]** — wrapping a sloppy human request in a structured instruction-set that tells the model how to interpret, restructure, and execute it. Acts as power steering. See [[meta-prompting]] for the full pattern, the seven principles, and the seven prompt components.

OpenAI itself published a GPT-5 prompting guide, which Nate reads as an admission that the model is harder to steer than its consumer marketing implies.

## OpenAI policy positioning

OpenAI published its first major industrial-policy paper in **April 2026**: [[industrial-policy-intelligence-age|Industrial Policy for the Intelligence Age: Ideas to Keep People First]]. 21 named proposals across worker outcomes (Public Wealth Fund, Right to AI, modernized tax base, 32-hour workweek pilots, adaptive safety nets) and AI safety/governance (CAISI auditing regimes, model-containment playbooks, Public Benefit Corporation governance, incident reporting). The paper announces a $100K fellowship + $1M API credits pilot program at `newindustrialpolicy@openai.com` and an OpenAI Workshop opening in DC May 2026.

**Treat as positioning, not neutral analysis** — OpenAI is a direct interested party in nearly every proposal. Most acute conflicts: the Public Benefit Corporation governance proposal validates OpenAI's own corporate structure, and the audit-requirements-for-the-most-advanced-models-only carve-out is the canonical regulatory-moat play. See the [source page](../sources/industrial-policy-intelligence-age) for the full breakdown of editorial framings to discount.

This is the first entry in what may become a wiki thread on AI ethics, politics, and policy as industry-observability signal — see [[saas-death-spiral#policy-responses|saas-death-spiral § Policy responses]].

## Compared to Other Frontier Models

According to [[Matthew Berman]]:
- ChatGPT: best for **ease of use**
- [[Claude]]: best for **work and coding**
- [[Gemini]]: best for **search and deep research**

## See Also

- [[Claude]] — Anthropic's alternative; better at work and coding tasks
- [[Gemini]] — Google's alternative; better at search and video ingestion
- [[Codex]] — OpenAI's coding-specific agent harness
- [[meta-prompting]] — the practical answer to GPT-5 prompting difficulty
- [[four-prompting-disciplines]] — broader prompting taxonomy
- [[Matthew Berman]] — source
- [[industrial-policy-intelligence-age]] — OpenAI's first major public policy paper
- [[summary-matthew-berman-ai-models|Source: Every AI Model Explained]]
- [[summary-nate-b-jones-chatgpt5-prompting|Source: ChatGPT-5 Prompting is Too Hard]]
- [[summary-openai-industrial-policy-intelligence-age|Source: Industrial Policy for the Intelligence Age]]
