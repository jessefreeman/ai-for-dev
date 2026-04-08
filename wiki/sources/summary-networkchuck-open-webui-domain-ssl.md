---
type: source-summary
sources: ["Turn Open WebUI into a real website (Domain + SSL).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, open-webui, self-hosting, ssl, nginx-proxy-manager, cloudflare]
---

# Turn Open WebUI into a Real Website (Domain + SSL)

**Source**: YouTube — [[networkchuck|NetworkChuck]], published 2025-03-13
**Tools**: [[open-webui|Open WebUI]], Nginx Proxy Manager, Cloudflare DNS, Let's Encrypt

## Summary

[[networkchuck|NetworkChuck]] walks through deploying [[open-webui|Open WebUI]] behind a **real domain with valid SSL**, accessible from anywhere — not just localhost. Uses **Cloudflare DNS** (free to register or transfer to) + **Nginx Proxy Manager** (Docker) + Let's Encrypt. The result: a self-hosted ChatGPT-style local AI dashboard at something like `ai.yourdomain.com` instead of `localhost:3000`, with valid HTTPS so browsers don't yell at you.

## The setup

```
Your domain (Cloudflare DNS)
   ↓
Nginx Proxy Manager (Docker, with Let's Encrypt)
   ↓
Open WebUI container (your AI chat UI)
   ↓
Ollama / Docker Model Runner (the actual model)
```

## Key facts

- **Domain registration**: Cloudflare directly (~$1-10/yr) OR existing registrar with nameservers pointed to Cloudflare
- **DNS records**: A record at `@` + wildcard at `*` for subdomains, both pointing at the host's public IP
- **Reverse proxy**: Nginx Proxy Manager (Docker); add a proxy host with protocol, forward host/IP, port
- **SSL**: Let's Encrypt via NPM's built-in integration (DNS-01 challenge through Cloudflare API)
- **Result**: Open WebUI accessible at `ai.<yourdomain>.com` over real HTTPS

## Why it matters

This is the **wiki's canonical "expose your local AI dashboard properly" recipe**. Until this source, the wiki had Open WebUI as a `localhost` tool — useful for the developer who installed it, useless for a household or team that wants to share. This recipe turns Open WebUI into a real product surface that anyone in the family or team can use from any device, including a phone on cellular.

Pairs with [[summary-wolfgangs-channel-local-ssl-homelab|Wolfgang's homelab SSL guide]] from this same batch — both teach the same Nginx Proxy Manager + Let's Encrypt pattern, but Wolfgang frames it generally (Plex, Sonarr, etc.) and NetworkChuck frames it specifically for Open WebUI. Together they cover the full path from "I have a Docker container on my laptop" to "I have a real AI service my family uses."

## See Also

- [[networkchuck|NetworkChuck]]
- [[open-webui|Open WebUI]]
- [[summary-wolfgangs-channel-local-ssl-homelab|Wolfgang: Local SSL for Homelab]] — sibling guide
- [[ollama|Ollama]] / [[docker-model-runner|Docker Model Runner]] — the local model runtime behind Open WebUI
- [[self-hostable-alternatives|Self-Hostable Alternatives]]
