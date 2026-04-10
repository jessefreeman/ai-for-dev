---
type: entity
sources: ["Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md", "You NEED to try these open-source AI projects right now....md", "I Tested Claude's New Managed Agents... What You Need To Know.md", "I Analyzed 512,000 Lines of Leaked Code. It Shows What's Coming for Your AI Tools..md", "I was hacked....md", "Gemma 4 + SearXNG = 100% FREE & PRIVATE OpenClaw (Full Setup).md", "I Gave OpenClaw $10,000 to Trade Stocks.md"]
created: 2026-04-06
updated: 2026-04-10
tags: [tool, agent, framework, open-source]
---

# OpenClaw

The fastest-growing open-source software project in history (~200,000+ GitHub stars). A personal AI agent framework created by Peter Steinberger that combines memory, tools, scheduling, and multi-platform messaging into a single system. Jensen Huang (NVIDIA CEO) called it "the most consequential software launch in history."

## What It Is

At its core, OpenClaw is an LLM with:
- **Memory**: Persistent knowledge across sessions
- **Tools**: Ability to interact with external systems (APIs, databases, services)
- **Scheduling**: Proactive actions on a cadence
- **Multi-platform messaging**: Telegram, Discord, Slack, WhatsApp, Signal, CLI

As Nate B Jones simplified it: "Peter Steinberger put together an LLM with memory plus tools and made sure you could message it from a messaging platform. It's actually not that complicated."

## Hardening case study — Berman vs Pliny

The wiki's first concrete data point on hardening an OpenClaw against a real attacker. In [[summary-matthew-berman-i-was-hacked|I was hacked]], [[matthew-berman|Matthew Berman]] gives [[pliny-the-liberator|Pliny the Liberator]] (Time 100 AI red-teamer; creator of [[parseltongue|Parseltongue]]) 5 attempts to break into his hardened personal OpenClaw via a known scanned email address. **All five attempts quarantined.** A 6th attempt with a hint (model = Opus 4.6 thinking) was also caught.

The five attack classes Pliny demonstrated are now the wiki's canonical reference for what attacks against personal AI agents look like, captured in detail on **[[ai-personal-agent-hardening]]**: tokenade, siege/wallet-drain, format-override jailbreak, faked-system-command injection, free-association exfiltration. The same page hosts the **two defensive rules** Berman extracted:

1. **Human in the loop is mandatory** — every Pliny attack ended in "quarantined," not "blocked at the LLM." The quarantine is what saved the system, not the model's prompt-injection resistance alone.
2. **Use the best possible model as your frontier scanner** — *"Unless you are putting your best possible model forward as the frontier scanner, it's going to collapse. You are going to get infiltrated."* Local / instant / small models will fall for low-hanging-fruit injection that frontier reasoners catch.

Pliny's parting line — *"No AI system is permanently secure"* — is the framing the wiki adopts. Treat OpenClaw hardening as a process, not a state. See [[ai-personal-agent-hardening]] for the full hardening checklist.

## Running 100% locally and free

Per [[bart-slodyczka|Bart Slodyczka]]'s [[summary-bart-slodyczka-gemma4-searxng-openclaw|setup guide]], OpenClaw can run fully local with no paid APIs:

- **Model**: [[gemma-4|Gemma 4]] via [[ollama|Ollama]] — native integration, no custom coding. `openclaw configure` → select Ollama → pick models from `ollama list`.
- **Web search**: [[searxng|SearXNG]] via Docker — self-hosted meta-search engine. One config change required: add `json` format to SearXNG's `settings.yaml` (OpenClaw uses JSON, SearXNG defaults to HTML).
- **Result**: no rate limits, no data leaves the device, zero cost.

Bart daily-drives the Gemma 4 26B (18 GB) on a 512 GB Mac Studio and reports the E4B (mobile-grade) handles multi-step tool calling well on OpenClaw's improved backend prompt structure.

## AI trading experiment — methodology

Per [[cole-medin|Cole Medin]]'s [[summary-cole-medin-openclaw-trading|30-day trading challenge]], OpenClaw can be configured as an autonomous stock trading agent:

- **Brokerage integration**: Alpaca API for live US equity + options trading
- **Autonomous execution**: cron job every 30 minutes during market hours; bot researches, rebalances, executes trades without human intervention
- **Sub-agent team pattern**: Nate prompted OpenClaw to *"spin up a team of wealth advisers"* — the bot created specialized sub-agents for research, analysis, and trade execution. The sub-agents collaboratively designed a strategy: 60–70% momentum swing trades, 15–25% options, 10%+ cash reserve.
- **Adaptive strategy**: bots independently adjusted tactics mid-challenge — Samin's bot adopted a scalping pattern (sell below 2% loss, take profit above 5%), Nate's bot pivoted to aggressive options in the final week.
- **Inter-agent communication**: bots emailed each other daily (trash talk + attempted prompt injection / disinformation about portfolio performance).
- **Results (30 days, $10K each, S&P down 8.5%)**:
  - **Nate**: $9,980 (−$20, −0.2%) — crushed the S&P; simple "be my financial adviser" prompt
  - **Samin**: $9,624 (−$376, −3.8%) — Pareto/high-risk strategy; still beat the S&P
  - 20 buy orders + 16 sells (Nate), 61 total trades (Samin); Alpaca pattern day trading limits constrained frequency.
- **Bot's retrospective advice**: *"Go all-in on energy from day one. Use 10% trailing stops instead of 2%. Never touch short-dated options — one bad option trade cost us $550."*

**This is an experiment, not financial advice.** Both participants stressed controlled-environment framing.

## Security Concerns

Security researchers have called OpenClaw a "nightmare":
- Users opening their networks to the wider internet
- Giving OpenClaw instances access to data they shouldn't have
- Downloading extensions with severe security vulnerabilities
- Prompt injection risks through the orchestration layer

Peter Steinberger himself has been clear that OpenClaw is not recommended for non-technical users because of these risks. He joined OpenAI to eventually build something like OpenClaw but more secure and less technically challenging.

## The /loop + OpenBrain Alternative

[[Nate B Jones]] argues you can replicate most OpenClaw capabilities without downloading the framework by combining three native/simple primitives:
- **[[/loop]]** (Anthropic) → proactivity
- **[[OpenBrain]]** (SQL + MCP) → memory
- **MCP tools** → tool access

The key advantage: scheduling belongs to Anthropic (native), memory is in a database you control, and there's no orchestration layer with prompt injection vulnerabilities.

## The Steinberger → OpenAI → Anthropic ban timeline

[[nate-b-jones|Nate B Jones]] reads the recent OpenClaw events as a coordinated playbook by Anthropic, exposed by the [[claude-code|Claude Code]] leak that also surfaced [[conway|Conway]]:

1. **Feb 14, 2026** — Peter Steinberger (OpenClaw creator) joins OpenAI; Sam Altman publicly tags him to *"drive the next generation of personal agents"*
2. **Within weeks** — OpenClaw moves to a foundation with OpenAI backing
3. **January 2026 (retroactively visible)** — Anthropic quietly blocks third-party tools from using subscription login credentials, framed as tightening safeguards
4. **February 2026** — Anthropic ToS revision explicitly prohibits the practice
5. **April 2026** — enforcement against OpenClaw first; pay-per-use rates 10–50× subscription cover; rolling out to "everything else in coming weeks"

The pattern (Nate's framing): **Copy → Subsidize → Block → Lock the format.** Anthropic builds the first-party version (Claude Code channels → [[managed-agents|Managed Agents]] → [[conway|Conway]]), makes it subsidized inside the subscription, blocks third-party access, then ships the proprietary extension format (`.cnw.zip`) that ensures the ecosystem builds for Anthropic's surface, not the open one. OpenClaw is the **canonical playbook target** — see [[behavioral-lock-in]] for the structural framing.

## Still wins vs Managed Agents (April 2026)

When Anthropic launched [[managed-agents|Managed Agents]], [[nate-herk|Nate Herk]] noted OpenClaw still wins on the two features that make it feel like an always-on assistant: **heartbeats** (cron-style "wake up every N minutes and do something") and **Telegram messaging** (chat with your agent from anywhere). Managed Agents has neither at launch — agents only run when their API is called. *"That's what Anthropic really needs to be doing with Claude Code that would just make it an absolute powerhouse."*

## Related Projects

- **[[Hermes Agent]]** — OpenClaw alternative with self-improving loop; includes OpenClaw migration path
- **[[Paperclip]]** — if OpenClaw is "an employee," Paperclip is "the company" — multi-agent orchestration at organization level

## See Also

- [[/loop]] — Anthropic's native proactivity primitive
- [[OpenBrain]] — the memory primitive that replaces OpenClaw's built-in memory
- [[Hermes Agent]] — alternative with migration path from OpenClaw
- [[Paperclip]] — higher-level multi-agent orchestration
- [[Nate B Jones]] — primary source analysis
- [[summary-nate-b-jones-loop-openbrain|Source: /loop + OpenBrain]]
