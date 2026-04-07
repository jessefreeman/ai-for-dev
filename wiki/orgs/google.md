---
type: entity
sources: ["Every AI Model Explained in 20 Minutes.md", "Google just dropped Gemma 4... (WOAH).md", "Gemma 4 VRAM Requirements Every GPU and Mac Tested (2026).md", "Google's Firebase Studio FULLY FREE AI Code Editor! Generate Full-Stack Apps! (Beats Cursor + Bolt).md", "A Markdown File Just Replaced Your Most Expensive Design Meeting. (Google Stitch).md", "How AI is breaking the SaaS business model....md"]
created: 2026-04-07
updated: 2026-04-07
tags: [org, ai, llm, frontier-lab, big-tech]
---

# Google

The largest AI infrastructure company tracked in the wiki. Builds frontier models ([[gemini|Gemini]]), open-weights models ([[gemma-4|Gemma 4]]), agentic dev environments ([[firebase-studio|Firebase Studio]]), creative tools ([[google-stitch|Google Stitch]]), and the underlying inference platforms (Vertex AI, Genkit). Google AI is split across **Google DeepMind** (research, model development) and **Google Cloud** (infrastructure, dev tools, deployment).

- **Founded**: Google 1998; DeepMind 2010 (acquired 2014)
- **Corporate structure**: Alphabet Inc. subsidiary (publicly traded)
- **AI org structure**: Google DeepMind (research + model dev) + Google Cloud (infrastructure + dev products) + Google Labs (experimental product surfaces) + Waymo (autonomous vehicles, sister Alphabet bet)
- **Sites**: deepmind.google, ai.google.dev, cloud.google.com, labs.google

## Products and tools tracked in this wiki

### Models

- **[[gemini|Gemini]]** — frontier model family. Per [[matthew-berman|Matthew Berman]]'s framing: best for **search and deep research**, with unique **video ingestion** (the only frontier model that natively reads video at the time of the Berman survey).
- **[[gemma-4|Gemma 4]]** — open-weights model family. Apache 2.0. Sizes E2B (2B effective) → E4B (4B effective) → 26B A4B (MoE, ~4B active) → 31B (dense). 31B ranks #3 globally on Arena AI. Hardware sizing covered in [[gemma-4-vram-requirements]] (Gemma4Guide reference).

### Dev tools

- **[[firebase-studio|Firebase Studio]]** — cloud-based agentic dev environment, rebranded from **Project IDX** at Google Cloud Next 2025. Combines Firebase, Genkit, and Gemini into a single full-stack workspace. Free tier with 3 workspaces (30 for dev program members).
- **[[google-stitch|Google Stitch]]** — voice-to-UI design tool that exports agent-readable `design.md`. Featured in [[nate-b-jones|Nate B Jones]]'s "command-line creative stack" thesis as the canonical example of design moving to the command line.
- **Genkit** — Google's GenAI framework with Python/Go support, RAG, multimodal orchestration. Bundled into Firebase Studio. Not yet a standalone wiki page.
- **Vertex AI** — Google Cloud's enterprise AI platform; provides access to Gemini, Imagen 3, and open-source models including [[llama|Llama]] and Mistral. Underpins Firebase Studio's model selection.

### Adjacent (Alphabet)

- **Waymo World Model** — simulation and prediction at scale. Originally framed for self-driving but [[fireship|Fireship]]'s [[saas-death-spiral|death-spiral analysis]] cites the same primitives as obsolescing traditional SaaS dashboards (forecasting, logistics, risk, operations). Not a wiki entity yet but referenced in the SaaS death-spiral analysis.

## Cross-cutting threads

- **The command-line creative stack** ([[nate-b-jones|Nate B Jones]]'s thesis): [[google-stitch|Google Stitch]] (voice→UI, design.md), [[remotion|Remotion]], [[blender-mcp|Blender MCP]]. Stitch is Google's contribution and the wiki's canonical example of "design follows development to the command line."
- **Open-weights leadership**: [[gemma-4|Gemma 4]] is one of the most-tracked open-weights families in the wiki, with its own [[gemma-4-vram-requirements|hardware sizing reference]]. Google is the only **big-tech-frontier** lab releasing open weights at this scale (vs Meta's [[llama|Llama]] which is closer to corporate-strategic open weights, and Anthropic/OpenAI which release no open weights).
- **Agentic coding platform proliferation**: [[firebase-studio|Firebase Studio]] is Google's entry in the [[saas-death-spiral|fragmenting agentic-coding market]] alongside [[claude-code|Claude Code]], [[cursor|Cursor]], [[augment-agent|Augment Agent]], [[archon-os|Archon OS]], and [[deepcode|DeepCode]].

## How Google differs from [[openai|OpenAI]] and [[anthropic|Anthropic]] in the wiki's coverage

| | Google | [[anthropic\|Anthropic]] | [[openai\|OpenAI]] |
|---|---|---|---|
| Frontier model | Gemini | Claude | ChatGPT / GPT-5 |
| Open-weights | **Yes (Gemma 4)** | No | No |
| Coding agent | (none direct; uses Gemini via Firebase Studio) | Claude Code | Codex |
| Cloud-IDE play | **Firebase Studio** | None | None |
| Creative tool | **Google Stitch** | None | DALL-E / Sora |
| Wiki-tracked policy positions | None | None | [[industrial-policy-intelligence-age\|Industrial Policy paper]] |
| Adjacent bets | Waymo (autonomy), DeepMind (research) | None tracked | None tracked |

Google's **breadth** is its distinctive feature in the wiki — every other org tracked is a single-product or single-bet company by comparison. Google is the only entry that simultaneously ships frontier models, open-weights models, cloud-hosted dev environments, creative tools, autonomous-vehicle infrastructure, and a full enterprise cloud stack.

## Editorial framing the wiki applies to Google sources

- **First-party Google content** (the Gemma 4 launch post, Firebase Studio Cloud Next demos, Stitch product launch) is positioning from an interested party — same conventions as OpenAI/Anthropic.
- **Third-party coverage** of Google products (Berman on Gemma, WorldofAI on Firebase Studio, Nate B Jones on Stitch) is more credible for capability claims, but check for affiliate/access biases as usual.
- **The "Beats Cursor + Bolt" framing** in the Firebase Studio coverage is consistent with the [[worldofai|WorldofAI]] channel pattern of new-tool-vs-incumbent positioning — discount.
- **Google's open-weights play** is genuinely useful and not self-serving in the same way the Industrial Policy paper is — Gemma 4 has no equivalent regulatory-moat structure; it's just released under Apache 2.0.

## See Also

- [[gemini]], [[gemma-4]], [[gemma-4-vram-requirements]] — model family + hardware sizing
- [[firebase-studio]], [[google-stitch]] — dev and creative tools
- [[saas-death-spiral]] — references Waymo World Model + Firebase Studio context
- [[anthropic]], [[openai]] — the other two frontier-lab orgs
- [[summary-matthew-berman-gemma4|Source: Google Drops Gemma 4]]
- [[summary-gemma4guide-vram-requirements|Source: Gemma 4 VRAM Requirements]]
- [[summary-worldofai-firebase-studio|Source: Firebase Studio Walkthrough]]
- [[summary-nate-b-jones-google-stitch|Source: A Markdown File Just Replaced Your Design Meeting]]
- [[summary-fireship-saas-death-spiral|Source: SaaS Death Spiral]] — Waymo World Model context
- [[summary-matthew-berman-ai-models|Source: Every AI Model Explained]]
