---
type: source-summary
sources: ["I Analyzed 512,000 Lines of Leaked Code. It Shows What's Coming for Your AI Tools..md"]
created: 2026-04-09
updated: 2026-04-09
tags: [video, youtube, anthropic, agent, leak, speculative]
---

# I Analyzed 512,000 Lines of Leaked Code. It Shows What's Coming for Your AI Tools

**Channel:** [[nate-b-jones|Nate B Jones]]
**Format:** YouTube video
**URL:** https://www.youtube.com/watch?v=ro5jpbi5uYc
**Length:** ~24 minutes
**Published:** 2026-04-08
**Sponsor:** none disclosed

## Summary

Nate B Jones returns to the [[claude-code|Claude Code]] leak (the same packaging-error publication that produced the [[agentic-harness-primitives|12 Agent Primitives]] analysis) and digs into a piece nobody else covered: **[[conway|Conway]]**, an unannounced internal Anthropic project that is a standalone always-on agent environment with its own sidebar UI, proprietary `.cnw.zip` extension format on top of MCP, browser control, automatic webhook triggers, and a connectors layer. Conway is not on Anthropic's roadmap page — it was buried in the source. Nate frames it as the **capstone of a 90-day Anthropic platform play** (Claude Code channels → co-work → Claude Marketplace → $100M partner network → third-party tool ban → Conway), speedrunning Microsoft's 15-year DOS→Windows→Office→Active Directory arc in 15 months. The conceptually-load-bearing payload of the video is **[[behavioral-lock-in|behavioral lock-in]]**: a new kind of vendor lock-in that isn't about *files* (Microsoft) or *records* (Salesforce) but about the accumulated model of how you work — and it has no legal, regulatory, or technical portability framework yet.

> **Speculative-source flag.** Conway is leaked + unannounced. Treat factual claims about Conway's structure as primary-source-from-leak (same credibility tier as the 12-primitives analysis). Treat the 90-day timeline as verifiable corporate history. Treat the trajectory predictions ("OpenAI and Google will ship versions in months", "behavioral lock-in is the rest-of-2026 story") as Nate's editorial call — the conceptual framework is what's worth keeping; the timeline forecasts should be re-evaluated as evidence lands.

## Key Points

- **What Conway is, from the leak** — A standalone sidebar inside the Claude interface with three core areas: search, chat, and **system**. The system area has: an **extensions** subsection (install add-ons: custom tools, interface panels, information handlers), a **connectors and tools** subsection (toggle for Chrome integration directly into the Conway instance), and an **automatic triggers** subsection (public web addresses outside services can ping to wake the agent up; per-service allow toggles). Browser control. Persistent memory across sessions. Conway is "an entire agentic environment, not a chat window."
- **The `.cnw.zip` extension format** — Conway extensions ship as `.cnw.zip` packages containing custom interface panels, information handlers, and tools. **They sit on top of MCP but are not portable MCP tools** — they only work inside Conway. This is the structural detail Nate keeps returning to: it's the [[mcp|MCP]] open standard with a proprietary distribution layer on top.
- **The Google Play Services / iPhone App Store parallel** — Android is open source; the valuable layer (Maps, Push, Payments, Play Store) is proprietary. iPhone gave developers a choice in 2008–9: build for the open web, or build native for iOS through the App Store. The native side won every time. Nate's prediction: Conway extensions will pull developers off pure MCP for the same reason — **distribution + featured placement + a built-in app store** for millions of Claude subscribers who are already in the environment.
- **Anthropic's 90-day platform play** — five surfaces shipped against the same strategy:
  1. **Claude Code channels** — message Claude Code from Discord/Telegram and get task-completion notifications. Neutralizes [[openclaw|OpenClaw]]'s appeal inside Anthropic's own surface.
  2. **Claude Co-work** — non-technical-user surface targeting the 95% of enterprise employees who aren't engineers. Adoption reportedly outpaced Claude Code at the same stage.
  3. **Claude Marketplace** — enterprise procurement layer where partner apps (GitLab, Harvey, Snowflake) are buyable through Anthropic; purchases count against existing spend commitments; no commission yet — they're buying distribution market share.
  4. **$100M partner network** + Accenture training 30,000 professionals on Claude; Deloitte/Cognizant/Infosys as anchor SI partners. *"This is what complete system integrator lockin looks like at enterprise scale."*
  5. **Third-party tool ban** — quietly blocked from January, ToS revision in February, recent enforcement against [[openclaw|OpenClaw]] first, with Anthropic confirming the block rolls out to "everything else in coming weeks." Pay-per-use rates are 10–50× the subscription cover.
  6. **Conway as the capstone** — the always-on agent that makes everything else sticky.
- **The Microsoft analogy, speedrunning** — DOS → Windows → Office → Active Directory took ~15 years. Anthropic is attempting model provider → developer tool → enterprise platform → agent operating system in **15 months**. *"Conway is the Active Directory play — it's the piece that makes everything else in the stack sticky because the persistent agent knows your organization in a way nothing else does."*
- **The Steinberger / OpenClaw timeline as evidence of the playbook** — Peter Steinberger (OpenClaw creator) joined OpenAI on Feb 14; Sam Altman publicly tagged him to "drive the next generation of personal agents"; OpenClaw moved to a foundation with OpenAI backing; *within weeks* Anthropic began enforcing the third-party ban. The four-step playbook this exposes:
  1. Build the first-party version of what the community built (OpenClaw → Claude Code channels → Conway)
  2. Make the first-party version free or subsidized inside the subscription
  3. Make the third-party version expensive or impossible
  4. Ship the proprietary format that ensures the ecosystem builds for your surface, not the open one
- **[[behavioral-lock-in|Behavioral lock-in]] — the conceptually load-bearing claim** — Every previous tech platform lock-in was about *stuff*. Microsoft locked you in by your files. Salesforce by your records. Slack by your communication history. Stuff is painful to migrate but technically possible — there are export tools, consultants, CSV dumps. Conway-style lock-in is different: it locks in **the accumulated model of how you work** — which emails you respond to in 5 minutes vs. ignore for 3 days, how you triage Slack, how your VP communicates, when you reschedule. *"There's no CSV of how this person thinks. There's no migration consultant for behavioral context. When you switch away from Conway after 6 months, you don't just lose an agent — you lose the 6 months of compounding that made the agent useful."*
- **The intelligence-portability gap** — There are laws and frameworks for data portability (GDPR, CCPA, export tools). There are *none* for "the model of you that the agent built from your data + their compute + 6 months of inference." Who owns it? Can you take it with you? In what format? *"These questions don't have legal frameworks yet, let alone regulatory frameworks, let alone considered opinions, because we haven't had to face it before."* Nate's argument: **the policies around behavioral context portability should ship before Conway does, not after.**
- **The three-era frame** — Era 1 (2023–24): models. Foundation-model competition. Compressed margins. Era 2 (2024–25): interfaces. Harness wars — Claude Code vs Cursor vs OpenClaw vs Windsurf. Just climaxed with the OpenClaw ban + Steinberger's defection. **Era 3 (2026): persistence + memory.** Who owns the always-on layer that accumulates context, wakes on events, and acts autonomously. *"All three labs have converged on the same insight — they're building the model as a loss leader and they want to own the persistent agent layer. That's the money product."*
- **The OpenBrain counter-pattern** — [[open-brain|OpenBrain]] (or any user-owned context layer exposed through MCP) is the structural counter to Conway-style lock-in. The memory lives in a database you control; any model can access it through an open protocol. Convenience will still win for most companies — *"I have no illusions"* — but the structural distinction is that you can take it with you. Nate is also working on a behavioral-audit skill that captures the "model of how you work" in a form portable across providers.
- **The employee/employer dynamic** — Behavioral lock-in inverts the recent narrative that persistent context "gives individuals and small teams superpowers." It actually empowers *enterprises* in the employer-employee relationship: the company can quantify what makes you effective, prove the agent is 2× your output, and structure carrots/sticks accordingly. *"For the first time, the behavioral evidence of how you work becomes the company's skill, not just yours."* Nate: most companies will default to the old "whatever you do at work belongs to the company" assumption rather than have the harder conversation about how to allocate that value back.

## Sponsorship & Bias Notes

**Sponsor:** none disclosed.

**Product placement / affiliations:** Nate plugs his own substack ("Full Story w/ Prompts") and a behavioral-audit skill he's working on as the portable counter to Conway-style lock-in. Both are first-party self-promotion, not undisclosed affiliations. He has historically promoted [[open-brain|OpenBrain]] (his own architecture) — that's the suggested counter-pattern here too, but the framing is consistent with his prior published work, not new positioning.

**Comparison bias:** Nate is consistently skeptical of frontier labs' lock-in moves and consistently favorable to the user-owned-memory pattern. The Microsoft/Apple/Google Play analogies are well-chosen but cherry-pick the cases where proprietary platforms won; he doesn't engage with cases where open standards beat proprietary stores (the open web, Linux on servers, Git over Bitkeeper). Treat the trajectory predictions as one informed analyst's framing, not consensus.

## Notable Quotes

> "Anthropic is speedrunning Microsoft. Model provider to developer tool to enterprise platform to agent operating system in 15 months. Microsoft took 15 years."

> "Conway is the Active Directory play. It's the piece that makes everything else in the stack sticky because the persistent agent knows your organization in a way nothing else does."

> "Every previous form of tech platform lockin was about stuff. Microsoft locked you in by your files. Salesforce by customer records. Slack by communication history. Conway locks in the accumulated model of how you work. There's no CSV of how this person thinks. There's no migration consultant for behavioral context."

> "The policies around behavioral context portability should ship before Conway does, not after."

> "All three labs have converged on the same insight. They're building the model as a loss leader and they want to own the persistent agent layer. That's the money product."

> "Increasingly, choosing your employer is going to mean who are you choosing to work with as a persistent agent. Are you working with a Claude company or a ChatGPT company?"

## Connected Pages

- [[conway|Conway]] — primary entity; leaked, unannounced, future-facing
- [[behavioral-lock-in|Behavioral Lock-In]] — the conceptual framework this source anchors
- [[anthropic|Anthropic]] — the 90-day platform play arc
- [[managed-agents|Managed Agents]] — Conway's announced sibling; together = Anthropic's hosted-agent layer bet
- [[claude-code|Claude Code]] — the leak source that produced both Conway and the 12 primitives
- [[mcp|MCP]] — the open standard Conway sits on top of with a proprietary layer
- [[openclaw|OpenClaw]] — the playbook target; Steinberger→OpenAI→ban timeline
- [[open-brain|OpenBrain]] — Nate's proposed structural counter to behavioral lock-in
- [[agentic-harness-primitives|Agentic Harness Primitives]] — Nate's earlier analysis of the same leak
- [[slash-loop|/loop]] — local proactivity primitive Conway is the hosted version of
- [[nate-b-jones|Nate B Jones]] — author hub

## See Also
- [[summary-nate-jones-12-agent-primitives|12 Agent Primitives]] — Nate's first analysis of the same Claude Code leak
- [[summary-nate-b-jones-loop-openbrain|/loop + OpenBrain]] — the three-primitive thesis Conway is the hosted/proprietary embodiment of
- [[summary-nate-herk-managed-agents|Managed Agents (Nate Herk)]] — Anthropic's announced hosted runtime; structural sibling to Conway
- [Original](../../raw/archive/I%20Analyzed%20512%2C000%20Lines%20of%20Leaked%20Code.%20It%20Shows%20What%27s%20Coming%20for%20Your%20AI%20Tools..md)
