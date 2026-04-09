---
type: entity
sources: ["I Broke Down Anthropic's $2.5 Billion Leak. Your Agent Is Missing 12 Critical Pieces..md", "Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md", "Every AI Model Explained in 20 Minutes.md", "Model Context Protocol (MCP), clearly explained (why it matters).md", "Planning In Claude Code Just Got a Huge Upgrade.md", "I Tested Claude's New Managed Agents... What You Need To Know.md"]
created: 2026-04-07
updated: 2026-04-09
tags: [org, ai, llm, frontier-lab]
---

# Anthropic

US frontier-AI lab founded by former [[openai|OpenAI]] research staff. Builds the [[claude|Claude]] model family (Haiku / Sonnet / Opus) and [[claude-code|Claude Code]] (CLI agent harness). The wiki's most heavily-referenced organization — Anthropic's products underpin the **production agent architecture** thread, the **planning-first AI coding** thread, and the **MCP standard** that touches nearly every other tool the wiki tracks.

- **Founded**: 2021 (by Dario Amodei, Daniela Amodei, and former OpenAI staff)
- **Corporate structure**: Public Benefit Corporation (PBC) — same legal structure that [[openai|OpenAI]] later proposed as a model for frontier labs in [[industrial-policy-intelligence-age|its April 2026 industrial-policy paper]]
- **Run rate**: ~$2.5B as of early 2026 (per the Claude Code leak coverage)
- **Sites**: anthropic.com, claude.ai, console.anthropic.com

## Products tracked in this wiki

- **[[claude|Claude]]** — frontier model family. Per [[matthew-berman|Matthew Berman]]'s framing: best for **work and coding**. Distinct from [[chatgpt|ChatGPT]] (best for ease of use) and [[gemini|Gemini]] (best for search/research). Tiers from Free → Pro → Max → Heavy.
- **[[claude-code|Claude Code]]** — Anthropic's CLI agent harness. Multiple wiki threads converge on this product:
  - The **architecture leak** (early 2026) — Anthropic accidentally exposed Claude Code's source map via a build configuration error. [[nate-b-jones|Nate B Jones]] analyzed it and identified the [[Agentic Harness Primitives]]: 12 production-grade infrastructure patterns, 207-entry command registry, 184-entry tool registry, six built-in agent types, 18-module Bash security architecture, sessions persisted as JSON.
  - **[[/loop]]** (March 2026) — native `/loop` command for proactive agent scheduling. The "heartbeat" primitive that enables [[OpenBrain]]-style accumulated-value loops.
  - **[[claude-code|Ultra Plan]]** (April 2026) — `/ultra-plan` offloads planning to a cloud-hosted Opus 4.6 instance with 3 parallel exploration agents + 1 critique agent. ~10–15 min total vs ~45 min for local plan mode in [[nate-herk|Nate Herk]]'s side-by-side benchmark.
  - **[[managed-agents|Managed Agents]]** (April 2026) — hosted agent runtime at `console.anthropic.com`. Anthropic's third primary surface alongside Claude.ai and Claude Code. $0.08/hr per active session + token costs; environments are free. Tracked as **future-facing** — three private-preview features (Outcomes, Multi-Agent Orchestration, Persistent Memory) define whether it becomes a real Claude Code competitor. Conspicuously lacks a native cron/webhook trigger. Notion is a launch partner.
  - **Skills ecosystem** — [[GStack]], [[Superpowers]], [[Agency]], [[Impeccable]], [[Open Viking]], [[Hermes Agent]], [[skills-sh|skills.sh]] directory. The wiki tracks more Claude Code skills than for any other agent harness.

## Standards Anthropic created

- **[[mcp|Model Context Protocol]]** — per [[ras-mic|Ras Mic]]'s explainer on the [[greg-isenberg|Greg Isenberg]] podcast, MCP is **Anthropic's "3D chess" play**: by putting MCP servers in the hands of service providers (not LLM vendors), Anthropic externalized the integration cost across the entire ecosystem. Every new MCP server makes every compliant client more capable, for free. As of 2026 it's the de-facto standard across [[claude-code|Claude Code]], [[cursor|Cursor]], [[augment-agent|Augment Agent]], [[archon-os|Archon OS]], and countless others.

## In the wiki's larger threads

- **Production agent architecture** — Anthropic's Claude Code leak gave the wiki the canonical 12-primitive framework via [[Agentic Harness Primitives]]. Nearly every agent-architecture page traces back to this analysis.
- **Planning-first AI coding** — Ultra Plan is the strongest official endorsement of the planning-discipline thesis the wiki has accumulated across [[ai-coding-workflow|Cole Medin]], [[bmad-method|BMad Code]], and [[meta-prompting|Nate B Jones]].
- **MCP-everywhere** — see [[mcp]] for the canonical concept page; every tool that mentions MCP is downstream of Anthropic's standard.
- **Counter to OpenClaw** — Nate B Jones's [[/loop]] + [[OpenBrain]] + MCP "three Lego brick" thesis is explicitly framed as "you can replicate what [[openclaw|OpenClaw]] does with three Anthropic-native primitives, without the security risks." Anthropic is positioned in the wiki as the primitives-based safer alternative to monolithic agent frameworks.

## How Anthropic differs from [[openai|OpenAI]] in the wiki's coverage

| | Anthropic | [[openai\|OpenAI]] |
|---|---|---|
| Wiki references | Heavy: products, standards, leaked architecture, multiple skills | Heavy: products, policy paper, GPT-5 prompting difficulty |
| PBC structure | Yes (since founding) | Yes (since restructuring) |
| Wiki-tracked policy positions | None (yet) | The April 2026 [[industrial-policy-intelligence-age\|Industrial Policy paper]] |
| Standards published | **MCP** (de-facto) | None tracked yet |
| Editorial position in wiki | Primary infrastructure provider for the agent architecture thread | Direct interested party in the policy thread; treat sources accordingly |

Anthropic has **not** (as of April 2026) published an equivalent industrial-policy paper. If they do, it becomes the second source for the [[saas-death-spiral#policy-responses|AI ethics, politics, and policy thread]] tracked in [[tasks]].

## Editorial framing the wiki applies to Anthropic sources

- Anthropic's Claude Code leak was an unintentional source — the wiki treats it as **higher-credibility primary source material** than self-published positioning. The [[Agentic Harness Primitives]] page is built on this leak.
- Anthropic's *intentional* publications (the model cards, the System Cards, capability evaluations, the Responsible Scaling Policy) are **positioning from an interested party** — flag the same way as OpenAI sources.
- When a source compares Claude vs GPT-5 vs Gemini and the creator is Anthropic-favorable (e.g., uses Claude Code daily), note the editorial relationship in the source-summary's bias notes.

## See Also

- [[claude]], [[claude-code]] — primary products
- [[mcp]] — the standard Anthropic created
- [[Agentic Harness Primitives]] — derived from the Claude Code leak
- [[/loop]] + [[OpenBrain]] — the agent proactivity/memory primitives
- [[openai]] — the closest competitor (also a PBC, also a frontier lab)
- [[summary-nate-jones-12-agent-primitives|Source: 12 Agent Primitives (Claude Code leak)]]
- [[summary-nate-b-jones-loop-openbrain|Source: /loop + OpenBrain]]
- [[summary-nate-herk-ultra-plan|Source: Planning In Claude Code Just Got a Huge Upgrade]]
- [[summary-greg-isenberg-mcp-explained|Source: MCP Clearly Explained]]
- [[summary-matthew-berman-ai-models|Source: Every AI Model Explained]]
