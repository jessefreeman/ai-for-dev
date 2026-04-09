---
title: Managed Agents CLI integration — credential leak risk
summary: Building Managed Agents from inside Claude Code via the anthropic CLI may default to embedding plaintext API keys in the agent's system prompt instead of using MCP OAuth.
tags: [tool_managed_agents, tool_claude_code, topic_security, concept_credential_management, source_nate_herk_managed_agents]
---

# Managed Agents CLI — credential leak risk

## Context

From [[summary-nate-herk-managed-agents|I Tested Claude's New Managed Agents]]. See also [[managed-agents]], [[claude-code]], [[mcp]].

## Content

The `anthropic` CLI lets you build a Managed Agent from inside [[claude-code|Claude Code]] using the project's existing context (CLAUDE.md, codebase, project goals). Two patterns this enables:

1. **Frontend-for-managed-agent** — Claude Code builds a UI that calls a Managed Agent endpoint for the actual work, keeping local context windows lean.
2. **Sub-agent-as-API** — Instead of co-locating sub-agents in `agents/` (where they eat context), point Claude Code at API endpoints for each one.

**Credential warning**: when building agents from the CLI, the tooling may default to embedding plaintext API keys in the system prompt rather than using the MCP OAuth flow. The system prompt is then visible to anyone with vault access *and* stored permanently in Anthropic's conversation history. When building inside the web console, the default is MCP servers (safer).

Mitigation: prefer MCP OAuth flows where possible; never let CLI tooling paste raw secrets into the agent definition. Audit the generated system prompt before saving the agent.
