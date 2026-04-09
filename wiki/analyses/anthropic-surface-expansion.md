---
type: analysis
sources: ["I Analyzed 512,000 Lines of Leaked Code. It Shows What's Coming for Your AI Tools..md", "I Tested Claude's New Managed Agents... What You Need To Know.md", "I Broke Down Anthropic's $2.5 Billion Leak. Your Agent Is Missing 12 Critical Pieces..md", "Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md"]
created: 2026-04-09
updated: 2026-04-09
tags: [analysis, anthropic, platform-strategy, agent, lock-in, load-bearing-thread]
---

# Anthropic Surface Expansion

Canonical wiki thread for tracking Anthropic's coordinated push to own the **persistent agent layer** — its bet that the model is a loss leader and the hosted always-on agent is the money product. As of April 2026 this is one of the wiki's load-bearing structural threads. Spawned from [[summary-nate-b-jones-conway-leak|Nate B Jones's Conway leak analysis]] which made the previously-distributed pattern explicit.

## The Three Eras frame (Nate B Jones)

This thread sits inside a broader frame for how frontier-AI competition has evolved:

| Era | Years | Axis of competition | Status |
|---|---|---|---|
| **Era 1 — Models** | 2023–24 | Foundation models, benchmarks, training runs, context windows | Margins compressed; no longer the primary axis |
| **Era 2 — Interfaces** | 2024–25 | Harness wars: Claude Code vs Cursor vs OpenClaw vs Windsurf | **Just climaxed** with the OpenClaw ban + Steinberger's defection to OpenAI |
| **Era 3 — Persistence + Memory** | 2026+ | Who owns the always-on layer that accumulates context, wakes on events, acts autonomously | **The current axis.** All three frontier labs converged on the same insight |

> *"They're building the model as a loss leader and they want to own the persistent agent layer. That's the money product. Whoever owns that layer has customer lockin like we have never seen before — not because the model is better, but because the switching cost is unthinkable."* — [[nate-b-jones|Nate B Jones]]

This analysis page tracks **Anthropic's specific moves** in Era 3. For the cross-lab comparison (Anthropic vs OpenAI vs Google), see [[persistent-agent-layer-wars]].

## The 90-day platform play

[[nate-b-jones|Nate B Jones]]'s framing: Anthropic's last quarter is **not five separate product decisions but a single coordinated platform strategy** speedrunning Microsoft's 15-year DOS→Windows→Office→Active Directory arc in 15 months. The seven moves:

1. **Claude Code channels** — Discord/Telegram messaging surface; task-completion notifications. Neutralized [[openclaw|OpenClaw]]'s appeal inside Anthropic's own product.
2. **Claude Co-work** — non-technical-user surface targeting the 95% of enterprise employees who aren't engineers. Adoption reportedly outpaced [[claude-code|Claude Code]] at the same stage.
3. **Claude Marketplace** — enterprise procurement layer (GitLab, Harvey, Snowflake purchasable through Anthropic; counts against existing spend commitments; no commission yet — buying distribution market share).
4. **$100M Claude Partner Network** — Accenture training 30,000 professionals on Claude; Deloitte/Cognizant/Infosys as anchor SI partners. *"Complete system integrator lockin at enterprise scale."*
5. **Third-party tool ban** — January quiet block, February ToS revision, recent enforcement against [[openclaw|OpenClaw]] first; pay-per-use rates 10–50× the subscription cover; rolling out to "everything else in coming weeks."
6. **[[managed-agents|Managed Agents]]** (April 2026) — first hosted agent runtime. The onramp tier: Claude.ai users build their first agent without infra work. $0.08/hr per active session + tokens. Three private-preview features (Outcomes, Multi-Agent Orchestration, Persistent Memory) define whether it becomes a real builder tier.
7. **[[conway|Conway]]** (leaked, unannounced) — the always-on capstone surfaced from the Claude Code leak. Standalone sidebar UI, proprietary `.cnw.zip` extension format on top of MCP, automatic webhook triggers, browser control, persistent memory across sessions. *"The Active Directory play — the piece that makes everything else in the stack sticky because the persistent agent knows your organization in a way nothing else does."*

> *"Anthropic is speedrunning Microsoft. Model provider to developer tool to enterprise platform to agent operating system in 15 months. Microsoft took 15 years."*

## The four user-facing surfaces

After the 90-day arc, Anthropic now has **four primary user-facing surfaces**, each targeting a distinct user:

| Surface | Target user | Status | Key wiki page |
|---|---|---|---|
| **Claude.ai** | End users (chat, work tasks) | GA | [[claude]] |
| **[[claude-code\|Claude Code]]** | Developers (CLI agent harness) | GA, mature; /loop, Ultra Plan, skills ecosystem | [[claude-code]] |
| **[[managed-agents\|Managed Agents]]** | Claude.ai users building their first agent | GA, April 2026 | [[managed-agents]] |
| **[[conway\|Conway]]** | Knowledge workers needing always-on org context | **Leaked, unannounced** | [[conway]] |

The two bottom rows are the wiki's **future-facing watch**. Watch list:

- **Conway naming on a real Anthropic surface** (docs, roadmap, launch post) confirms the leak
- **`.cnw.zip` published as an extension SDK** is the "build for the App Store" inflection for tool developers
- **Automatic triggers shipping in Managed Agents** would close the cron gap and reduce reliance on [[trigger-dev|trigger.dev]] for always-on Anthropic-native workflows
- **Browser control as a first-class Anthropic feature** would compete with [[stagehand|Stagehand]] / [[openclaw|OpenClaw]] / Computer Use
- **Any portability commitment** before Conway launches is the rare counterexample to the four-step playbook

## The four-step playbook

The [[openclaw|OpenClaw]] / Steinberger / ban timeline exposes a repeatable pattern for how Anthropic absorbs community-built primitives — the wiki tracks this as **the four-step playbook**:

1. **Copy** — build the first-party version of what the community built
2. **Subsidize** — make the first-party version free or cheap inside the subscription
3. **Block** — make the third-party version expensive (10–50× pay-per-use) or technically impossible
4. **Lock the format** — ship a proprietary extension format (`.cnw.zip`) that ensures the ecosystem builds for the platform's surface, not the open one

**The Steinberger / OpenClaw evidence**:

- **Feb 14, 2026** — Peter Steinberger (OpenClaw creator) joins OpenAI; Sam Altman publicly tags him to *"drive the next generation of personal agents"*
- **Within weeks** — OpenClaw moves to a foundation with OpenAI backing
- **January 2026 (retroactively visible)** — Anthropic quietly blocks third-party tools from using subscription login credentials
- **February 2026** — Anthropic ToS revision codifies the block
- **April 2026** — enforcement against [[openclaw|OpenClaw]] first; rolling out to "everything else in coming weeks"

The OpenClaw → Claude Code channels → [[managed-agents|Managed Agents]] → [[conway|Conway]] arc is the canonical playbook target. Watch for OpenAI and Google running the same play in [[persistent-agent-layer-wars]].

## What the proprietary `.cnw.zip` layer means for [[mcp|MCP]]

The structural detail [[nate-b-jones|Nate B Jones]] keeps returning to: Conway extensions sit on top of MCP but are **not portable MCP tools** — they only work inside Conway. This is the [[mcp|MCP]]-as-open-foundation + `.cnw.zip`-as-proprietary-distribution pattern. The historical parallels:

| Open layer | Proprietary layer that captured the value |
|---|---|
| Linux / AOSP | Google Play Services (Maps, Payments, Push, Play Store) |
| Web standards | iOS App Store |
| **MCP** | **`.cnw.zip` extensions inside Conway** |

Anthropic gets the credibility of publishing an open standard *and* the commercial advantage of building the valuable tooling in a format that runs only in their environment. The wiki tracks this as the **proprietary-layer-on-top risk** — a flag for any future "open" agent standard that the value may shift to a proprietary store on top.

## What this enables: behavioral lock-in

The conceptual payload of the surface-expansion thread is [[behavioral-lock-in]]: a new vendor lock-in surface that's structurally different from anything before. Conway-class always-on agents accumulate **the model of how you work** — and there's no export format, no migration consultant, no legal framework for portability. Every previous lock-in was about *stuff* (files, records, comms history); this is about the accumulated inference + observation a vendor's compute did over months. See [[behavioral-lock-in]] for the full concept page; [[open-brain|OpenBrain]] for the structural counter-pattern.

## How the wiki tracks this thread

- **This page** is the canonical entry point. Update on every new Anthropic surface, every Conway data point, every new playbook step.
- **[[anthropic]]** keeps a 1-paragraph stub linking here, plus the product list. Don't duplicate the 7-step play on the org page.
- **[[behavioral-lock-in]]** holds the conceptual frame that this thread anchors.
- **[[persistent-agent-layer-wars]]** holds the cross-lab comparison (Anthropic vs OpenAI vs Google).
- **Watch flags** in `wiki/hot.md` — any Conway naming, `.cnw.zip` SDK, native triggers in Managed Agents, OpenAI/Google equivalent launches.
- **CLAUDE.md scope** explicitly includes the persistent-agent-layer competition and lock-in/portability dimension.

## See Also

- [[anthropic]] — the org running the play
- [[conway]] — the leaked capstone
- [[managed-agents]] — the announced onramp tier
- [[claude-code]] — the developer surface; the leak source
- [[claude]] — the chat surface
- [[behavioral-lock-in]] — the conceptual frame this thread anchors
- [[persistent-agent-layer-wars]] — cross-lab comparison
- [[open-brain]] — the structural counter-pattern
- [[mcp]] — the open standard with the proprietary-layer risk
- [[openclaw]] — the canonical playbook target
- [[trigger-dev]] — the external trigger primitive Anthropic still lacks natively
- [[nate-b-jones]] — primary source for the framing
- [[summary-nate-b-jones-conway-leak|Source: Conway leak analysis]]
- [[summary-nate-herk-managed-agents|Source: Managed Agents hands-on]]
- [[summary-nate-jones-12-agent-primitives|Source: 12 Agent Primitives]]
- [[summary-nate-b-jones-loop-openbrain|Source: /loop + OpenBrain]]
