---
type: entity
sources: ["The Only Claude Skills You Need in 2026.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, mcp, search, plugin]
---

# Tavily

A search engine built specifically for AI agents. Returns clean, structured data instead of the messy HTML you get from scraping a normal search engine.

## What it does

Four built-in tools, all exposed as MCP:

- **search** — agent-friendly search results
- **extract** — pull structured data from a URL
- **crawl** — multi-page crawl
- **map** — site structure mapping

Connects as a remote MCP server in about a minute. The source pitches it as the go-to "give your agent the ability to research anything" plug-in.

## Type and platform

- **Type:** MCP (remote)
- **Platforms:** any MCP host
- **Status:** tracked

## Position vs related tools

- **vs [[firecrawl]]** — Firecrawl focuses on URL-to-markdown conversion; Tavily is a full search/discovery layer with crawl + map on top.
- **vs raw web search** — Tavily strips the ads, ranking noise, and HTML cruft that make general web search expensive for agents to consume.

## Hands-on notes

*(empty)*

## Sources

- [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08)

## See Also

- [[mcp]]
- [[firecrawl]]
- [[agent-plugins]]
