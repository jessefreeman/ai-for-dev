---
type: source-summary
sources: ["I Tested Claude's New Managed Agents... What You Need To Know.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [video, youtube, anthropic, agent, cloud]
---

# I Tested Claude's New Managed Agents... What You Need To Know

**Channel:** [[nate-herk|Nate Herk]]
**Format:** YouTube video
**URL:** https://www.youtube.com/watch?v=27Y44JYXZJ8
**Length:** ~16 minutes
**Published:** 2026-04-08
**Sponsor:** none disclosed

## Summary

[[anthropic|Anthropic]] launched **[[managed-agents|Managed Agents]]**, a hosted-on-Anthropic-cloud agent runtime that lets users define an agent's prompt, tools, and guardrails and then runs it inside a managed sandbox ("environment"). Pricing: $0.08/hour per active session + API token costs. Nate's verdict after ~3 hours of hands-on: a strong onramp for [[claude|Claude]] chat users who have never built an agent, but disappointing for [[claude-code|Claude Code]] power users — there is **no native cron, no webhook trigger, no heartbeat**, so any "always-on" use case still requires external glue ([[trigger-dev|trigger.dev]], n8n, Claude Code's desktop scheduled tasks). Three teased-but-unreleased features are the reason to keep watching this product.

## Key Points

- **What it is** — A web console at `console.anthropic.com` → Managed Agents, with quick-start templates or a chat-builder. Each agent has a name, description, model, system prompt, MCP servers, tools, and skills. Authentication to external services (e.g., ClickUp) uses an OAuth-style flow via MCP, with credentials stored in a sharable team **vault**.
- **Environment = cloud sandbox** — Each agent runs in an "environment" (cloud container with pre-installed packages and configurable networking rules). Environments are free; **billing is per-session: $0.08/hr active + token costs**. Idle environments cost nothing.
- **Same tool surface as Claude Code** — Bash, Read, Glob, Grep, web search, fetch. Managed Agents is essentially the [[claude-agent-sdk]] with a hosted wrapper and a friendlier UI for non-CLI users.
- **Notion is a launch partner** — Notion ships a Managed Agents integration where teams drag a task to a status column and a Claude agent picks it up and processes it. This is the canonical "delegate work to Claude inside the tool you already use" pattern.
- **CLI integration** — `anthropic` CLI lets you build managed agents from inside Claude Code, which means the project's existing context (CLAUDE.md, codebase) can inform a much more specific system prompt than the web quick-start produces. **Credential warning**: when building from CLI, agents may default to embedding API keys in the system prompt rather than using MCP OAuth — visible to anyone with vault access and stored in conversation history.
- **The crippling gap: no native triggers** — Agents only run when their API is called. No cron, no ClickUp webhook, no scheduled wake-up. Nate's intended use case (agent watches a ClickUp to-do list and processes new items) is impossible without external orchestration. *"You're telling me Anthropic has a model that's so good it cannot be released, but they can't just give us scheduled crons in the cloud."*
- **Three features in private preview (apply for early access)**:
  1. **Outcomes** — Define success criteria; the agent self-evaluates its work and iterates until it passes. Karpathy's auto-research pattern built into the build phase.
  2. **Multi-agent orchestration** — A `callable agents` tool lets a coordinator agent delegate to specialized sub-agents. Anthropic-managed swarm pattern; a hosted alternative to [[claude-code-subagents|Claude Code sub-agents]].
  3. **Persistent memory across sessions** — Today every session is stateless (system prompt only). The roadmap adds memory that survives across runs — closes the same gap [[open-brain|OpenBrain]] solves locally.
- **Editorial verdict** — Nate prefers Claude Code + [[trigger-dev|trigger.dev]] for his own use because trigger.dev provides crons, scripts, and custom routing for less money. Managed Agents is "the right tool" only for users who would otherwise never have built an agent at all. *"It's not which tool is best, it's which tool is best for this specific use case."*

## Sponsorship & Bias Notes

**Sponsor:** none disclosed.

**Product placement / affiliations:** [[trigger-dev|trigger.dev]] is mentioned as Nate's preferred alternative with a link to a prior video — likely an affiliate or self-promotion of his own content rather than a paid placement. Skool community ("AI Automation Society Plus") is his own paid product, plugged in the intro and outro per usual.

**Comparison bias:** the central comparison (Managed Agents vs Claude Code + trigger.dev vs [[openclaw|OpenClaw]]) favors tools Nate has already invested time in. He is a heavy Claude Code + OpenClaw user, so the framing "Managed Agents is disappointing for power users" reflects that vantage point. The "great onramp for Claude chat users" framing is fair and not contradicted elsewhere.

## Notable Quotes

> "Shipping a production agent used to mean months of infrastructure work first, but now managed agents handle that for you." — Nate paraphrasing Anthropic's launch pitch

> "You're telling me Anthropic has a model that's so good it cannot be released, but they can't just give us scheduled crons in the cloud." — on the missing trigger primitive

> "It's not which tool is best, it's which tool is best for this specific use case." — closing framing

## Connected Pages

- [[managed-agents|Managed Agents]] — primary entity
- [[anthropic|Anthropic]] — vendor; this is Anthropic's first hosted agent runtime
- [[claude-code|Claude Code]] — CLI integration path
- [[claude-code-subagents|Claude Code Sub-Agents]] — local equivalent of the teased multi-agent orchestration feature
- [[trigger-dev|trigger.dev]] — Nate's preferred trigger/cron layer; the gap Managed Agents leaves
- [[openclaw|OpenClaw]] — explicit comparison: still wins on heartbeats + Telegram messaging
- [[open-brain|OpenBrain]] — the local primitive that the teased "persistent memory" feature would replicate
- [[mcp|MCP]] — auth + tool integration layer used by every Managed Agent
- [[slash-loop|/loop]] — Claude Code's local proactivity primitive; Managed Agents conspicuously lacks an equivalent
- [[nate-herk|Nate Herk]] — channel

## See Also
- [[summary-nate-b-jones-loop-openbrain|/loop + OpenBrain]] — the three-primitive thesis that Managed Agents partially embodies (tools yes, memory soon, proactivity missing)
- [[summary-nate-herk-paperclip|Claude Code + Paperclip]] — Nate's preferred multi-agent setup pre-Managed-Agents
- [Original](../../raw/archive/I%20Tested%20Claude%27s%20New%20Managed%20Agents...%20What%20You%20Need%20To%20Know.md)
