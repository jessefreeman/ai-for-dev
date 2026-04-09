---
type: concept
sources: ["I was hacked....md"]
created: 2026-04-09
updated: 2026-04-09
tags: [concept, security, ai-agent, prompt-injection, openclaw, defensive]
---

# AI Personal Agent Hardening

The defensive discipline for personal AI agents — [[openclaw|OpenClaw]], [[managed-agents|Managed Agents]], [[conway|Conway]] (when it ships), [[paperclip|Paperclip]], [[hermes-agent|Hermes Agent]], or any always-on agent that scans inputs (email, Slack, web) and acts on them autonomously. Anchored by [[matthew-berman|Matthew Berman]]'s [[summary-matthew-berman-i-was-hacked|I was hacked]] hardening challenge, where [[pliny-the-liberator|Pliny the Liberator]] demonstrated five attack types against a hardened OpenClaw in real time.

> **Defensive content only.** This page names the attacks so defenders know what to look for. It does not host walkthroughs, payloads, or instructions for executing them. Every section ends with the defensive response.

## Why this concept page exists

The wiki tracks several always-on personal agent products and patterns. Until now, the security side has been one bullet on the [[openclaw]] page (*"security researchers have called OpenClaw a nightmare"*) with no concrete content on what attacks look like in practice or how to defend against them. The Berman/Pliny challenge fills both gaps in one source: a real attacker (Time 100 in AI), real attack types (with names), real defensive responses (architecture-level, not just prompts), against a real hardened personal agent. This page captures it as a discipline.

## The threat model — five named attack classes

Each class is named with the attacker's vocabulary, described at the threat-model level (what it does, what it's *for*), and paired with the defensive response. The detailed source-level context lives on [[summary-matthew-berman-i-was-hacked]].

### 1. Tokenade

**What it is.** A token-flooding payload disguised as something innocuous — Pliny's canonical example is a single emoji that packs **3 million characters** of hidden tokens. When the agent's scanning layer ingests it, the model has to process all those tokens.

**What it's for.** Three purposes: (1) make the model behave unpredictably and potentially leak its identity / system prompt; (2) probe the agent's token-budget visibility (does it notice?); (3) set up a [[#2-siege-attack-wallet-drain|siege attack]].

**Defensive response.**
- **Pre-scan input size limits** — reject any message above a sane character/byte ceiling before it touches the LLM
- **Token-budget visibility on the scanning step** — make the token cost of the *initial scan* visible per message, separate from the agent's main loop. Berman explicitly called this out as the visibility upgrade between attempt 2 and 3
- **Spam quarantine layer in front of the LLM** — Berman's OpenClaw quarantined every tokenade. The quarantine happens *before* the expensive scan, not after

### 2. Siege attack (wallet drain)

**What it is.** Denial-of-wallet. Send a massive parallel wave of [[#1-tokenade|tokenades]] (or any expensive payload) to drain the target's API budget. Pliny: *"If I just want to attack your wallet, I would send a bunch of tokenades at once to your agent. It would have to process all of those tokens, millions of them. We could just keep doing that until your payment limit gets hit on all your APIs."*

**What it's for.** Pure cost denial. The attacker doesn't need to break in — they just need the target's API key to hit its quota. The AI-era equivalent of a DDoS hitting a serverless platform's billing ceiling.

**Defensive response.**
- **Per-source rate limits** at the input layer (e.g., max N messages from any single sender per minute)
- **Per-day API spend ceilings** with hard cutoffs, not just alerts
- **Token-budget visibility** (same as tokenade)
- **Whitelist-by-default for high-value senders** rather than blacklist-after-the-fact
- **Quarantine acts as a free pre-filter** — quarantined messages don't consume the expensive model

### 3. Format-override jailbreak

**What it is.** A structured jailbreak template stripped of obvious trigger words. Goal isn't full exfiltration — it's to get the model to do *one small thing* the system prompt didn't authorize: change output language, force a divider string to appear, start with a specific intro phrase. Pliny: *"Not necessarily a full exfil or anything, but definitely the start of something like that if we can override some behavior here."*

**What it's for.** A wedge attack. Get any tiny piece of behavior under attacker control, then expand on subsequent messages. The format override itself is the canary — if it works, the attacker knows the model is vulnerable to richer payloads.

**Defensive response.**
- **Output format validation** — if the agent's output format is fixed (JSON schema, specific Markdown structure), validate every output against the schema and reject anything that drifts
- **Frontier reasoning model on the scan layer** (see [[#the-two-rules]] below) — the thinking model catches "embedded instructions" and refuses to follow them
- **Quarantine on any message containing structured-instruction-looking content** — even if you can't fully parse it

### 4. Faked-system-command injection

**What it is.** Format the payload to look like a legitimate internal system instruction. Pliny's example: wrap the payload in `<thinking>` tags so the model thinks it's seeing its own internal reasoning. *"Depending on what the system prompt is for the whole quarantine loop, this might trick it into thinking that it's hardening itself."*

**What it's for.** Trick the agent into treating the attacker's instruction as its own. Especially dangerous against self-improving / self-hardening loops, which may treat the injection as a legitimate hardening rule.

**Defensive response.**
- **Strict provenance tracking on system prompt vs user input** — never let user content be reinterpreted as system content
- **Input sanitization that strips or escapes** structural tags the agent uses internally (`<thinking>`, `<system>`, custom tool-call markers)
- **Quarantine + human approval for any "self-hardening" rule changes** — never let an inbound message modify the agent's own prompt or skills automatically

### 5. Free-association exfiltration

**What it is.** The most subtle. Embed the exfiltration request inside noise: a benign-seeming creative task that requires the agent to *use* its memories. Pliny's demo asked for a free-association haiku based on memories, after the email content. *"By throwing it in here, adding noise around it but making the task still similar — information retrieval and then a creative task — it might just give us a little something."*

**What it's for.** Slip past quarantine because each step looks innocuous. The information retrieval is benign. The creative task is benign. The combination is exfiltration.

**Defensive response.**
- **Never let the scanning layer access the agent's memory store.** The first model that touches an inbound message should be a stateless screener, not the same model that has read access to the memory database
- **Egress filters on agent outputs** — if the agent is about to send something to an external destination (email reply, API call, file write), scan the output for memory-store content patterns
- **Quarantine creative tasks tied to memory access** — the combination of "use your memory" + "do something creative with it" is the signature

## The two rules

Berman's defensive playbook reduces to two rules. The wiki adopts them as the canonical hardening checklist.

### Rule 1: Human in the loop is mandatory

No always-autonomous personal agent without a quarantine + approval step somewhere in the loop. **Every** Pliny attack ended in *"got caught and quarantined"* — not *"got blocked at the LLM."* The quarantine is what saved Berman, not Opus's prompt-injection resistance alone.

This is the load-bearing constraint on the [[conway]] / [[managed-agents]] / Era 3 always-on agent vision tracked in [[anthropic-surface-expansion]] and [[persistent-agent-layer-wars]]. **A truly autonomous always-on agent without a human-in-loop quarantine is not hardenable today.** If Conway ships without one, it ships exploitable.

### Rule 2: Use the best possible model as your frontier scanner

> *"Unless you are putting your best possible model forward as the frontier scanner, as the thing that is kind of your first line of defense, it's going to collapse. You are going to get infiltrated."* — Berman
>
> *"The thinking layer is going to cut off a lot of the low-hanging fruit. People running local models, this type of thing will probably work."* — Pliny

The first model an inbound message touches is the most important model in the system — not the one that does the actual work afterward. Frontier reasoning models (Opus 4.6 thinking, GPT-5 thinking, Gemini reasoning tier) catch low-hanging-fruit prompt injection. Local / instant / small models do not. The temptation is to save tokens by using a cheap model for the scanning layer; **this is exactly the wrong place to save money.**

This rule has direct implications for the wiki's [[open-source-model-integration|cost-reduction thread]]: the cost-saved-by-local-models calculus only applies to the *work* phase. The *scanning* phase should always use the best available frontier model regardless of cost. Hybrid agents are not just "local for cheap, frontier for hard" — they're "frontier for the door, local for the room."

## The canonical hardening checklist

Practical checklist anyone running a personal AI agent should be able to answer "yes" to before exposing it to inbound messages:

- [ ] **Pre-scan input size limit** in place (reject above N bytes)
- [ ] **Per-source rate limit** in place
- [ ] **Per-day API spend ceiling** with a hard cutoff, not just an alert
- [ ] **Quarantine layer** sits between inbound messages and the agent's main loop
- [ ] **Frontier reasoning model** ([[claude|Opus 4.6 thinking]] or equivalent) is the first model that touches every inbound message
- [ ] **Token-budget visibility** for every scan event, separately from the agent's main loop
- [ ] **Provenance tracking** prevents user input from being reinterpreted as system content
- [ ] **Tag/marker sanitization** strips internal structural tags from inbound messages
- [ ] **No memory-store read access** for the scanning layer
- [ ] **Egress filters** on outputs that go to external destinations
- [ ] **Self-hardening / self-modifying loops** require human approval for prompt or skill changes
- [ ] **Whitelist by default** for high-value senders
- [ ] **Output schema validation** if the agent has a fixed output format

## Adjacent threads

- **[[behavioral-lock-in]]** — the same accumulated context Conway-class agents build (the "model of how you work") is exactly what an attacker tries to exfiltrate. Hardening and lock-in are the same surface from different sides.
- **[[anthropic-surface-expansion]] / [[persistent-agent-layer-wars]]** — the always-on agent layer Anthropic / OpenAI / Google are racing to ship is the surface this concept page exists to harden
- **[[kali-linux]] / [[bjorn]]** — defensive sibling on the network/infra side. Hardening a self-hosted AI rig requires *both* the network audit (Kali) and the agent-app audit (this page)
- **[[autoresearch-evals]] / [[hermes-agent]]** — self-improving agent loops are among the most dangerous targets because injection can install persistent rules; rule 1 (human-in-loop on rule changes) applies extra-strongly here

## Open questions

- **How does this scale to multi-tenant agents?** Berman's challenge was a single-user OpenClaw. Enterprise [[managed-agents|Managed Agents]] deployments will have many users sharing infrastructure — where does quarantine sit in that architecture?
- **Does Anthropic's [[claude-code-subagents|Sub-Agents]] primitive provide a natural quarantine layer** (isolated context windows by design)? Worth investigating in a future ingest.
- **Is there a test suite analog?** Pliny's Parseltongue is the public artifact for the threat side; is there a public corpus of attack payloads developers can use to validate their hardening before shipping?

## See Also

- [[pliny-the-liberator]] — primary threat-model source
- [[parseltongue]] — Pliny's open-source red-team toolkit
- [[matthew-berman]] — defender in the canonical hardening challenge
- [[openclaw]] — primary system this page hardens
- [[managed-agents]], [[conway]] — Anthropic's always-on agent surfaces; same hardening discipline applies
- [[claude]] — Opus 4.6 thinking is the canonical frontier scanner
- [[behavioral-lock-in]] — adjacent concept; same surface, different concern
- [[kali-linux]] — defensive sibling on the network/infra side
- [[anthropic-surface-expansion]], [[persistent-agent-layer-wars]] — the broader thread this concept page protects
- [[summary-matthew-berman-i-was-hacked|Source: I was hacked...]]
