---
type: entity
sources: ["Gemma 4 + SearXNG = 100% FREE & PRIVATE OpenClaw (Full Setup).md"]
created: 2026-04-10
updated: 2026-04-10
tags: [open-source, self-hosting, search, privacy, docker]
---

# SearXNG

Self-hosted, privacy-respecting **meta-search engine** that aggregates results from multiple search providers without tracking queries. Runs as a Docker container. The wiki's first self-hosted web search entry — the self-hostable alternative to paid search APIs (Google Custom Search, Bing Search API, Tavily, Brave Search API).

- **GitHub**: [searxng/searxng](https://github.com/searxng/searxng)
- **License**: AGPL-3.0
- **Deployment**: Docker (single container)

## Why It Matters for AI Agents

AI agents that need web search typically rely on paid APIs (Tavily, Brave, Google). SearXNG provides **free, unlimited, private web search** with no API key and no rate limits. Per [[bart-slodyczka|Bart Slodyczka]]'s [[summary-bart-slodyczka-gemma4-searxng-openclaw|setup guide]], it has a native integration with [[openclaw|OpenClaw]], making it a drop-in replacement for paid search providers.

## Setup with OpenClaw

1. Pull the Docker image (one command from OpenClaw docs)
2. **Critical config change**: SearXNG defaults to HTML format; OpenClaw requires JSON. Edit `settings.yaml` inside the Docker container (`/etc/searxng/settings.yaml`), find the `formats` section, add `- json` alongside `- html`
3. Restart the container
4. Configure OpenClaw via `openclaw configure` or CLI command to point at the local SearXNG instance

## How It Works

SearXNG is a **meta-search engine** — it doesn't crawl the web itself. It sends your query to multiple upstream search engines (Google, Bing, DuckDuckGo, etc.) and aggregates the results. The upstream engines see a request from your server, not your identity. Your queries never leave your machine in identifiable form.

## See Also

- [[openclaw]] — native integration
- [[ollama]] — paired for a fully local AI stack
- [[self-hostable-alternatives]] — SearXNG fills the "web search" row
- [[summary-bart-slodyczka-gemma4-searxng-openclaw|Source: Gemma 4 + SearXNG + OpenClaw]]
