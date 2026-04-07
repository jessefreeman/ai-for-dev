---
type: entity
sources: ["You NEED to try these open-source AI projects right now....md", "Hermes Agent The 247 Self-Evolving AI Agent!.md"]
created: 2026-04-06
updated: 2026-04-07
tags: [open-source, agent, self-improving, local-ai]
---

# Hermes Agent

An open-source AI agent framework by **[[nous-research|Nous Research]]**. Positioned as an alternative to [[OpenClaw]] with a distinctive feature: a built-in closed learning loop that enables the agent to self-improve over time without fine-tuning. Per Nous's own framing: "It gets better the more you use it with no fine-tuning or prompt engineering needed." See [[nous-research]] for the org-level entity.

- **GitHub**: [NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent)
- **Site / docs**: hermes-agent.nousresearch.com
- **License**: Open source

## What It Is

Not just a coding agent or assistant. Hermes is described as an entire framework — closer to an operating system for a personal AI agent. Similar scope to OpenClaw (full agent framework, not just a chat interface).

## Self-Improving Loop (GEPA)

The core differentiator. Hermes runs a system called **GEPA** that Nous describes as **"backpropagation for prompts instead of model weights."** Every ~15 tool calls, the agent pauses, reviews what happened, figures out what failed, and updates itself.

- **Closed learning loop via GEPA**: Agent reflects on its own tool-call history and updates its behavior
- **Agent-curated memory**: Persistent across sessions; the agent searches its own past conversations
- **Autonomous skill creation**: After solving something, fixing an error, or being told to remember a task, Hermes turns it into a reusable skill — and uses that skill later when it recognizes the situation
- **Skills self-improve during use**: Existing skills get refined as the agent uses them
- **Searches its own past conversations**: Builds a deepening model of the user across sessions

This pattern was inspired by [[andrej-karpathy|Andrej Karpathy]]'s [[autoresearch-evals|AutoResearch]] work, which demonstrated self-improving loops with binary evals.

## Features

- **Terminal UI (TUI)**: Multi-line editing, command autocomplete, conversation history, interrupt and redirect, streaming tool output
- **Multi-chat gateway**: Single gateway for Telegram, Discord, Slack, WhatsApp, Signal, and CLI
- **Scheduler/cron**: Autonomous scheduled tasks
- **Sub-agent delegation**: Parallel sub-agent execution
- **Flexible deployment**: Local, cloud, or hybrid
- **OpenClaw migration path**: Import existing OpenClaw workflows and memories without starting from scratch

## Installation & Setup

- **One-line install** via `curl | bash` from the docs
- **`hermes setup`** offers two paths: quick (provider + messaging method only) or full (everything)
- **Provider options**: OpenRouter, Anthropic, OpenAI; can extend with MiniMax, ZAI, or others
- **Local model recommendation**: [[gemma-4|Gemma 4]] via [[ollama|Ollama]] — Nous explicitly calls Gemma 4 out as agentic enough to run Hermes locally with no API keys
- **Hardware fit lookup**: WorldofAI references whatmodelscanirun.com to size models against available GPUs
- **Skill management**: `/skills` to browse, `/browse` to add a new skill from a URL
- **Multi-platform gateway** (same as the OpenClaw pattern): WhatsApp, Telegram, Slack, plus a TUI
- **Native Windows is not supported yet** — Windows users need WSL2

## Skill Demo: Obsidian Vault Population

WorldofAI demonstrates adding Obsidian as a skill: Hermes is told to integrate the latest packages from a documentation site (shadcn) into a freshly-created Obsidian vault. After ingestion, Hermes uses the populated vault as a *living context source* for subsequent prompts — when later asked to build a finance dashboard frontend, it pulls the freshly-cached shadcn components automatically. The memory updates per session, so future prompts from the same user inherit the workflow context.

## Adoption

~12,000 GitHub stars within days of launch (as of March 2026); fresh attention in early April 2026 from the WorldofAI walkthrough.

## Comparison to OpenClaw

Similar scope and interface (both provide multi-chat gateway, sub-agent support, scheduler). The video reframes the comparison sharper than Matthew Berman's earlier coverage:

> "Hermes is all about becoming smarter over time. It's practically the same as OpenClaw, but instead of just executing tasks like OpenClaw, it reflects, learns, and evolves on its own behaviors." — WorldofAI

Hermes adds the GEPA self-improving loop. OpenClaw migration is supported. The trade-off, per [[nate-b-jones|Nate B Jones]]'s earlier framing, is that Hermes inherits some of the same architectural risk profile as OpenClaw — see [[/loop]] + [[OpenBrain]] + MCP for the safer-primitives alternative to both.

## See Also

- [[OpenClaw]] — the framework Hermes is most directly compared to
- [[ThePopeBot]] — the third self-hosted alternative; Docker + GitHub Actions instead of GEPA
- [[/loop]] + [[OpenBrain]] — the primitives-based alternative to all three
- [[autoresearch-evals]] — the conceptual root of GEPA's reflection loop
- [[Paperclip]] — higher-level multi-agent orchestration (company-level vs personal agent)
- [[GStack]] — another open-source Claude Code productivity tool
- [[Multi-Agent Orchestration]] — broader context on coordinating agents
- [[Matthew Berman]], [[WorldofAI]] — sources
- [[summary-matthew-berman-open-source-projects|Source: Open-Source AI Projects (Berman)]]
- [[summary-worldofai-hermes-agent|Source: Hermes Agent (WorldofAI)]]
