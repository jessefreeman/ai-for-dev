---
title: Agent Plugins index page shape
summary: Schema and conventions for the wiki's canonical plugin index — rows + platforms + status, with per-plugin pages for hands-on notes.
tags: [concept_agent_plugins, source_dubibubii_claude_skills_2026, topic_methodology]
---

# Agent Plugins index page shape

## Context

From [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08). Methodology decision codified in [[agent-plugins]] page footer.

## Content

The wiki tracks installable plugins (Claude skills, MCP servers, skill packs, sandboxing, parallel agent runners, OSS coding-agent extensions) on a single canonical index page: `wiki/concepts/agent-plugins.md`.

**Index row schema:**
- **Plugin** (wikilink to dedicated page)
- **Type**: skill / skill-pack / MCP / CLI / repo / visual-builder
- **Platforms**: where it runs ("Claude Code", "any MCP host", "self-hosted", "macOS", etc.)
- **What it does** (one phrase)
- **Status**: `tracked` / `try` / `tried` / `recommended` / `skip`

**Promotion rule** (carve-out from the wiki's general "no stub pages from training data" rule): every plugin gets its own dedicated page even when thin. Per-plugin pages exist as **containers for hands-on notes** when the user actually runs the plugin — not as derived-from-source summaries. This is why the rule is scoped to plugins: their value is realized at use-time, not ingest-time.

**Status flag mechanics:**
- `try` mirrors a one-line nudge into `wiki/tasks.md` under the rolling "review agent plugins" task
- `tried` / `recommended` / `skip` deletes that nudge and updates the plugin's own page with hands-on notes
- The single rolling task replaces per-plugin tasks to keep `tasks.md` under its 15-cap

**Page name rationale:** chose `agent-plugins` over `claude-skills` (too narrow / vendor-locked) and `plugins` (ambiguous). Broad enough to age across vendors, specific enough to be useful as an SEO surface.
