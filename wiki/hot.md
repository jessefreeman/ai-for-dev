---
type: hot-cache
created: 2026-04-06
updated: 2026-04-09
---

# Hot Cache

## Current State

**108 sources ingested.** Today's defensive-security pair closes a long-standing wiki gap: the wiki now has anchor pages for **both sides** of self-hosted AI hardening — [[kali-linux]] for network/infra audit and [[ai-personal-agent-hardening]] for AI-app-side prompt-injection / agent defense. Connects directly into the [[anthropic-surface-expansion]] / [[behavioral-lock-in]] thread: rule 1 (human-in-loop) is the load-bearing constraint on Conway-class always-on agents.

## Most Active Pages

- [[ai-personal-agent-hardening]] — new concept; 5 named attack classes + 2 defensive rules + 13-item hardening checklist; the wiki's first AI-app security discipline page
- [[kali-linux]] — new entity; 10 default pentest tools captured with explicit defensive use cases per tool
- [[pliny-the-liberator]] — new person; Time 100 in AI; the wiki's first AI red-teamer person page
- [[parseltongue]] — new tool stub; Pliny's open-source AI red-team toolkit
- [[openclaw]] — new "Hardening case study" section (Berman vs Pliny: 5 attempts caught)
- [[matthew-berman]] — fifth source; the hardening rules now in his key ideas
- [[fireship]] — fourth source; Kali toolkit walkthrough

## Most Recently Added (2026-04-09)

- [[summary-fireship-10-illegal-tools|Fireship — 10 open source tools that feel illegal]] — Code Report on Kali Linux + 10 default pentest tools. Captured defensively as the canonical audit kit. Sponsor: Hostinger, not added.
- [[summary-matthew-berman-i-was-hacked|Matthew Berman — I was hacked]] — Pliny the Liberator vs Berman's hardened OpenClaw, 5 attempts, all quarantined. Anchors the new hardening concept page. Sponsor: Greptile, not added.

## The five attack classes (now in the wiki vocabulary)

For future ingests touching personal AI agents — these are the canonical names:

1. **Tokenade** — token-flooding payload disguised as innocuous content
2. **Siege attack** — denial-of-wallet via parallel tokenades
3. **Format-override jailbreak** — wedge attack to control any small piece of output behavior
4. **Faked-system-command injection** — payload formatted as internal system instruction (e.g., `<thinking>` tags)
5. **Free-association exfiltration** — embed exfil request inside benign creative tasks tied to memory access

## The two hardening rules

1. **Human in the loop is mandatory** — quarantine is what catches attacks, not LLM resistance alone
2. **Best possible model as frontier scanner** — local/instant models will fall for what frontier reasoners catch. *"The first model the input touches is the most important model in the system."*

## Open Gaps

- **Long-standing primary sources**: Karpathy's gist, AI 2027, Dan Shapiro, StrongDM, METR study
- **Aggregate Intellect creator name** — carryover
- **JSON-to-Video pricing model** — carryover
- **CodeLLM pricing tier verification** — carryover
- **Browserbase / Block / ByteDance org pages** — still tracked
- **Trigger.dev** — still a stub
- **Public attack-payload corpus** — open question on the new hardening concept page; is there a developer-facing equivalent of OWASP for AI agents yet?
- **Lint overdue** — log ingest count is now at 7 since the last lint pass; recommend running soon

## Architectural Threads to Watch

- **Defensive AI security as a discipline** (new): [[ai-personal-agent-hardening]] + [[kali-linux]] + [[bjorn]] + [[parseltongue]] now form the wiki's first coherent defensive cluster. Future ingests on prompt injection, agent quarantine architectures, AI red-team tooling, or self-hosted AI exposure all land here.
- **Anthropic surface expansion (load-bearing)**: [[anthropic-surface-expansion]] is the canonical thread page. Hardening rule 1 is the load-bearing constraint on Conway-class always-on agents — *"a truly autonomous always-on agent without a human-in-loop quarantine is not hardenable today."*
- **Behavioral lock-in vs intelligence portability**: same surface as hardening, different concern. The accumulated context Conway-class agents build is exactly what an attacker tries to exfiltrate.
- **Three eras of AI competition** (Nate B Jones): models → interfaces → persistence/memory.
- **MCP as universal interface layer** with the proprietary-layer-on-top risk flagged for `.cnw.zip`.
