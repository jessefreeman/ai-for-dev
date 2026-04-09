---
type: analysis
sources: ["I Analyzed 512,000 Lines of Leaked Code. It Shows What's Coming for Your AI Tools..md", "I Tested Claude's New Managed Agents... What You Need To Know.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [analysis, anthropic, openai, google, agent, persistence, lock-in, load-bearing-thread]
---

# The Persistent Agent Layer Wars

Cross-lab tracking page for Era 3 of AI competition (per [[nate-b-jones|Nate B Jones]]'s framing): the race between [[anthropic|Anthropic]], OpenAI, and Google to own **the always-on agent layer that accumulates context, wakes on events, and acts autonomously** — the layer where vendor lock-in is no longer about data but about [[behavioral-lock-in|the accumulated model of how you work]].

> Companion page to [[anthropic-surface-expansion]] (which tracks Anthropic's specific moves in depth). This page is the **comparative scorecard** across all three labs. Empty cells are intentional — they exist as a forcing function for future ingests.

## Why this is its own thread

All three frontier labs have converged on the same strategic insight: **the model is becoming a loss leader; the persistent agent layer is the money product.** Whoever owns the always-on layer captures customer lock-in unlike anything before — *"not because the model is better, but because the switching cost is unthinkable."* This page tracks the parallel moves so the wiki can read across labs, not just down each one.

## Scorecard

| Capability | [[anthropic\|Anthropic]] | OpenAI | Google |
|---|---|---|---|
| **Hosted agent runtime (announced)** | [[managed-agents\|Managed Agents]] (April 2026) — $0.08/hr + tokens; cloud sandbox; no native triggers at launch | — (Steinberger building "next generation of personal agents" since Feb 14) | — |
| **Always-on / always-running tier** | [[conway\|Conway]] (leaked, unannounced) — sidebar UI, persistent memory, automatic webhook triggers | — (presumed in flight under Steinberger) | — |
| **Async cloud coding agent** | [[managed-agents\|Managed Agents]] (general-purpose, Claude Code-like tool surface) | Codex / Codex-class (cloud) | [[jules\|Jules]] (Gemini 2.5 Pro, free, GitHub-integrated, 5 tasks/day free) |
| **Proprietary extension format on top of MCP** | `.cnw.zip` (leaked, Conway only) | — | — |
| **Persistent cross-session memory** | Private preview in [[managed-agents\|Managed Agents]]; implied in [[conway\|Conway]] | ChatGPT memory (single-surface, not exposed to other tools) | Gemini / NotebookLM memory (per-product, not cross-surface) |
| **Browser control as first-class agent connector** | Conway (leaked); Computer Use beta in Claude | Operator | — |
| **Webhook / event-driven triggers** | None (Managed Agents); leaked (Conway "automatic triggers" section) | — | — |
| **Third-party tool ban / harness exclusion** | **Yes** — Jan 2026 quiet block, Feb ToS, April enforcement | — | — |
| **Enterprise procurement layer** | [[anthropic-surface-expansion\|Claude Marketplace]] — partner apps purchasable through Anthropic; counts against existing spend | — | — |
| **System integrator network** | $100M Partner Network; Accenture trains 30,000 on Claude | — | — |
| **Cross-IDE messaging surface** | Claude Code channels (Discord/Telegram + task notifications) | — | — |
| **Native scheduling / heartbeat primitive** | [[slash-loop\|/loop]] (Claude Code, local only) | — | — |

## The four-step playbook applied across labs

[[anthropic-surface-expansion#the-four-step-playbook|Anthropic's playbook]] is **Copy → Subsidize → Block → Lock the format.** Watch for OpenAI and Google running the same play:

| Step | Anthropic (concrete) | OpenAI (watch) | Google (watch) |
|---|---|---|---|
| **1. Copy** | OpenClaw → Claude Code channels → Conway | Steinberger hire → "next generation of personal agents" team | Project Astra, Jules expansion |
| **2. Subsidize** | Bundled in Pro/Max ($17–100/mo) | ChatGPT Pro/Plus likely | Google Workspace bundling |
| **3. Block** | Jan 2026 third-party ban; Feb ToS; April enforcement | — (no observed move yet) | — |
| **4. Lock the format** | `.cnw.zip` extensions (leaked) | — | — |

The wiki's prediction (per Nate B Jones): all three labs run all four steps inside 2026. **First counterexample wins a flag** — any frontier lab that ships a portability commitment, a behavioral-context export format, or a native cross-vendor memory protocol breaks the playbook and becomes the wiki's preferred Era 3 architecture.

## Steinberger's role as the OpenAI tell

The OpenAI column is mostly empty because the launches haven't happened — but the **Steinberger hire (Feb 14, 2026)** is the strongest signal that OpenAI is running the same play. Sam Altman's framing was *"drive the next generation of personal agents,"* and OpenClaw moved to a foundation with OpenAI backing within weeks. [[nate-b-jones|Nate B Jones]] reads this as confirmation OpenAI is building its Conway-equivalent. Watch this column closely for the next few months.

## Google's relative absence as a signal

Google's column is the emptiest. Hypotheses worth tracking (from existing wiki coverage, not from a primary source yet):

- Google's existing distribution (Workspace, Gmail, Calendar, Drive) gives it more ambient behavioral context than either Anthropic or OpenAI without needing a separate "agent" surface — they could absorb Era 3 by upgrading existing products rather than launching a new one
- [[jules]] (free, 5 tasks/day) and [[notebooklm]] (free, multimodal) suggest Google is competing on **price + free tier** rather than on architecture lock-in
- The lack of a public "third-party harness ban" move matches Google's broader history of not aggressively defending platform exclusivity

These are framings to validate against the next Google source, not conclusions.

## Counter-pattern: user-owned context

The structural counter to all of the above is **user-owned context infrastructure exposed through an open protocol**. The wiki's canonical example is [[open-brain|OpenBrain]] (Postgres + PGVector + Supabase + MCP). The memory lives in a database the user controls; switching providers loses the agent's runtime intelligence but preserves the accumulated context. Convenience will still win for most users — but the structural distinction matters at the edge (regulated industries, employees changing jobs, organizations that want to switch labs without losing their behavioral context).

For the user side, Nate is also working on a **behavioral-audit skill** that captures "the model of how you work" in a portable form. If a third party (or any of the labs) ships a published, vendor-neutral behavioral-context format before Conway launches, that becomes the wiki's preferred Era 3 architecture and this whole page gets reorganized around it.

## Open questions

- **Will any lab ship portability commitments before Conway launches?** Nate's argument is they should; the wiki's base case is they won't.
- **What does the OpenAI / Steinberger Conway-equivalent look like?** Different surface (ChatGPT integration?), different lock-in mechanism, different extension format?
- **Does Google use Workspace to absorb Era 3 without a separate surface launch?** If yes, the playbook breaks because there's no clean "third-party ban" inflection point — the lock-in was already there.
- **Does behavioral lock-in trigger a regulatory response?** GDPR, CCPA, the EU AI Act — none currently address the accumulated-inference layer. First regulator to write it becomes a primary source for this thread.
- **Does any single source on OpenAI's or Google's persistence-layer push land soon enough to balance this thread?** Currently it's heavily Anthropic-weighted because the leak gave us so much detail.

## See Also

- [[anthropic-surface-expansion]] — companion page; Anthropic-specific deep dive
- [[behavioral-lock-in]] — the conceptual frame
- [[anthropic]] — vendor
- [[conway]] — leaked Anthropic capstone
- [[managed-agents]] — announced Anthropic onramp tier
- [[open-brain]] — user-owned counter-pattern
- [[mcp]] — open protocol the counter-pattern needs
- [[openclaw]] — playbook target; Steinberger origin
- [[jules]] — Google's main Era 3 entry so far
- [[saas-death-spiral]] — adjacent thread; per-seat pricing breakdown happens in Era 2; Era 3 is what replaces it
- [[summary-nate-b-jones-conway-leak|Source: Conway leak analysis]]
- [[summary-nate-herk-managed-agents|Source: Managed Agents hands-on]]
