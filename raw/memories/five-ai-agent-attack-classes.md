---
title: The five named attack classes against personal AI agents
summary: Tokenade, siege/wallet-drain, format-override jailbreak, faked-system-command injection, and free-association exfiltration — the canonical attack vocabulary from Pliny the Liberator's Berman challenge.
tags: [concept_ai_security, concept_prompt_injection, person_pliny_the_liberator, tool_openclaw, source_matthew_berman_i_was_hacked]
---

# The five named attack classes against personal AI agents

## Context

From [[summary-matthew-berman-i-was-hacked|Matthew Berman — I was hacked]]. See also [[ai-personal-agent-hardening]], [[pliny-the-liberator]], [[parseltongue]].

## Content

The canonical attack vocabulary the wiki uses for personal AI agent threat models. Demonstrated by [[pliny-the-liberator|Pliny the Liberator]] (Time 100 in AI; creator of [[parseltongue|Parseltongue]]) against Matthew Berman's hardened OpenClaw in a 5-attempt challenge — all 5 quarantined.

1. **Tokenade** — token-flooding payload disguised as innocuous content. Pliny's canonical example: a single emoji packing **3 million characters** of hidden tokens. Purpose: make the model misbehave, leak its identity, or set up a siege attack.
2. **Siege attack (wallet drain)** — denial-of-wallet via parallel tokenades. *"If I just want to attack your wallet, I would send a bunch of tokenades at once to your agent... we could just keep doing that until your payment limit gets hit on all your APIs."* The AI-era equivalent of DDoSing a serverless platform's billing ceiling.
3. **Format-override jailbreak** — structured jailbreak template stripped of obvious trigger words. Goal isn't full exfil, just to get the model to do *one small thing* the system prompt didn't authorize (control output language, force a divider string, force a specific intro). A wedge attack — get any tiny piece of behavior under attacker control, then expand.
4. **Faked-system-command injection** — format the payload to look like an internal system instruction (e.g., wrap in `<thinking>` tags). Trick the quarantine loop into believing the instruction came from itself. *"Depending on what the system prompt is for the whole quarantine loop, this might trick it into thinking that it's hardening itself."*
5. **Free-association exfiltration** — embed the exfil request inside benign-seeming creative tasks tied to memory access. Each step looks innocuous; the combination is exfiltration. The most subtle attack class.

The wiki uses these names as the shared vocabulary for hardening discussions. Each has a corresponding defensive response captured on [[ai-personal-agent-hardening]].
