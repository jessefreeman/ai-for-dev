---
title: Docker MCP Toolkit — containerized MCP install + secrets vault
summary: Docker shipped an MCP Toolkit extension that solves discovery (curated catalog), security (containerized + secrets vault), and install effort (one-click + auto-wire to clients).
tags: [tool_docker, concept_mcp, source_worldofai_docker_mcp_toolkit]
---

# Docker MCP Toolkit

## Context

From [[summary-worldofai-docker-mcp-toolkit|WorldofAI walkthrough]]. Adjacent entities: [[mcp]], [[docker-model-runner]].

## Content

Docker Desktop ships an **MCP Toolkit** extension that solves the three big pre-existing pain points of the [[mcp|MCP]] ecosystem:

1. **Discovery** — curated catalog of 100+ verified MCP servers (GitHub, MongoDB, Postgres, Slack, Notion, etc.). One-click enable, no manual repo cloning.

2. **Security** — every MCP server runs in its own container with restricted host access. **Credentials stored in Docker's secrets vault**, not in plaintext JSON config in the client. This was a real risk pre-toolkit: pasting tokens into Claude Desktop or Cursor config files.

3. **Install effort** — toolkit auto-wires enabled MCPs into all configured clients simultaneously: Claude Desktop, Cursor, Continue Dev, Gordon, VS Code with Cline. Enable once, available everywhere.

**Recommended must-have MCPs from the demo**:
- **Context7** — live up-to-date documentation injection (works around model knowledge cutoff)
- **Desktop Commander** — file search/edit + terminal commands with codebase-wide context awareness
- **GitHub MCP** — PRs, tags, issues — natural-language git ops

**Sponsor caveat**: video is sponsored by Docker (disclosed). Take the "100x productivity" framing as marketing; the categorical security improvement is genuine.
