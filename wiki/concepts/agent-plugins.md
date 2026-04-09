---
type: concept
sources: ["The Only Claude Skills You Need in 2026.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [concept, plugins, skills, mcp, claude-code, ecosystem]
---

# Agent Plugins

The canonical wiki index for **anything you have to install to extend an AI coding agent**: Claude skills, MCP servers, skill packs, parallel-agent runners, sandboxing layers, browser controllers, research loops, and visual pipeline builders. The user's working definition: *"if you have to install it, it's a plugin in my book."*

This page exists to keep the plugin ecosystem **navigable** as it grows. The wiki has tracked individual plugins one source at a time since the beginning ([[context7]], [[superpowers]], [[gstack]], [[task-master-ai]], [[n8n]], [[remotion]]); as of [[summary-dubibubii-claude-skills-2026|the 2026-04-08 Dubibubii ingest]], the plugin layer is dense enough to deserve its own index. There are reportedly 500,000+ Claude skills published; the wiki tracks the small subset that has appeared in primary sources, plus anything the user has actually run.

## How to read the table

- **Type** — `skill` (Claude skill / markdown spec), `skill-pack` (collection of related skills), `MCP` (MCP server), `CLI` (standalone CLI tool), `repo` (research loop or template you clone), `visual-builder` (drag-and-drop pipeline editor)
- **Platforms** — where the plugin runs. "Any MCP host" = Claude Code, Cursor, Cline, Windsurf, anything that speaks MCP.
- **Status** — the user's flag system:
  - `tracked` — logged from a source, no action expected
  - `try` — flagged for hands-on evaluation; surfaces in [[tasks]]
  - `tried` — user has run it; notes live on the plugin's own page
  - `recommended` — user actively recommends to others
  - `skip` — user evaluated and rejected; one-line reason on the page so we don't re-evaluate

## The index

| Plugin | Type | Platforms | What it does | Status |
|---|---|---|---|---|
| [[frontend-design-skill]] | skill | Claude Code | Bans generic fonts (Inter/Roboto/Arial), forces design direction before code | tracked |
| [[superpowers]] | skill-pack | Claude Code | TDD enforcement; deletes code written before tests; 20+ sub-skills | tracked |
| [[autoresearch]] | repo | model-agnostic | Karpathy's overnight research-loop pattern (give a goal, iterate until morning) | tracked |
| [[context7]] | MCP | any MCP host | Curated current docs for 1,856+ frameworks; fixes API hallucination | tracked |
| [[gstack]] | skill-pack | Claude Code | Garry Tan's 15 opinionated prompts (CEO/designer/EM/release roles) | tracked |
| [[task-master-ai]] | MCP | Cursor, Claude Code, Codex, any MCP host | PRD → structured task tree with dependencies; 36 MCP tools | tracked |
| [[playwright-mcp]] | MCP | any MCP host | Microsoft's browser-control MCP (click, fill, scrape, screenshot) | tracked |
| [[tavily]] | MCP | any MCP host | AI-native search engine: search/extract/crawl/map | tracked |
| [[codebase-memory-mcp]] | MCP | any MCP host | Persistent knowledge graph of your codebase across sessions | tracked |
| [[pdf-processing-skill]] | skill | Claude Code | Read/extract tables/fill forms/merge/split PDFs | tracked |
| [[xlsx-skill]] | skill | Claude Code | Excel formulas/charts/analysis from natural language | tracked |
| [[pptx-skill]] | skill | Claude Code | Slide decks (layouts, charts, speaker notes) from prompts | tracked |
| [[doc-co-authoring-skill]] | skill | Claude Code | Collaborative back-and-forth document editing | tracked |
| [[canvas-design-skill]] | skill | Claude Code | Social graphics, posters, covers (PNG/PDF out) | tracked |
| [[web-artifacts-builder-skill]] | skill | Claude Code | Calculators, dashboards, interactive widgets from prompts | tracked |
| [[marketing-skills-pack]] | skill-pack | Claude Code | Corey Haines's 20+ marketing sub-skills (CRO/SEO/copy/email/growth) | tracked |
| [[claude-seo-skill]] | skill | Claude Code | Site audit + schema validation; 12 sub-skills | tracked |
| [[brand-guidelines-skill]] | skill | Claude Code | Encodes brand voice/colors/tone; auto-applies to outputs | tracked |
| [[deep-research-skill]] | skill | Claude Code | 8-phase research pipeline with source credibility scoring | tracked |
| [[gpt-researcher]] | repo | model-agnostic | Autonomous research agent → full report (works with any model) | tracked |
| [[obsidian-skills-pack]] | skill-pack | Claude Code + Obsidian | Auto-tagging, auto-linking, vault-native AI for [[obsidian]] | **try** |
| [[remotion]] | CLI | standalone | Programmatic video rendering (motion graphics from code) | tracked |
| [[context-optimization-skill]] | skill | Claude Code | KV-cache tricks + context efficiency to cut token spend | tracked |
| [[promptfoo]] | CLI | model-agnostic | Prompt red-teaming, edge-case + injection testing | tracked |
| [[skill-creator-skill]] | skill | Claude Code | Anthropic-official meta-skill: generates skill files from plain English | tracked |
| [[n8n]] | visual-builder | self-hosted | Workflow automation w/ AI nodes; 400+ integrations | tracked |
| [[firecrawl]] | CLI | model-agnostic | URL → LLM-ready markdown; passed Scrapy in stars | tracked |
| [[langflow]] | visual-builder | self-hosted | Drag-and-drop AI agent pipeline builder (DataStax) | tracked |
| [[claude-squad]] | CLI | Claude Code, Codex, Aider | Run multiple coding agents in parallel terminal sessions | tracked |
| [[container-use]] | CLI | model-agnostic | Dagger's containerized agent sandboxing (per-agent isolated env) | tracked |
| [[ghost-os]] | CLI | macOS | AI agent that can drive every app on your Mac | tracked |
| [[skills-sh]] | repo | Claude Code | Community skills format (existing wiki entry) | tracked |

## Marketplaces and curated lists

These are not plugins themselves — they're where you go to find plugins:

- **[[awesome-claude-skills]]** — Travis Vian's curated list, 95K stars, the best community-maintained index
- **Anthropic official skills repo** — 100K+ stars; the reference implementation for skill format
- **SkillsMP** — largest catalog (500K+ skills); quality varies wildly
- **SkillHub** — 30K+ skills with AI-generated quality ratings
- **Maggie archive** — daily-updated feed of fresh AI repos

## How to extend this page

When a new ingest mentions a plugin:

1. **Already in the table?** Update the row's status if the user's posture changed; add the new source to the plugin's own page.
2. **New plugin, fits the wiki's scope?** Add a row + create a dedicated page in `wiki/open-source/<slug>.md` (or `wiki/tools/<slug>.md` if commercial / hosted). Even thin pages get created — they exist as containers for hands-on notes when the user actually runs the plugin. This is the explicit promotion rule for plugins, and it overrides the general "no stub pages from training data" rule because plugin pages are *intended* to grow from use, not from sources alone.
3. **Same plugin, new platform support?** Update the Platforms column.
4. **Status changes** flow in both directions: if the user marks a row `try`, mirror a one-line nudge into [[tasks]] under the rolling "review agent plugins" task. When the user marks it `tried` / `recommended` / `skip`, delete the corresponding nudge.
5. **Deprecated plugin?** Strike-through the row; keep the page (for the historical record); add a "Deprecated" section to the page with the date and reason.

## Connections

- **[[claude-code]]** — the primary host for most entries here
- **[[mcp]]** — the protocol that powers the MCP-typed entries
- **[[ai-personal-agent-hardening]]** — [[promptfoo]] (offensive testing for defenders) and [[container-use]] (sandboxing for the human-in-loop quarantine rule) both slot into the defensive cluster
- **[[multi-agent-orchestration]]** — [[claude-squad]] is the parallel-agent primitive
- **[[llm-design-patterns]]** — sibling concept page; design patterns are *how* to think, plugins are *what* to install
- **[[agentic-harness-primitives]]** — the underlying architecture most of these plugins hook into

## See Also

- [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] — the seeding source
- [[tasks]] — where the `try`-status nudge lives
