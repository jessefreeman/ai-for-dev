---
type: entity
sources: ["The Only Claude Skills You Need in 2026.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, scraping, llm-data, yc, plugin]
---

# Firecrawl

Open-source URL → LLM-ready markdown converter. **97,000 GitHub stars**, Y Combinator-backed. Per the source: passed [Scrapy](https://scrapy.org)'s star count, the long-time default Python web scraper. *"If your agent needs to read the internet, this is the standard."*

## What it does

- Point at any URL → get clean markdown or structured data
- No HTML parsing or post-processing required
- Has its own API server for direct LLM/agent integration
- Plugs directly into [[claude-code|Claude Code]]

## Why it matters

Scrapy passed-by-star-count is a meaningful inflection point — it suggests agent-native scraping has overtaken the legacy Python scraping ecosystem in active interest. Firecrawl is to LLM-era data extraction what Scrapy was to the structured-data era.

The wiki has tracked sister tools — [[crawl4ai]], [[stagehand]] — but Firecrawl has the largest mindshare of any of them per the source.

## Type and platform

- **Type:** CLI + API server
- **Platforms:** model-agnostic (any agent or LLM)
- **Status:** tracked

## Hands-on notes

*(empty)*

## Sources

- [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08)

## See Also

- [[agent-plugins]]
- [[crawl4ai]]
- [[stagehand]]
- [[tavily]]
