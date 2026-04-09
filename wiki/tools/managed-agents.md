---
type: entity
sources: ["I Tested Claude's New Managed Agents... What You Need To Know.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [tool, anthropic, agent, cloud, future-facing]
---

# Managed Agents

[[anthropic|Anthropic]]'s hosted agent runtime, launched April 2026. Lets users build, deploy, and run an agent entirely inside Anthropic's cloud — no local infrastructure, no API key wrangling, no sandbox setup. Marketed as *"build and deploy production agents 10× faster."* Sits alongside [[claude-code|Claude Code]] (developer CLI) and [[claude|Claude.ai]] (chat) as Anthropic's third primary surface.

> **Future-facing — track as it evolves.** The flagged user interest in this page is the **roadmap**, not the launch state. Three private-preview features (Outcomes, Multi-Agent Orchestration, Persistent Memory) define whether this becomes a real Claude Code competitor or stays as the "easy mode" onramp. Updated as new sources land.

## Conway sibling — the unannounced always-on version

[[nate-b-jones|Nate B Jones]]'s analysis of the Claude Code leak surfaced **[[conway|Conway]]**, an unannounced internal Anthropic project that is structurally the always-on sibling to Managed Agents: standalone sidebar UI, proprietary `.cnw.zip` extension format, automatic webhook triggers (the primitive Managed Agents lacks at launch), browser control, persistent memory across sessions. The two are not redundant — Managed Agents is the *announced* onramp tier; Conway is the *unannounced* always-on capstone. Together they're the visible shape of Anthropic's bet on owning the [[behavioral-lock-in|persistent agent layer]]. See [[conway]] for the leak details and the [[behavioral-lock-in]] concept page for the structural framing.

## What it is

A web console at `console.anthropic.com` → **Managed Agents** with two creation paths: pick a template, or chat-build from a goal description. Each agent has:

- **Name + description**
- **Model** (Sonnet / Opus, configurable)
- **System prompt** (auto-generated from the chat builder; refinable via "guided edit")
- **MCP servers** for tool access
- **Skills** (same primitive as [[claude-code|Claude Code]] skills)

Each agent runs inside an **environment** — a cloud sandbox container with pre-installed packages and configurable networking rules ("unrestricted" or scoped). Multiple agents can share an environment or run in isolated ones.

## Pricing

- **Environments**: free (pay nothing while idle).
- **Sessions**: **$0.08/hour** per *active* session.
- **Tokens**: standard API rates on top.
- **Subscription**: not required. Anyone with a $5+ API key balance can use it.

This pricing sidesteps Anthropic's recent crackdown on third-party harnesses using Pro/Max subscriptions — Managed Agents is API-billed, period.

## Tool surface

The same tools as [[claude-code|Claude Code]]: `Bash`, `Read`, `Glob`, `Grep`, web `search`, `fetch`. Plus connected MCP servers (ClickUp, Notion, etc., via OAuth-style flow). Credentials stored in a team-shareable **vault**. From the user's perspective: *"if you've used Claude Code, this is just Claude Code with a hosted wrapper and a nicer UI."*

## Trigger model — the load-bearing limitation

Managed Agents only run when their API is called. As of launch:

- ❌ No cron / scheduled wake-up
- ❌ No webhook intake
- ❌ No "heartbeat" equivalent to [[slash-loop|/loop]]
- ❌ No event subscription on connected MCP services

Any "agent watches a queue and processes new items" use case requires **external orchestration** — call the Managed Agent's API from n8n, [[trigger-dev|trigger.dev]], a cron job, or similar. This is the structural reason [[nate-herk|Nate Herk]] concluded Managed Agents *"isn't for me — I'd rather use Claude Code + trigger.dev."*

The closest existing native option is Claude Code's desktop **scheduled tasks**, which run on the user's local machine — not cloud-native, not infrastructure-as-code.

## CLI integration

The `anthropic` CLI lets you build a Managed Agent from inside [[claude-code|Claude Code]], which means a project's existing context (CLAUDE.md, codebase, quarterly goals) can inform a much more specific system prompt than the web quick-start produces. Two patterns this enables:

1. **Frontend-for-managed-agent** — build a UI in Claude Code that calls a Managed Agent endpoint for the actual work, keeping local context windows lean.
2. **Sub-agent-as-API** — instead of co-locating sub-agents in the local `agents/` folder (where they eat context), point Claude Code at API endpoints for each one.

**Credential warning**: when building managed agents from the CLI, the agent may default to embedding plaintext API keys in the system prompt rather than using MCP OAuth. The system prompt is visible to anyone with vault access and stored in Anthropic's conversation history. Use MCP OAuth flows where possible; never let CLI tooling paste raw secrets into the agent definition.

## Launch partners

- **Notion** — drag a task to a status column → Claude agent picks it up and processes it. Anthropic's docs page lists additional team-built deployments. Treat as marketing surface until corroborated.

## Roadmap (private preview — apply for early access)

These three features are **the reason to track this product**. Each addresses a specific gap in the launch state.

| Feature | What it does | Replaces / competes with |
|---|---|---|
| **Outcomes** | Define success criteria; agent self-evaluates and iterates until it meets them | [[autoresearch-evals|AutoResearch]] / [[hermes-agent\|Hermes GEPA loop]] — but built into the build phase |
| **Multi-Agent Orchestration** | A `callable agents` tool; a coordinator delegates to specialized sub-agents managed by Anthropic | [[claude-code-subagents]] (hosted version), [[paperclip\|Paperclip]] (managed equivalent) |
| **Persistent Memory** | Memory that survives across sessions, scoped per agent | [[open-brain\|OpenBrain]] (the local SQL+MCP equivalent) |

If all three ship, Managed Agents becomes a credible hosted alternative to [[openclaw|OpenClaw]], [[paperclip|Paperclip]], and the [[slash-loop|/loop]] + OpenBrain three-primitive stack — *minus* the trigger primitive, which would still be needed unless Anthropic also adds cron.

## Comparison framing

| | Managed Agents | [[claude-code\|Claude Code]] + [[trigger-dev\|trigger.dev]] | [[openclaw\|OpenClaw]] |
|---|---|---|---|
| Setup difficulty | Lowest | Medium | High |
| Infra ownership | Anthropic cloud | Trigger.dev cloud + your code | Self-hosted |
| Native triggers | None | Cron, webhook, scheduled | Heartbeats + messaging platforms |
| Multi-agent (today) | No (private preview) | Via [[paperclip\|Paperclip]] or skills | Yes |
| Memory (today) | No (private preview) | Via [[open-brain\|OpenBrain]] | Built-in |
| Best for | Claude.ai users new to agents | Power users with custom routing needs | Always-on personal agents |

## Editorial framing

Anthropic's launch pitch ("10× faster to production") is **positioning from an interested party** — discount accordingly. The substantive evaluation: **Managed Agents lowers the floor for non-developers but does not yet raise the ceiling for builders.** That changes if the three roadmap features ship. Watch for:

- Outcomes shipping → first hosted self-eval primitive from a frontier lab
- Multi-agent orchestration shipping → directly competes with [[paperclip|Paperclip]] and [[claude-code-subagents]]
- Persistent memory shipping → reduces the "build [[open-brain|OpenBrain]] yourself" pressure
- A native cron / webhook / event-trigger primitive landing → would remove the structural reason to glue this to trigger.dev

## See Also

- [[anthropic]] — vendor
- [[claude-code]] — sibling product; CLI integration path
- [[claude-code-subagents]] — local equivalent of the teased multi-agent feature
- [[slash-loop|/loop]] — the proactivity primitive Managed Agents conspicuously lacks
- [[open-brain|OpenBrain]] — the memory primitive the roadmap is chasing
- [[trigger-dev|trigger.dev]] — the trigger layer power users still need on top
- [[mcp|MCP]] — auth and tool integration layer
- [[openclaw|OpenClaw]] — explicit comparison
- [[summary-nate-herk-managed-agents|Source: I Tested Claude's New Managed Agents]]
