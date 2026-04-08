---
type: source-summary
sources: ["Codename Goose Fully FREE AI Software Engineer Can DO Anything! Opensource Claude Code Alternative!.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, ai-coding, open-source, claude-code-alternative, mcp]
---

# Codename Goose: FREE AI Software Engineer & Claude Code Alternative

**Source**: YouTube — [[worldofai|WorldofAI]], published 2025-06-10
**Tool covered**: [[codename-goose|Codename Goose]]

## Summary

Walkthrough of [[codename-goose|Codename Goose]] (`block/goose`), Block's open-source AI software engineer. Positioned as a free [[claude-code|Claude Code]] alternative: TUI + desktop app, codebase understanding, refactoring, debugging, deployment — bring your own model. Works with Anthropic, OpenAI, Mistral, Ollama, and (notably) DeepSeek R1 via free OpenRouter API. Demoed building a task manager and todo app autonomously, including dark mode, priorities, and tabs.

## What it is

- **Vendor**: Block (the Square / Cash App / Tidal parent)
- **Repo**: github.com/block/goose
- **License**: open-source (Apache 2.0)
- **Surface**: TUI (CLI) + desktop app (Mac; Linux/Windows in progress at time of source)
- **Models**: Claude, GPT-4, Mistral, **Ollama (local)**, **DeepSeek R1 via OpenRouter free tier**
- **Extension**: extensions, plain APIs, **MCP servers**

## Demo

- Built a task manager with components (drag-drop, priorities, dark mode)
- Built a todo list app with tabs
- Both fully autonomous from the prompt; Goose handled codebase analysis, multi-component changes, and basic testing

## Why it matters

Goose is the cleanest "free Claude Code" entry in the wiki. Unlike [[cline|Cline]] (extension), [[opencode|OpenCode]] (terminal), or [[void-ide|Void IDE]] (full editor), Goose ships **both** a TUI and a desktop app, and is **vendor-backed by Block** (which matters for longevity vs solo-maintained alternatives).

The DeepSeek R1 + OpenRouter free-tier combination is the "$0 Claude Code" recipe — pairs naturally with [[summary-deepseek-r1-0528-reasoning-model|the R1-0528 release]] (also in this batch).

## Position in the open-source coding-tool cluster

| Tool | Surface | Backed by |
|---|---|---|
| [[cline]] | VS Code extension | Cline Labs |
| [[opencode]] | Terminal | SST |
| [[void-ide]] | Full editor (Electron) | Void team |
| [[continue]] | VS Code/JetBrains extension | Continue.dev |
| **Goose** | TUI + desktop app | **Block** |

## See Also

- [[codename-goose|Codename Goose]]
- [[claude-code|Claude Code]] — the commercial alternative it replaces
- [[self-hostable-alternatives|Self-Hostable Alternatives]]
- [[deepseek|DeepSeek]] R1 + [[openrouter|OpenRouter]] — the $0 model combo
- [[worldofai|WorldofAI]]
