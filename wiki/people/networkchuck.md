---
type: entity
sources: ["Turn Open WebUI into a real website (Domain + SSL).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [person, youtuber, networking, self-hosting, homelab]
---

# NetworkChuck

YouTube creator focused on **networking, self-hosting, and homelab tutorials**. Long-running channel; the wiki tracks NetworkChuck because his deployment guides for self-hosted services (especially the Cloudflare DNS + Nginx Proxy Manager + Let's Encrypt pattern) are the most-recommended path for turning a localhost AI tool into a real internet-accessible service.

## Channels

- **YouTube**: NetworkChuck — networking, Linux, Docker, self-hosting tutorials

## Content in This Wiki

- [[summary-networkchuck-open-webui-domain-ssl|Turn Open WebUI into a Real Website (Domain + SSL)]] (2025-03-13) — full Cloudflare + Nginx Proxy Manager + Let's Encrypt deployment guide for [[open-webui|Open WebUI]]; the wiki's canonical recipe for exposing a self-hosted AI dashboard at a real domain with valid HTTPS.

## Key Ideas

- **Cloudflare DNS as the default registrar / nameserver** for self-hosted services — cheap, fast, includes the API needed for Let's Encrypt DNS-01 challenges
- **Nginx Proxy Manager + Let's Encrypt** is the simplest path to valid SSL on private IPs; turns localhost services into real domain-fronted products
- **Subdomain-per-service** is the cleanest pattern (`ai.domain.com` for Open WebUI, etc.) — pairs with wildcard certs

## See Also

- [[open-webui|Open WebUI]]
- [[wolfgangs-channel|Wolfgang's Channel]] — sibling self-hosting / homelab voice
- [[self-hostable-alternatives|Self-Hostable Alternatives]]
