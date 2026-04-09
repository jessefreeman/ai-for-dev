---
type: entity
sources: ["The Only Claude Skills You Need in 2026.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, mcp, browser-automation, microsoft, plugin]
---

# Playwright MCP

Microsoft's browser-control MCP server. Gives any MCP-speaking agent the ability to drive a real browser: click buttons, fill forms, navigate pages, take screenshots.

## What it does

Wraps Microsoft's [Playwright](https://playwright.dev) browser automation library as an MCP server. Once connected, the agent can use the web like a human. Use cases listed in the source: automated testing, web scraping, form filling, monitoring competitors. The community example in the source: someone wired it up to summarize their App Store reviews every morning.

## Type and platform

- **Type:** MCP
- **Platforms:** any MCP host (Claude Code, Cursor, Cline, Windsurf)
- **Status:** tracked

## Position vs related tools

- **vs [[stagehand]]** — Stagehand is a higher-level browser-agent framework with its own runtime ([[browserbase|Browserbase]]); Playwright MCP is the lower-level "give the agent raw browser control" primitive.
- **vs [[ghost-os]]** — Ghost OS controls native macOS apps; Playwright MCP is browser-only but cross-platform.

## Hands-on notes

*(empty)*

## Sources

- [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08)

## See Also

- [[mcp]]
- [[stagehand]]
- [[agent-plugins]]
