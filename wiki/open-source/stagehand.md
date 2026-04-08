---
type: entity
sources: ["Stagehand V2 FULLY FREE Browser Use AI Agent! Automate ANYTHING! (Opensource).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [open-source, browser-automation, playwright, mcp, browserbase]
---

# Stagehand

Open-source AI browser-automation framework from **Browserbase**. Built on Playwright; v2 (June 2025) added **self-healing** retry logic and full **MCP-native** integration so it works as a sub-agent inside [[cline|Cline]] and [[cursor|Cursor]] without leaving the IDE. Three primary verbs — `navigate`, `act`, `extract`, `observe` — make natural-language browser tasks ergonomic.

- **Vendor**: Browserbase
- **Repo**: github.com/browserbase/stagehand
- **Built on**: Playwright
- **Backend**: Browserbase serverless browser runtime (free sandbox available; ~10¢/hour for paid)

## What's new in v2

- **Self-healing**: when the DOM changes, Stagehand retries with alternative selector strategies instead of breaking
- **MCP-native**: drop-in install via Cline's MCP marketplace; Cursor works the same way
- **Standalone Python lib** still supported

## Model recommendations (from Stagehand's own benchmarks)

| Slot | Model | Why |
|---|---|---|
| Fastest + cheapest | DeepSeek R1 distilled Qwen 32B | best speed/cost on Stagehand's eval |
| Most accurate | Gemini 2.0 Flash | best multimodal grounding |

## Why it matters

Stagehand fills the **browser-automation** slot in the wiki's open-source agent landscape. Compared to `browser-use` (Python-only, no MCP story), Stagehand is the polished MCP-native option. Sibling to the Computer Agent inside [[codellm|CodeLLM]] (this batch) — same use case, but Stagehand is OSS and host-agnostic.

## Sources

- [[summary-stagehand-v2-browser-automation|Stagehand V2 FULLY FREE Browser Use AI Agent]] — [[worldofai|WorldofAI]] walkthrough; YouTube scraping + auto-job-application demos

## See Also

- [[cline|Cline]] / [[cursor|Cursor]] — primary MCP hosts
- [[mcp|MCP]]
- [[deepseek|DeepSeek]] R1 distilled — recommended cheap model
- [[codellm|CodeLLM]] — sibling browser-control agent (closed-source)
