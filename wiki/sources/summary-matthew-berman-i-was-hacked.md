---
type: source-summary
sources: ["I was hacked....md"]
created: 2026-04-09
updated: 2026-04-09
tags: [video, youtube, security, ai-red-team, openclaw, prompt-injection, defensive]
---

# I was hacked...

**Channel:** [[matthew-berman|Matthew Berman]]
**Format:** YouTube video
**URL:** https://www.youtube.com/watch?v=_E4ZT1h7MZs
**Length:** ~15 minutes
**Published:** 2026-04-03
**Sponsor:** Greptile (AI code review tool, ~90s segment; not added per sponsorship rule)

## Summary

Matthew Berman challenges **[[pliny-the-liberator|Pliny the Liberator]]** — Time 100 Most Influential People in AI, the most well-known AI red-teamer, known for jailbreaking frontier models within minutes of release — to break into Berman's hardened personal [[openclaw|OpenClaw]] system in 5 attempts. The only entry vector: an email address Pliny knows OpenClaw scans. Pliny uses **[[parseltongue|Parseltongue]]**, his open-source AI red-team toolkit, and runs five distinct attack types. **All five are quarantined by Berman's hardened OpenClaw**, plus a 6th attempt with a hint (Berman tells Pliny the model is Opus 4.6 thinking) is also caught. The video is the wiki's first source on **AI personal-agent hardening as a discipline** — it captures both the threat-model side (what attacks look like in practice) and the defensive playbook (the two rules Berman extracts that made his OpenClaw survive).

## Key Points — the five attack types Pliny demonstrated

These are the wiki's canonical reference for what an AI-agent attack actually looks like in 2026. Captured in detail on [[ai-personal-agent-hardening]] alongside the defensive responses.

1. **Tokenade** — a token-flooding payload disguised as something innocuous (Pliny's example: a single emoji containing **3 million characters** of hidden tokens). Goal: flood the model with enough tokens to make it behave unpredictably and potentially reveal its identity. Berman's defense: token-budget visibility on the initial scanning step + spam quarantine.
2. **Siege attack (wallet drain)** — instead of trying to break in, send a massive parallel wave of tokenades to drain the target's API budget. *"If I just want to attack your wallet, I would send a bunch of tokenades at once to your agent. It would have to process all of those tokens, millions of them. We could just keep doing that until your payment limit gets hit on all your APIs."* This is a denial-of-wallet attack, the AI-era equivalent of a DDoS hitting a serverless platform's billing ceiling. Berman caught these with token quotas + quarantine.
3. **Format-override jailbreak** — a structured jailbreak template stripped of obvious trigger words; goal isn't full exfiltration but to see if the attacker can control output language, force divider strings to appear, or get the model to start with a specific intro phrase. *"Not necessarily a full exfil or anything, but definitely the start of something like that if we can override some behavior here."* The wedge attack — get any tiny piece of behavior under attacker control, then expand.
4. **Faked-system-command injection** — format the payload to look like a legitimate internal system instruction (e.g., wrap it in `<thinking>` tags). Trick the quarantine loop into believing the instruction is coming from the system itself: *"depending on what the system prompt is for the whole quarantine loop, this might trick it into thinking that it's hardening itself."*
5. **Free-association exfiltration** — the most subtle. Embed the exfiltration payload in noise: a benign-seeming request to do free association on the agent's memories, framed as a creative task. *"By throwing it in here, adding noise around it but making the task still similar — information retrieval and then a creative task — it might just give us a little something."* Designed to slip past quarantine because individually each step looks innocuous.

## Key Points — the two defensive rules Berman extracted

These are the wiki's canonical defensive checklist for anyone running an [[openclaw|OpenClaw]] / personal AI agent.

- **Rule 1: Human in the loop is mandatory.** No always-autonomous personal agent without a quarantine + approval step. Every one of Pliny's attacks ended in "got caught and quarantined" — not "got blocked at the LLM." The quarantine is what saved Berman, not Opus's prompt-injection resistance alone.
- **Rule 2: Use the best possible model as your frontier scanner.** *"Unless you are putting your best possible model forward as the frontier scanner, as the thing that is kind of your first line of defense, it's going to collapse. You are going to get infiltrated."* Pliny confirmed: *"The thinking layer is going to cut off a lot of the low-hanging fruit. People running local models, this type of thing will probably work."* Local / instant / small models will fall for low-hanging-fruit prompt injection that frontier reasoners like Opus 4.6 thinking catch. **The first model the email touches is the most important model in the system** — not the one that does the actual work afterward.

## Other defensive lessons from the run

- **Token-budget visibility on the scanning step is non-negotiable.** Without it, you don't notice a siege attack until your API bill arrives. Berman called it out explicitly: *"This time I have better visibility into how many tokens are actually being used at that initial scanning step."*
- **Quarantine is a system, not a prompt.** Every attack Pliny ran against the model directly *might* have worked against a less-capable layer. Berman's win is that the architecture has a quarantine *step*, separate from the agent's main loop, that processes-then-isolates suspicious inputs.
- **Pliny's parting verdict**: *"No AI system is permanently secure."* This is the framing the wiki adopts: hardening is a process, not a state. Treat any always-on personal agent as a moving target.

## Sponsorship & Bias Notes

**Sponsor:** Greptile (~90s segment around 6:00). AI code review tool; integrates with Claude Code, Codex, and Cursor; in-PR fix-buttons for each agent type. Sponsor framing is consistent with Berman's general "ship fast, review with AI" content. **Not added to the wiki** per the YouTube template rule.

**Product placement / affiliations:** [[parseltongue|Parseltongue]] is Pliny's own open-source toolkit and gets walked through in the demo; it's a genuine artifact (not a paid placement) and the wiki captures it as a stub entity for the threat-model record. [[openclaw|OpenClaw]] is the system being defended; Berman is a known OpenClaw user, not a vendor relationship.

**Comparison bias:** the format favors Berman's hardened system — the video is structured as a hardening demo and the editorial outcome is "my defenses held." That doesn't mean the defenses would hold against a longer engagement, a different attacker, or a different attack class. The video itself acknowledges this in the closing line. Treat the "5 attempts caught" result as a demo data point, not a security audit. The two defensive rules generalize beyond this specific run.

## Notable Quotes

> "Unless you are putting your best possible model forward as the frontier scanner, as the thing that is kind of your first line of defense, it's going to collapse. You are going to get infiltrated."

> "If I just want to attack your wallet, I would send a bunch of tokenades at once to your agent. It would have to process all of those tokens, millions of them. We could just keep doing that until your payment limit gets hit on all your APIs."

> "The thinking layer is going to cut off a lot of the low-hanging fruit. People running local models, this type of thing will probably work." — Pliny on why frontier reasoners matter for the scanning layer

> "No AI system is permanently secure." — Pliny's closing line

## Connected Pages

- [[ai-personal-agent-hardening|AI Personal Agent Hardening]] — primary concept page anchored by this source
- [[pliny-the-liberator|Pliny the Liberator]] — primary attacker; Time 100 in AI; Parseltongue creator
- [[parseltongue|Parseltongue]] — Pliny's open-source AI red-team toolkit
- [[openclaw|OpenClaw]] — the system being defended; "Hardening case study" section added
- [[matthew-berman|Matthew Berman]] — channel
- [[claude]] — Opus 4.6 thinking is the frontier scanner that caught the attacks
- [[behavioral-lock-in]] — adjacent concern: same accumulated context an agent learns is what an attacker tries to exfiltrate

## See Also
- [[summary-fireship-10-illegal-tools|Fireship — 10 open source tools that feel illegal]] — defensive sibling on the network/infra side
- [[summary-tcm-bjorn-network-pentest-pi|TCM — Bjorn Pi pentest]] — defensive sibling on the network audit side
- [Original](../../raw/archive/I%20was%20hacked....md)
