---
type: entity
sources: ["I Built a FREE OpenClaw (no Mac Mini or API Fees).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [open-source, agent, autonomous, local-ai, docker]
---

# ThePopeBot

A free, open-source autonomous AI agent by [[Stephen G. Pope]] designed as an [[OpenClaw]] alternative. Runs 24/7 on any computer using free local LLMs via [[Ollama]]. No API fees, no Mac Mini required. All changes tracked via git with optional human approval.

- **GitHub**: https://github.com/stephengpope/thepopebot
- **License**: Open-source
- **Community**: AI Architects on Skool

## Architecture

### Three Docker Containers

1. **Event Handler** — the core bot; starts jobs, receives notifications, processes messages
2. **Reverse Proxy** — handles SSL certificates for remote deployment (Ngrok for local, auto-generated for Digital Ocean)
3. **Runner** — executes jobs via GitHub Actions workflows; scalable to hundreds of parallel agents

### GitHub as Orchestration Layer

All jobs run as GitHub Actions workflows. Benefits:
- **Change approval**: Every agent modification creates a PR — review and approve, or set to auto-merge
- **Full transparency**: Every action, thought process, and code change tracked in git
- **Scalability**: Run locally (faster) or on GitHub's infrastructure (2,000 free hours)
- **Configuration via files**: Heartbeat, cron jobs, secrets, and settings all version-controlled

### Key Features

- **Heartbeat**: Scheduled tasks on configurable intervals (like [[/loop]] but self-hosted)
- **Swarm**: Dashboard showing all running jobs with status, history, and pagination
- **Web chat interface**: Streaming chat UI similar to ChatGPT/Claude
- **API access**: REST API for external integrations (Postman, webhooks)
- **Auto-upgrade**: One-click system updates that rebuild under you
- **Telegram integration**: Optional messaging gateway
- **Brave Search**: Free web search capability
- **Attachments**: PDF and image analysis in chat

### LLM Configuration

Designed for free local models via [[Ollama]], but supports any OpenAI-compatible API. The internal Docker URL for Ollama is provided for containerized setups.

## Compared to OpenClaw

| | [[OpenClaw]] | ThePopeBot |
|---|---|---|
| Cost | API fees + Mac Mini recommended | Free (Ollama + your hardware) |
| LLM | Cloud APIs required | Local models via Ollama (or any API) |
| Change tracking | Limited | Full git history with PR approval |
| Job execution | Internal | GitHub Actions (scalable, free tier) |
| Security | Known vulnerabilities | Changes sandboxed in Docker, approved via git |
| Multi-platform messaging | Telegram, Discord, Slack, WhatsApp, Signal | Web chat + Telegram (more planned) |
| Self-improvement | No | Agent can review its own logs and improve (via heartbeat) |

## Scalability Design

The three Docker containers can run together (simple) or on separate servers (scalable). Multiple cloud servers as runners enable hundreds of parallel agents. Configuration controls auto-merge scope — e.g., auto-merge log-only changes, require review for code changes.

## Roadmap

- More chat platforms (Slack, Discord)
- Skill self-creation examples
- More powerful local GPU setups for running frontier-class models
- Community sharing of agent configurations

## See Also

- [[OpenClaw]] — the framework ThePopeBot is designed to replace
- [[/loop]] — Anthropic's native proactivity (cloud-dependent vs ThePopeBot's self-hosted)
- [[OpenBrain]] — complementary memory layer (ThePopeBot handles proactivity/tools, OpenBrain handles memory)
- [[Paperclip]] — multi-agent orchestration at company level
- [[Stephen G. Pope]] — creator
- [[summary-stephen-g-pope-thepopebot|Source: I Built a FREE OpenClaw]]
