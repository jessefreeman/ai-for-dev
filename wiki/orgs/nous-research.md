---
type: entity
sources: ["Hermes Agent The 247 Self-Evolving AI Agent!.md", "You NEED to try these open-source AI projects right now....md"]
created: 2026-04-07
updated: 2026-04-07
tags: [org, ai, open-source, agents, research-collective]
---

# Nous Research

Open-source AI research collective best known in the wiki for **[[hermes-agent|Hermes Agent]]** — a self-improving open-source agent framework whose closed learning loop (**GEPA**) is one of the wiki's most distinctive technical contributions to the agent-architecture thread. Nous Research occupies a niche between academic AI labs (single-paper-per-year cadence) and frontier commercial labs ([[anthropic|Anthropic]], [[openai|OpenAI]]) — they ship working open-source agent systems with research-grade ideas baked in.

- **Founded**: 2023 (community / collective origin)
- **Corporate structure**: open-source research collective (not a traditional incorporated entity in the wiki's product context)
- **Sites**: nousresearch.com, hermes-agent.nousresearch.com
- **GitHub**: github.com/NousResearch

## Products tracked in this wiki

- **[[hermes-agent|Hermes Agent]]** — open-source self-improving agent framework. Positioned as an alternative to [[openclaw|OpenClaw]] but distinguished by **GEPA** ("backpropagation for prompts, not weights"): every ~15 tool calls, the agent pauses, reviews failures, and updates its own prompts and skills without fine-tuning. ~12,000 GitHub stars within days of launch (March 2026 per Berman; revisited April 2026 per WorldofAI). Multi-platform gateway (WhatsApp/Telegram/Slack/TUI), Docker-based, supports local models via [[ollama|Ollama]] (Gemma 4 explicitly recommended).

## Technical contributions tracked in this wiki

- **GEPA (closed learning loop)** — see [[hermes-agent]] for the full description. The conceptual framing — "backprop for prompts instead of model weights" — is one of the cleanest explanations the wiki has for *how an agent gets better without fine-tuning*. Conceptual root traces to [[andrej-karpathy|Karpathy]]'s [[autoresearch-evals|AutoResearch]] work, but Nous's GEPA is the most concrete production implementation.
- **Autonomous skill creation** — when Hermes solves something, fixes an error, or is told to remember a task, it converts the experience into a reusable skill and pulls it later when relevant. Adjacent in spirit to Anthropic's [[claude-code|Claude Code]] skills ecosystem, but the *creation* loop is automatic.

## In the wiki's larger threads

- **Self-improving agents** — Nous Research is the wiki's anchor entry for "production-grade self-improving agent loops." [[hermes-agent|Hermes]] sits alongside [[thepopebot|ThePopeBot]] (Docker + GitHub Actions, no GEPA) and [[/loop]] + [[OpenBrain]] (Anthropic-native primitives, no autonomous improvement) as the three architectural alternatives in the [[openclaw|OpenClaw]]-replacement category.
- **Open-source agent frameworks** — together with [[thepopebot|ThePopeBot]], [[paperclip|Paperclip]], [[deepcode|DeepCode]], and the [[gstack|GStack]] / [[superpowers|Superpowers]] / [[agency|Agency]] / [[hermes-agent|Hermes]] cluster of Claude Code skills, Nous's work represents the open-source counterweight to commercial agent platforms.
- **Local-AI integration** — Hermes Agent's explicit recommendation of [[gemma-4|Gemma 4]] via [[ollama|Ollama]] for fully-local operation reinforces the wiki's [[open-source-model-integration|local-AI cost-reduction thread]].

## How Nous Research differs from the frontier labs

| | Nous Research | [[anthropic\|Anthropic]] / [[openai\|OpenAI]] / [[google\|Google]] |
|---|---|---|
| Form | Open-source collective | Commercial frontier lab |
| Releases | Open-source software (full agent frameworks) | Proprietary models + APIs (mostly) |
| Funding | Community / grants / open | VC / corporate |
| Audit-ability | Full source visible | Closed model weights |
| Self-improvement IP | **Open** (GEPA is documented) | Closed |
| Wiki-tracked policy positions | None | OpenAI's [[industrial-policy-intelligence-age\|Industrial Policy paper]] |

Nous Research is the wiki's clearest example of the **open agent-research alternative** to commercial frontier labs. They ship research-quality ideas as working software rather than as papers, and the software is fully auditable.

## Editorial framing the wiki applies to Nous Research sources

- **Nous's own technical claims** about Hermes Agent (GEPA, autonomous skill creation, self-improvement) are documented in their public docs at hermes-agent.nousresearch.com — treat as primary source for *how Hermes works*, but flag that effectiveness claims ("gets better the more you use it") don't have independent third-party benchmarks yet.
- **Coverage from [[worldofai|WorldofAI]] and [[matthew-berman|Matthew Berman]]** is enthusiastic and demo-focused — discount the "this is revolutionary" framing but trust the demonstrated mechanics (install, skill management, the Obsidian-vault demo).
- **Watch for**: independent benchmarks of GEPA (does it actually improve agent quality over time? by how much?) and follow-on releases from Nous beyond Hermes.

## Open questions

- **Funding model** — how is Nous Research sustainably funded? Community? Grants? Corporate sponsorship?
- **Beyond Hermes** — what else is Nous Research working on? The wiki only tracks Hermes; their broader research output isn't covered.
- **GEPA effectiveness** — no independent benchmarks yet. The conceptual framing is sound but the empirical evidence is anecdotal.
- **Relationship to other open agent frameworks** — does Nous collaborate with the [[paperclip|Paperclip]] / [[gstack|GStack]] / Hermes-skills communities, or is each project independent?

## See Also

- [[hermes-agent]] — flagship project with GEPA loop
- [[autoresearch-evals]] — conceptual root from Karpathy
- [[thepopebot]], [[/loop]] + [[OpenBrain]] — adjacent architectural alternatives in the OpenClaw-replacement category
- [[ollama]], [[gemma-4]] — recommended local-stack for running Hermes
- [[anthropic]], [[openai]], [[google]] — the commercial frontier-lab alternatives
- [[summary-worldofai-hermes-agent|Source: Hermes Agent (WorldofAI)]]
- [[summary-matthew-berman-open-source-projects|Source: Open-Source AI Projects (Berman)]] — first wiki coverage of Hermes
