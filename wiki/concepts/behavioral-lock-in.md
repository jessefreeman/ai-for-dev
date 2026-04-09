---
type: concept
sources: ["I Analyzed 512,000 Lines of Leaked Code. It Shows What's Coming for Your AI Tools..md"]
created: 2026-04-09
updated: 2026-04-09
tags: [concept, agent-memory, lock-in, platform-strategy, portability]
---

# Behavioral Lock-In

A new kind of vendor lock-in introduced by always-on personal agents like [[conway|Conway]]: **the agent accumulates a model of how you work — which emails you triage in 5 minutes vs ignore for 3 days, which Slack threads you respond to, how your VP communicates, when you reschedule meetings, what a "good" PowerPoint looks like to you — and that model is the lock-in.** Distinct from data lock-in (files, records, communication history) because no export format or migration consultant can move it. Coined / framed by [[nate-b-jones|Nate B Jones]] in his analysis of the leaked Conway project.

> See [[conway|Conway]] for the leaked Anthropic product that anchors this concept page. See [[summary-nate-b-jones-conway-leak]] for the source.

## Why this is different from previous lock-in

| Era | Lock-in surface | Migration cost | Example exit path |
|---|---|---|---|
| 1990s — desktop | **Files** (proprietary formats) | Painful but bounded | Office → LibreOffice via export |
| 2000s — SaaS | **Records** (CRM, support, comms) | Months + consultants | Salesforce → HubSpot via CSV |
| 2010s — cloud | **Workflows** (integrations, APIs) | Re-architecture | Slack → Teams via channel rebuild |
| 2026+ — agents | **Behavioral context** (the model of how you work) | **No known migration path** | None — you start over |

Nate's framing: every previous lock-in was about *stuff*. Stuff is painful to migrate but technically possible — there are export tools, consultants, CSV dumps, OAuth tokens. The accumulated behavioral model is something else. *"There's no CSV of how this person thinks. There's no migration consultant for behavioral context."*

## The three components of a behavioral model

1. **Your data** — emails, calendar, Slack messages, documents the agent has access to
2. **Their compute** — the model + the inference passes the agent ran across that data
3. **Time** — months of observing what you actually do with the surfaced items, what you correct, what you ignore, what you escalate

Component 1 is portable (data export laws cover it). Components 2 and 3 are not. Switch providers and you keep your data but lose 6 months of compounding inference. *"You're back to a brilliant stranger you have to explain everything to."*

## Intelligence portability — the missing framework

We have legal frameworks for data portability:
- **GDPR** Article 20 (right to data portability) — EU
- **CCPA** — California
- Vendor-side export tools (Google Takeout, Slack export, etc.)

We have **none** for the behavioral model an agent built about you:
- No legal framework for ownership
- No regulatory framework for export
- No technical format for serialization
- No considered opinions in business or labor law

Nate's argument: *"The policies around behavioral context portability should ship before Conway does, not after."* Once millions of users have 6+ months of accumulated behavioral context inside a Conway-class system, retroactive portability becomes politically and technically much harder.

## The structural counter-pattern

The wiki has one well-developed counter to behavioral lock-in: **user-owned context infrastructure exposed through an open protocol.**

- **[[open-brain|OpenBrain]]** is the canonical example — Postgres + PGVector + Supabase + MCP. The memory lives in a database the user controls; any model can access it through the open protocol. Switching providers loses the agent's runtime intelligence but preserves the accumulated context.
- Nate is also working on a **behavioral-audit skill** that captures "the model of how you work" in a form portable across providers — the explicit attempt to make components 2 and 3 (compute + time) portable, not just component 1 (data).

The honest framing: **convenience will still win for most users.** Even the wiki's primary source on this concept (Nate B Jones) says *"I have no illusions"* — Anthropic, OpenAI, and Google will make their proprietary versions easy to onboard, polished, and incredible from day one. The structural distinction matters at the edge: power users, regulated industries, employees who need to switch jobs without leaving their accumulated working context behind.

## The employee-employer dimension

Behavioral lock-in inverts the recent narrative that persistent agent context "gives individuals and small teams superpowers." Nate's point: in an employer-employee relationship, **the company can quantify what makes you effective.**

- The agent measures that you triage email 2× faster than the average employee
- It measures that your meeting summaries get fewer follow-up clarifying questions
- It measures that the threads you flag as urgent are urgent 89% of the time

Three consequences:
1. **Promotion / retention**: the company can prove the agent is the reason you're 2× more productive — and structure carrots/sticks around access to it
2. **Talent capture**: behavioral evidence accumulated during employment becomes a company asset, not yours — you leave but your "model of how to do this job" stays
3. **Hiring**: increasingly, choosing an employer means *"who are you choosing to work with as a persistent agent — a Claude company or a ChatGPT company?"*

The unresolved policy question: **how should the value generated by behavioral evidence be allocated back to the worker?** Nate predicts most companies default to "whatever you do at work belongs to the company" rather than have the harder conversation. The wiki tracks this as an open thread.

## Three scenarios for how this plays out

1. **Convenience wins** (Nate's base case) — Anthropic, OpenAI, and Google ship Conway-class systems; the polish + onboarding + integration story is overwhelming; most enterprises and consumers accept lock-in; behavioral context becomes the new switching-cost moat. By late 2026 the platform-choice question dominates enterprise procurement.
2. **Portability shipped reactively** — A Conway-class system has a public failure (a high-profile employer using behavioral evidence to fire someone, a regulator's intervention, a viral story about a switching attempt) that forces vendors to commit to portability commitments. Late, but better than nothing.
3. **Open counter-pattern goes mainstream** — [[open-brain|OpenBrain]]-style architectures (or commercial productizations of them) reach enough adoption that "portable behavioral memory" becomes a procurement requirement. This is the wiki's preferred outcome, also the least likely without an inciting incident.

## How the wiki tracks this concept

- New entity pages for any shipped Conway-class hosted agent (Anthropic, OpenAI, Google) get a **"behavioral lock-in surface"** note in their entity body, citing this concept.
- Any source that introduces a portability commitment, a behavioral-context export format, or a regulatory framework gets tagged for the [[behavioral-lock-in]] thread.
- Any enterprise carrot/stick story (promotion structures tied to agent access, behavioral evidence in performance reviews) becomes a data point under the employee-employer dimension.

## See Also

- [[conway|Conway]] — the leaked Anthropic project that anchors the concept
- [[managed-agents|Managed Agents]] — Conway's announced sibling; partial behavioral lock-in surface today, fuller surface as roadmap features ship
- [[anthropic]] — vendor pursuing this strategy hardest in the wiki's coverage
- [[open-brain|OpenBrain]] — the user-owned memory architecture that's the structural counter
- [[mcp|MCP]] — the open protocol the counter-pattern needs to work
- [[saas-death-spiral|SaaS Death Spiral]] — adjacent thread; this is the agent-era successor to per-seat-pricing erosion
- [[five-levels-of-ai-coding|Five Levels of AI Coding]] — the architectural-consequence frame
- [[nate-b-jones|Nate B Jones]] — primary source
- [[summary-nate-b-jones-conway-leak|Source: I Analyzed 512,000 Lines of Leaked Code]]
