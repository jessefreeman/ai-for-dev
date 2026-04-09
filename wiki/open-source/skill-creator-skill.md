---
type: entity
sources: ["The Only Claude Skills You Need in 2026.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, claude-code, skill, meta, plugin, anthropic-official]
---

# Skill Creator Skill

Anthropic-official **meta-skill**: describe a workflow in plain English, and it generates a Claude skill file for you. The fastest documented path to building custom skills without learning the skill file format yourself.

## What it does

1. User describes the workflow in natural language
2. Skill Creator generates the underlying skill markdown file
3. Resulting skill is immediately usable in Claude Code

## Why it matters in the wiki

This is the wiki's first **plugin that builds plugins** — a primitive worth tracking on its own because it lowers the floor for the plugin ecosystem. Instead of 500K skills built by the few people who understand the skill format, the population of skill authors expands to anyone who can describe a workflow.

Connects conceptually to the wiki's own [[llm-wiki-pattern]] thread: the methodology layer (rules + templates + prompts) is closer to a "skill" than to code. A meta-skill that generates skills is structurally similar to the wiki's customize-template prompt.

## Type and platform

- **Type:** skill (Anthropic-official, meta)
- **Platforms:** [[claude-code|Claude Code]]
- **Status:** tracked

## Hands-on notes

*(empty)*

## Sources

- [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08)

## See Also

- [[agent-plugins]]
- [[llm-wiki-pattern]]
