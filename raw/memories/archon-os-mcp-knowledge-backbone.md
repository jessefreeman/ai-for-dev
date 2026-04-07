---
title: Archon OS — MCP Knowledge + Task Backbone for AI Coding Agents
summary: Cole Medin's Archon OS exposes a unified knowledge base and editable real-time task list over MCP, so any AI coding agent (Claude Code, Cursor, Kira) can plug in and share context without per-session re-loading.
tags: [tool_archon_os, tool_mcp, person_cole_medin, topic_ai_coding_workflow, source_worldofai_archon_os]
---

# Archon OS — MCP Knowledge + Task Backbone for AI Coding Agents

## Context

From [[summary-worldofai-archon-os|WorldofAI's Archon OS walkthrough]]. See also [[archon-os]].

## Content

**What it is**: Cole Medin's repositioning of his earlier Archon agent builder into the **first-ever AI Operating System for AI coding** — a hosted command center that exposes unified knowledge + task management over MCP. Any AI coding agent ([[claude-code|Claude Code]], [[cursor|Cursor]], Kira) connects via MCP and inherits the shared context.

**Architecture**: microservices in Docker — Server (core API), MCP server (agent surface), Agents service ("coming soon"), UI. Stack: Docker + Supabase + your choice of model provider.

**The standout feature**: **real-time editable task lists**. The video shows a LangGraph news aggregation agent with its full task list rendered live in Archon's UI. You can edit individual tasks while the agent is running, and the agent picks up the edits on the next iteration.

**Knowledge base workflow**: ingest URLs (recursive crawl), codebases, business projects, single pages. All connected agents query it via MCP. Cole frames this as **"similar to Context7 but better"** — the architectural answer to "how do I keep my agents on the latest framework docs without manual context-feeding."

**Setup**: clone `coleam00/Archon`, fill Supabase URL + provider keys in `.env`, run a Supabase migration SQL, `docker compose up`. Connect coding agents via the MCP Server tab — copy a JSON config snippet into your agent's config.

**Where it fits**: Archon OS is the **heavyweight** version of Cole's earlier [[ai-coding-workflow|PLANNING.md/TASK.md pattern]]. Same goal (persistent project context for coding agents), heavier infrastructure (microservices vs two markdown files).
