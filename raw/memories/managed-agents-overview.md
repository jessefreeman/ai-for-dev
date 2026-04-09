---
title: Anthropic Managed Agents — overview
summary: Anthropic's hosted agent runtime; third primary surface alongside Claude.ai and Claude Code; launched April 2026.
tags: [tool_managed_agents, person_nate_herk, topic_anthropic, source_nate_herk_managed_agents]
---

# Anthropic Managed Agents — overview

## Context

From [[summary-nate-herk-managed-agents|I Tested Claude's New Managed Agents]]. See also [[managed-agents]], [[anthropic]], [[claude-code]].

## Content

Managed Agents is a hosted agent runtime at `console.anthropic.com`, launched April 2026. Users define an agent (name, system prompt, model, MCP servers, tools, skills) and run it inside Anthropic-hosted **environments** (cloud sandboxes with pre-installed packages and configurable networking). Two creation paths: pick a template, or chat-build from a goal description.

The same tool surface as Claude Code (Bash/Read/Glob/Grep/web search/fetch). Authentication to external services (ClickUp, Notion, etc.) uses an OAuth-style flow via MCP, with credentials stored in a team-shareable **vault**. Notion is a launch partner with a "drag task to status column → Claude picks it up" pattern.

Positioned as the third Anthropic surface: Claude.ai (chat for end users), Claude Code (CLI for developers), Managed Agents (hosted runtime for users who want production agents without infra work). Marketing pitch: *"build and deploy production agents 10× faster."*
