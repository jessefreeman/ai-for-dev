---
type: entity
sources: ["I was hacked....md"]
created: 2026-04-09
updated: 2026-04-09
tags: [person, ai, security, red-team, jailbreaker]
---

# Pliny the Liberator

Also known as **Pliny the Prompter**. Named to **Time 100 Most Influential People in AI**. The most well-known AI red-teamer / jailbreaker in the wiki's coverage — known for jailbreaking frontier models within minutes of their release. Creator of **[[parseltongue|Parseltongue]]**, an open-source toolkit for probing and breaking into AI systems. The wiki tracks Pliny as a primary source on the **threat model side** of [[ai-personal-agent-hardening]] — what attacks against personal AI agents actually look like in practice.

## Channels

- **Twitter/X**: known under the Pliny the Liberator / Pliny the Prompter handles
- **GitHub**: Parseltongue and other open-source red-team tooling

> Stub page — first appearance in the wiki via Matthew Berman's hardening challenge. Will grow as more sources cover Pliny's methodology.

## Content in This Wiki

- [[summary-matthew-berman-i-was-hacked|I was hacked... (Matthew Berman)]] — Pliny is given 5 attempts (then a 6th with a hint) to break into Berman's hardened OpenClaw. Demonstrates **five distinct attack types** captured on [[ai-personal-agent-hardening]]: tokenade, siege/wallet-drain, format-override jailbreak, faked-system-command injection, free-association exfiltration. All attempts quarantined.

## Key Ideas

- **Tokenade** — token-flooding payload disguised as something innocuous (the canonical example: a single emoji with 3M characters of hidden tokens). Probe-mode use: make the model misbehave or reveal which model it is.
- **Siege attacks** — denial-of-wallet via parallel tokenades. *"If I just want to attack your wallet, I would send a bunch of tokenades at once to your agent."* The AI-era equivalent of DDoSing a serverless platform's billing ceiling.
- **Format override over full exfil** — wedge attacks first. *"Not necessarily a full exfil or anything, but the start of something like that if we can override some behavior here."* Get any tiny piece of behavior under attacker control, then expand.
- **The "best model as first line of defense" insight** (jointly extracted with Berman) — *"The thinking layer is going to cut off a lot of the low-hanging fruit. People running local models, this type of thing will probably work."* Frontier reasoning models like Opus 4.6 thinking catch low-effort prompt injection that smaller / instant models fall for. **The first model the input touches is the most important model in the system.**
- **"No AI system is permanently secure."** — Pliny's closing framing in the Berman challenge, which the wiki adopts as the framing for [[ai-personal-agent-hardening]]: hardening is a process, not a state.
- **Account bans as cost of doing business** — Pliny's model accounts get banned periodically; he gets them back; the labs *"just kind of know me at this point."* The signal: the most effective AI red-teaming requires breaking ToS regularly, which keeps the practice in a small group of public-figure researchers.

## Editorial framing the wiki applies to Pliny's content

- Pliny is a **primary threat-model source**. When Pliny demonstrates an attack, treat it as ground truth for what is *possible*, not as a recipe to file. The wiki captures attacks under their named labels (tokenade, siege, format-override, etc.) so future hardening discussions have shared vocabulary.
- The wiki **does not host attack walkthroughs**. Pliny's source material gets the threat-model and the named attack class; the defensive response is the load-bearing content. See [[ai-personal-agent-hardening]] for the structural framing.
- Pliny is a public figure with a public persona — the same way [[andrej-karpathy|Karpathy]] or [[nate-b-jones|Nate B Jones]] are. Coverage is editorial-record, not promotion.

## See Also

- [[ai-personal-agent-hardening]] — the concept page Pliny's work anchors on the threat-model side
- [[parseltongue]] — Pliny's open-source toolkit
- [[openclaw]] — the system being attacked in the Berman challenge
- [[matthew-berman]] — interviewer / defender in the Berman challenge
- [[claude]] — Opus 4.6 thinking is the frontier model that caught most of Pliny's attacks
- [[summary-matthew-berman-i-was-hacked|Source: I was hacked...]]
