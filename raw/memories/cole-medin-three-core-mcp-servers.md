---
title: Three Core MCP Servers for Any AI Coding IDE
summary: Filesystem, Brave Search, and git are Cole Medin's three default MCP servers — reach outside the project, fetch live docs, commit at known-good states for revert safety.
tags: [person_cole_medin, concept_mcp, tool_claude_code, tool_cursor, topic_coding_workflow, source_cole_medin_100x_ai_coding]
---

# Three Core MCP Servers for Any AI Coding IDE

## Context

From [[summary-cole-medin-100x-ai-coding|Cole Medin's full AI coding process]]. See also [[mcp]], [[ai-coding-workflow]].

## Content

The three [[mcp|MCP]] servers Cole sets up on every project, regardless of stack:

1. **Filesystem** — agent can reach outside the current project to other folders (asset libraries, prior projects, image directories). Lets it pull from sources you've already organized.
2. **Brave Search** — live web search with AI-summarized results. Use for fetching documentation, library examples, and framework references at the start of new feature work. (The AI summary makes Brave specifically valuable vs raw search.)
3. **Git** — version control via MCP. **Critical for safety**: ask the agent to commit at known-good states so you can revert when it breaks something five prompts later. Without git commits, you can end up "in a state of hell" where you can't go back.

Optional add-ons: Quadrant for long-term agent memory (or use IDE-native memories); Archon (Cole's own AI agent builder).
