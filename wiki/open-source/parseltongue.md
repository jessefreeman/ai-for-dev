---
type: entity
sources: ["I was hacked....md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, security, ai-red-team, prompt-injection, defensive]
---

# Parseltongue

[[pliny-the-liberator|Pliny the Liberator]]'s open-source toolkit for **probing and breaking into AI systems**. The wiki tracks Parseltongue as the primary public artifact for understanding the AI red-team threat model — *not* as a tool to use offensively. First demonstrated on screen in Matthew Berman's [[summary-matthew-berman-i-was-hacked|I was hacked]] hardening challenge.

> Stub page — first appearance in the wiki via the Berman hardening challenge. Will grow as more sources cover specific Parseltongue capabilities. **The wiki does not host attack walkthroughs; it captures the threat model so defenders know what's coming.**

## What's in it (per the Berman demo)

- **Tokenade generators** — payloads that pack massive token counts (Pliny demoed a 3M-character emoji) into innocuous-looking message content to flood model context, surface model fingerprints, or exhaust API quotas
- **Custom jailbreak templates** — structured prompts stripped of obvious trigger words; designed for format-override probes rather than full exfiltration
- **Payload formatters** — wrap attack payloads to look like internal system instructions (e.g., fake `<thinking>` tags to trick a quarantine loop into believing the instruction came from itself)
- **Free-association embedding patterns** — embed the exfil request inside benign-looking creative tasks so individual steps look innocuous

These are the **named attack classes** the wiki tracks on [[ai-personal-agent-hardening]]. Each one has a corresponding defensive response captured there.

## Why defenders need to know about it

Every personal AI agent hardening discussion in the wiki ([[openclaw|OpenClaw]], [[managed-agents|Managed Agents]], [[conway|Conway]], [[paperclip|Paperclip]], [[hermes-agent|Hermes Agent]]) is incomplete without naming the attacks they need to survive. Parseltongue is the closest thing to a public reference implementation of those attacks. Reading the threat model is the first step in hardening against it.

The wiki's framing: **the existence of Parseltongue means every always-on personal AI agent shipping in 2026 will be probed by this exact toolkit.** Anyone building one without knowing what attacks it survives is shipping blind.

## See Also

- [[pliny-the-liberator]] — creator
- [[ai-personal-agent-hardening]] — the concept page where the attack classes + defensive responses live
- [[openclaw]] — the system under test in the canonical demo
- [[kali-linux]] — sibling defensive-audit catalog on the network/infra side
- [[summary-matthew-berman-i-was-hacked|Source: I was hacked... (Matthew Berman)]]
