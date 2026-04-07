---
type: source-summary
sources: ["I Built a FREE OpenClaw (no Mac Mini or API Fees).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [source, video, agent, open-source, docker, local-ai]
---

# I Built a FREE OpenClaw (no Mac Mini or API Fees)

**Source**: YouTube — [[Stephen G. Pope]], published 2026-02-22
**Link**: https://www.youtube.com/watch?v=8uP2IrP3IG8

## Summary

Stephen G. Pope walks through ThePopeBot, his free open-source autonomous AI agent designed as an OpenClaw replacement. The architecture is notable: Docker containers for isolation, GitHub Actions for scalable job execution, Ollama for free local LLMs, and git-based change approval for every agent action. The creator demo covers the full setup process (one-step install, ~15 min) and the architectural decisions behind scalability and security.

See [[ThePopeBot]] for the full entity page with architecture details and OpenClaw comparison.

## Key Architectural Decisions

- **GitHub as orchestration**: All jobs are GitHub Actions workflows — free, scalable, transparent, version-controlled
- **Change approval via PRs**: Agent modifications create PRs; human approves or auto-merges based on scope rules
- **Docker isolation**: Three containers (event handler, reverse proxy, runner) — can run together or distributed
- **Ngrok for local**: Free tunneling for home computers behind firewalls
- **Self-improvement via heartbeat**: Agent can review its own logs and suggest improvements

## Pages Created or Updated

- [[ThePopeBot]] — new
- [[Stephen G. Pope]] — new

## See Also

- [[OpenClaw]] — what ThePopeBot replaces
- [[/loop]] — Anthropic's native approach (cloud-dependent)
- [[OpenBrain]] — complementary memory layer
