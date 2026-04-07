---
type: source-summary
sources: ["NEW MCP Toolkit Is Insane! Ultimate MCP Setup For AI Coding Assistants Will 10x Your Productivity!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, docker, mcp]
---

# Docker MCP Toolkit

**Author / channel:** [[worldofai|WorldofAI]]
**Format:** video
**Source:** [Original](../../raw/archive/NEW%20MCP%20Toolkit%20Is%20Insane%21%20Ultimate%20MCP%20Setup%20For%20AI%20Coding%20Assistants%20Will%2010x%20Your%20Productivity%21.md)
**Published:** 2025-06-14
**Sponsor:** Docker (disclosed)

## Summary

Docker shipped an MCP Toolkit extension for Docker Desktop that solves the three big pain points of the [[mcp|MCP]] ecosystem: **discovery** (curated catalog of 100+ verified servers), **security** (containerized isolation, secrets vault, no plaintext credentials in client config), and **install effort** (one-click enable + auto-wire to clients like Claude Desktop, Cursor, Continue, Gordon). Demos the GitHub MCP installed in 2 clicks and used from Cursor to create a repo. Recommends Context7 (live docs) and Desktop Commander (file/terminal ops) as must-have MCPs.

## Key Points

- **The ecosystem problem** — pre-toolkit MCP install was: clone repo, install deps, configure secrets in plaintext JSON, no audit logs, no policy enforcement, no provenance. Toolkit solves all of this.
- **Containerized isolation** — every MCP server runs in its own container with restricted host access. Credentials stored in Docker's secrets vault, not in the client config file.
- **Curated catalog** — 100+ verified MCP servers in the Docker MCP Catalog. GitHub, MongoDB, PostgreSQL, Slack, Notion, etc. One-click enable.
- **Client integration** — toolkit auto-wires enabled MCPs into Claude Desktop, Cursor, Continue Dev, Gordon, VS Code with Cline. The same enabled MCP is exposed to all configured clients simultaneously.
- **Recommended MCPs from the demo**:
  - **Context7** — live up-to-date documentation injection (works around model knowledge cutoff)
  - **Desktop Commander** — file search/edit + terminal commands with codebase-wide context awareness
  - **GitHub MCP** — PRs, tags, issues — natural-language git ops

## Sponsorship & Bias Notes

Sponsored by Docker — disclosed openly. The toolkit is genuinely useful and the security framing is accurate (the prior model of pasting tokens into JSON config was a real risk). Take the "100x productivity" framing with the usual skepticism; the categorical improvement is real, the multiplier is marketing.

## Connected Pages

- [[mcp]] — toolkit is the canonical install/distribution layer for MCP
- [[docker-model-runner]] — sibling Docker AI initiative
- [[claude-code]], [[cursor]], [[continue]], [[cline]] — supported clients
- [[worldofai|WorldofAI]] — channel hub
