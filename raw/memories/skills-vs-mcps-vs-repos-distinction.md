---
title: Skills vs MCPs vs repos — Dubibubii's distinction
summary: The cleanest one-line distinction in the wiki for the three categories of Claude Code extensions.
tags: [concept_agent_plugins, source_dubibubii_claude_skills_2026, tool_claude_code]
---

# Skills vs MCPs vs repos

## Context

From [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08). Cited as the cleanest formulation in the source. See [[agent-plugins]] for the wiki's index built on this distinction.

## Content

> *"Skills improve Claude, MCPs connect Claude, repos host the tools."*

- **Skills** = upgrades for Claude Code that change how it does specific tasks. Markdown specs the agent loads. They modify behavior (e.g. `frontend-design` bans certain fonts and forces design choices; `superpowers` enforces TDD).
- **MCPs** = connectors that let Claude reach outside tools and live data. Browsers, files, apps, the internet, search engines, knowledge graphs. The protocol layer.
- **Repos** = GitHub projects that host tools or patterns. The source code or install files behind everything else.

The distinction matters when picking what to install: a skill changes how the agent thinks; an MCP changes what it can reach; a repo is the underlying artifact. Most "plugin" recommendations conflate the three; this framing keeps them separate.
