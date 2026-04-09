---
type: entity
sources: ["I Analyzed 512,000 Lines of Leaked Code. It Shows What's Coming for Your AI Tools..md"]
created: 2026-04-09
updated: 2026-04-09
tags: [tool, anthropic, agent, leak, future-facing, speculative]
---

# Conway

[[anthropic|Anthropic]]'s **unannounced internal always-on agent project**, exposed in the early-2026 [[claude-code|Claude Code]] source leak (the same packaging-error publication that produced the [[agentic-harness-primitives|12 Agent Primitives]] analysis). Not on Anthropic's roadmap page. Discovered and analyzed by [[nate-b-jones|Nate B Jones]] in his April 2026 deep-dive on the leaked source.

> **Speculative / leaked source.** Everything on this page is from the leak — not Anthropic's published roadmap, not a launch, not a confirmed product name. The factual structure (sidebar UI, three sections, `.cnw.zip` format, automatic triggers) is treated as **primary-source-from-leak** at the same credibility tier as the 12 Agent Primitives. The trajectory framing is editorial. This page exists so the wiki has a place to file the next data point when Conway is announced or appears in another source.

## What it is, from the leak

Conway is described as an **entire agentic environment, not a chat window** — a standalone sidebar inside the Claude interface that opens a dedicated page tied to a Conway instance. It has three core areas:

| Area | What it contains |
|---|---|
| **Search** | Cross-source search across the agent's accumulated context |
| **Chat** | Conversational interface to the running Conway instance |
| **System** | The interesting one — see below |

The **System** section has three subsections:

1. **Extensions** — install add-ons that extend Conway's capabilities. Custom tools, interface panels, "ways for the agent to understand new kinds of information." Packaged as `.cnw.zip` files. **App-store pattern.**
2. **Connectors and Tools** — shows what other services are plugged in. Includes a toggle that lets [[claude|Claude]] and Chrome connect directly into the Conway instance (browser control as a first-class connector).
3. **Automatic Triggers** — public web addresses that outside services can ping to wake the agent up. Per-service allow toggles. **This is the cron / webhook primitive [[managed-agents|Managed Agents]] is missing at launch.**

Persistent memory across sessions is implied throughout the leaked structure — Conway "knows your organization in a way that nothing else does" because it accumulates context over time.

## The `.cnw.zip` extension format — the structural detail

Conway extensions ship as `.cnw.zip` packages and contain custom interface panels, information handlers, and tools. Critically: **they sit on top of MCP but are not portable MCP tools.** They only work inside Conway.

The pattern Nate identifies: **MCP is the open foundation; Conway's extension ecosystem is the proprietary layer on top.** Anthropic gets the credibility of publishing an open standard ([[mcp|MCP]]) and the commercial advantage of building the valuable tooling in a format that runs in their environment.

This is the **Google Play Services / iPhone App Store** pattern applied to AI agents:

| Open layer | Proprietary layer |
|---|---|
| Linux / AOSP | Google Play Services (Maps, Payments, Push, Play Store) |
| Web standards | iOS App Store |
| MCP | `.cnw.zip` extensions inside Conway |

Developers face the same choice mobile devs faced in 2008–9: build for the open standard (portable, no built-in distribution) or build for the platform store (locked-in, but featured placement and millions of pre-installed users).

## Conway alongside [[managed-agents|Managed Agents]]

Anthropic now has **two hosted-agent surfaces in the wiki**, one announced and one leaked:

| | [[managed-agents\|Managed Agents]] (announced 2026-04) | Conway (leaked, unannounced) |
|---|---|---|
| Status | Generally available | Internal; not on roadmap |
| UI | Web console at `console.anthropic.com` | Sidebar inside Claude interface |
| Extension format | MCP servers + skills | `.cnw.zip` (proprietary) |
| Triggers | None at launch — API call only | Automatic public web triggers, per-service toggles |
| Browser control | No | Yes (Chrome connector) |
| Memory across sessions | Stateless (private preview) | Persistent (implied) |
| Positioning | Onramp / "build your first agent" | Always-on / "knows your organization" |

The structural read: Managed Agents is the *announced* version of Anthropic's hosted-agent bet, deliberately scoped down to a Claude.ai-user onramp. Conway is the *unannounced* version aimed at the always-on layer — the thing that locks in [[behavioral-lock-in|behavioral context]]. They are not redundant; they are two stages of the same platform play.

## The 90-day Anthropic platform play (Nate's framing)

Conway is the **capstone**, not a standalone product. Nate lines up Anthropic's last quarter as a coordinated arc:

1. **Claude Code channels** — message Claude Code from Discord/Telegram + task-completion notifications. Neutralizes [[openclaw|OpenClaw]] inside Anthropic's own surface.
2. **Claude Co-work** — non-technical surface for the 95% of enterprise employees who aren't engineers. Adoption reportedly outpaced Claude Code at the same stage.
3. **Claude Marketplace** — enterprise procurement layer (GitLab, Harvey, Snowflake buyable through Anthropic; counts against existing spend commitments; no commission yet).
4. **$100M Claude partner network** + Accenture training 30,000 professionals; Deloitte/Cognizant/Infosys as anchor SIs.
5. **Third-party tool ban** — January quiet block, February ToS revision, recent enforcement against [[openclaw|OpenClaw]] first; pay-per-use rates 10–50× subscription cover.
6. **[[managed-agents|Managed Agents]]** (April) — first hosted-agent runtime. Onramp tier.
7. **Conway** (leaked, unannounced) — always-on capstone; the Active Directory equivalent.

> *"Anthropic is speedrunning Microsoft. Model provider to developer tool to enterprise platform to agent operating system in 15 months. Microsoft took 15 years."*

## The four-step playbook (Nate's framing)

The OpenClaw / Steinberger / ban timeline exposes a repeatable pattern for how Anthropic absorbs community-built primitives:

1. **Copy** — build the first-party version of what the community built (OpenClaw → Claude Code channels → Conway)
2. **Subsidize** — make the first-party version free or cheap inside the subscription
3. **Block** — make the third-party version expensive (10–50× pay-per-use) or technically impossible
4. **Lock the format** — ship a proprietary extension format (`.cnw.zip`) that ensures the ecosystem builds for the platform's surface, not the open one

We're at **step 1 on Conway** publicly. Steps 2–4 are visible in the rest of the leak.

## What to watch

This page exists to be updated as Conway moves from leak → roadmap → preview → launch. Watch for:

- **Conway naming on a real Anthropic surface** — first appearance in docs, a roadmap page, or a launch post. Confirms the leak.
- **`.cnw.zip` becoming a real, documented format** — if Anthropic publishes an extension SDK, this is the "build for the App Store" inflection point for tool developers.
- **Automatic triggers shipping** — would close the gap [[managed-agents|Managed Agents]] left and make [[trigger-dev|trigger.dev]] less load-bearing for Anthropic-native always-on workflows.
- **Browser control as a first-class Anthropic feature** — would compete directly with [[stagehand|Stagehand]] / [[openclaw|OpenClaw]] / Computer Use.
- **OpenAI's and Google's equivalent moves** — Nate predicts both ship Conway-class always-on agents with similar proprietary extension layers in the next few months. If/when this happens, the **Era 3 persistence wars** become the wiki's central thread.
- **Any portability commitment** — if Anthropic publishes a behavioral-context export format or a portability commitment before Conway launches, that's the rare counterexample to the four-step playbook.

## See Also

- [[anthropic]] — vendor; the 90-day platform play arc
- [[managed-agents]] — announced hosted-agent sibling
- [[behavioral-lock-in]] — the conceptual frame Conway anchors
- [[open-brain|OpenBrain]] — the user-owned memory pattern that's the structural counter
- [[mcp]] — the open standard Conway sits on top of with a proprietary layer
- [[claude-code]] — the leak source
- [[agentic-harness-primitives]] — Nate's earlier analysis of the same leak
- [[openclaw]] — the playbook target
- [[slash-loop|/loop]] — the local proactivity primitive Conway is the hosted version of
- [[summary-nate-b-jones-conway-leak|Source: Nate B Jones — I Analyzed 512,000 Lines of Leaked Code]]
