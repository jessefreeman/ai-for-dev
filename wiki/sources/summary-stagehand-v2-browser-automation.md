---
type: source-summary
sources: ["Stagehand V2 FULLY FREE Browser Use AI Agent! Automate ANYTHING! (Opensource).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, browser-automation, playwright, mcp, open-source, browserbase]
---

# Stagehand V2: FULLY FREE Browser Use AI Agent

**Source**: YouTube — [[worldofai|WorldofAI]], published 2025-06-13
**Tool covered**: [[stagehand|Stagehand]] (Browserbase)

## Summary

Walkthrough of [[stagehand|Stagehand]] v2 — Browserbase's open-source AI browser-automation framework built on Playwright. v2 ships **self-healing** automations (retry-on-DOM-drift) and full agent integration via MCP (works inside [[cline|Cline]] and [[cursor|Cursor]] as a sub-agent, or as a standalone Python lib). Three primary CLI verbs — `navigate`, `act`, `extract`, `observe` — make natural-language browser tasks ergonomic. Real demos: scraping top-10 YouTube videos in ~3 minutes, and an auto-job-application example at ~10¢/hour.

## Key claims

- **Built on Playwright** — inherits the most robust browser-automation primitives
- **Self-healing**: when the DOM changes, Stagehand retries with a different selector strategy instead of breaking
- **MCP-native** — installs into Cline via the MCP marketplace; Cursor works the same way
- **Browserbase backend** required (serverless browser runtime; free sandbox available)
- **Cost**: ~10¢/hour for complex automations (Browserbase fees)

## Model evaluation

Stagehand published model benchmarks alongside v2:
- **Fastest + cheapest**: DeepSeek R1 distilled Qwen 32B
- **Most accurate (multimodal)**: Gemini 2.0 Flash

The fact that the *fastest and cheapest* slot goes to a distilled DeepSeek matches the wiki's broader [[deepseek|DeepSeek R1]] thread.

## Why it matters

Stagehand fills the **browser-automation** slot in the wiki's open-source agent landscape — until now [[browser-use]] was the only entry, and it's a Python lib without a clean MCP story. Stagehand is the polished MCP-native option that drops into Cline / Cursor without leaving the IDE.

Pairs with the **Computer Agent** slot in [[codellm|CodeLLM]] (this batch) — both are "the agent that controls the browser" but Stagehand is open-source and OSS-host-agnostic.

## See Also

- [[stagehand|Stagehand]]
- [[cline|Cline]] / [[cursor|Cursor]] — primary MCP hosts
- [[mcp|MCP]]
- [[deepseek|DeepSeek]] R1 distilled Qwen 32B — Stagehand's recommended cheap model
- [[worldofai|WorldofAI]]
