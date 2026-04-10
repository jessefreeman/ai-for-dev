---
type: source-summary
sources: ["Gemma 4 + SearXNG = 100% FREE & PRIVATE OpenClaw (Full Setup).md"]
created: 2026-04-10
updated: 2026-04-10
tags: [video, youtube, openclaw, gemma-4, ollama, searxng, self-hosting, local-ai]
---

# Gemma 4 + SearXNG = 100% FREE & PRIVATE OpenClaw (Full Setup)

**Channel:** [[bart-slodyczka|Bart Slodyczka]]
**Format:** YouTube video
**URL:** https://www.youtube.com/watch?v=T0CKsU0hQx4
**Length:** ~12 minutes
**Published:** 2026-04-06
**Sponsor:** none disclosed

## Summary

Step-by-step guide for running [[openclaw|OpenClaw]] 100% locally and free using [[gemma-4|Gemma 4]] models via [[ollama|Ollama]], plus [[searxng|SearXNG]] as a self-hosted web search provider via Docker. The combination delivers a fully private personal AI agent with no rate limits and no data leaving the device.

## Key Points

- **E4B tool-calling impressed Bart** — he ran the E4B model (mobile-grade, ~9.6 GB on disk) as his OpenClaw daily driver for several days and found it *"very impressed with its ability to do agentic tool calling"* — previously small models would "buckle halfway through" multi-step tasks. OpenClaw's improved backend prompt structure gets more out of smaller models now.
- **26B is Bart's current daily driver** — running the 18 GB version on a 512 GB Mac Studio; also fits comfortably on a 24 GB MacBook Pro. The 256K context window is the sweet spot for sustained OpenClaw conversations.
- **E2B tested for 16 GB machines** — 7.2 GB on disk; viable for 16 GB MacBook Pro users, though the remaining headroom for conversation context is tight.
- **Ollama native integration with OpenClaw** — `openclaw configure` → select Ollama → models auto-detected from `ollama list`. No custom coding. After changing settings, `openclaw gateway restart` to flush.
- **Ollama Cloud offering** — $20/month plan for users on VPS or small devices. Runs large models (Kimi K2.5, GLM 5, MiniMax M2.7) in the cloud. Can also run the Gemma 4 31B with full 256K context via cloud instance.
- **[[searxng|SearXNG]]** — self-hosted meta-search engine running in Docker with native OpenClaw integration. Setup: `docker` pull + one config change (add `json` format to `settings.yaml` under the `formats` section — OpenClaw uses JSON, SearXNG defaults to HTML only). Fully private: no queries leave the machine.
- **First-message latency** — 10–20 seconds for first response after a cold start (loading model into RAM); subsequent responses faster in a warm conversation.
- **Claude Code as setup assistant** — Bart suggests spinning up a Claude Code terminal instance to read your OpenClaw + Docker configs and auto-configure SearXNG, rather than doing the YAML editing manually.

## Sponsorship & Bias Notes

**Sponsor:** none disclosed.
**Product placement / affiliations:** Bart mentions Ollama Cloud ($20/mo) as an option but doesn't appear to have an affiliate relationship. None observed.
**Comparison bias:** none observed.

## Connected Pages

- [[openclaw]] — the framework being configured
- [[gemma-4]] — the model family; E4B tool-calling data point is new
- [[ollama]] — local model runner + cloud offering
- [[searxng]] — self-hosted search engine (new entity)
- [[self-hostable-alternatives]] — SearXNG belongs on the map
- [[bart-slodyczka]] — author

## See Also

- [[summary-nate-herk-ollama-claude-code|Ollama + Claude Code]] — related Ollama setup content
- [[summary-matthew-berman-gemma4|Google Drops Gemma 4]] — the model announcement
