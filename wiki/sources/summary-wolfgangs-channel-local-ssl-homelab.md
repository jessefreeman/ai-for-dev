---
type: source-summary
sources: ["Quick and Easy Local SSL Certificates for Your Homelab!.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, self-hosting, ssl, nginx-proxy-manager, lets-encrypt]
---

# Quick and Easy Local SSL Certificates for Your Homelab

**Source**: YouTube — [[wolfgangs-channel|Wolfgang's Channel]], published 2023-05-15
**Tools**: Nginx Proxy Manager, Let's Encrypt (DNS-01 challenge), Cloudflare / Namecheap / DuckDNS, Docker

## Summary

[[wolfgangs-channel|Wolfgang]] walks through getting **valid Let's Encrypt SSL certificates** on a fully-local homelab without exposing services to the public internet. Uses **Nginx Proxy Manager** (Docker container with built-in Let's Encrypt support) and the **DNS-01 challenge** (rather than HTTP-01) so the certificate authority validates via a DNS TXT record instead of an inbound HTTP connection. This means **services on private IPs can get real SSL** — including wildcard certificates that cover every subdomain at once. Discusses domain options (free **DuckDNS** vs paid **Namecheap** at ~$0.90 registration / $5-10/year renewal) and the typical Docker stack of three services on the same internal network.

## Why this is in scope (per CLAUDE.md)

Borderline call. The video is generic homelab content (Plex, Sonarr, Home Assistant, Nextcloud, Jellyfin), but the **same setup is the standard pattern for self-hosting [[open-webui|Open WebUI]], [[n8n]], [[supabase|Supabase]], [[dify|Dify]], or any other AI tool** the wiki tracks behind a real domain with valid SSL. CLAUDE.md scope explicitly extends to "self-hosting infrastructure" when it materially affects AI capacity. SSL is the difference between "I can run this" and "I can run this and access it from my phone over the public internet without being yelled at by Chrome." Pairs naturally with the [[summary-networkchuck-open-webui-domain-ssl|NetworkChuck Open WebUI domain + SSL guide]] from this same batch.

## Key facts

- **Reverse proxy**: Nginx Proxy Manager (NPM), Docker container, built-in Let's Encrypt automation
- **DNS-01 vs HTTP-01**: DNS-01 validates via DNS TXT record, doesn't need port exposure, supports private IPs and **wildcard certs** (`*.domain.local`)
- **Free domain**: DuckDNS
- **Cheap domain**: Namecheap, ~$0.90 first-year registration, $5-10/year renewal
- **Wildcard certificate**: one cert covers all subdomains under a base domain
- **Propagation**: NPM defaults to 30s wait; bump to 120s+ if your DNS provider is slow

## See Also

- [[wolfgangs-channel|Wolfgang's Channel]]
- [[summary-networkchuck-open-webui-domain-ssl|NetworkChuck: Open WebUI + Domain + SSL]] — sibling guide using Cloudflare DNS instead of DuckDNS/Namecheap
- [[open-webui|Open WebUI]] — primary AI use case in the wiki
- [[self-hostable-alternatives|Self-Hostable Alternatives]]
