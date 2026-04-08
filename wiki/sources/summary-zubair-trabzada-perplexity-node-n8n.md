---
type: source-summary
sources: ["n8n Just Made AI Agents 10x Smarter NEW Perplexity Node.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, n8n, perplexity, real-time-search, ai-automation]
---

# n8n Just Made AI Agents 10x Smarter: NEW Perplexity Node

**Source**: YouTube — [[zubair-trabzada|Zubair Trabzada]] (AI Workshop), published 2025-06-11
**Tools covered**: [[n8n|n8n]], [[perplexity|Perplexity]]

## Summary

Zubair walks through n8n's new **first-class Perplexity node** (added in v1.98+), which lets workflows pull live web-search results with citations directly inside the AI Agent node — no more boilerplate HTTP-request configuration. Three Perplexity models exposed (Sonar, Sonar Pro, Sonar Deep Search). Demo: an n8n agent answering "research current news in LA" returns two articles with summaries and source citations in seconds. The point: this closes the **real-time data loop** for n8n agents, which previously had to be hand-wired with HTTP requests or scraping nodes.

## What changed

| Before | After (n8n v1.98+) |
|---|---|
| HTTP request node → Perplexity API → manual JSON parse → feed back into agent | Perplexity node + AI Agent tool slot — auto-defines parameters |

## Setup

1. n8n version: **1.98+**
2. Get Perplexity API key (~$5 minimum top-up)
3. Create n8n credential
4. Drop the Perplexity node — or attach it as a **tool** under the AI Agent node, which is the more powerful pattern (lets the agent decide when to search)

## Models exposed

- **Sonar** — cheap (~$0.02/req), good for general live lookups
- **Sonar Pro** — better quality, higher cost
- **Sonar Deep Search** — full deep-research-style multi-hop reasoning, highest cost

## Use cases the source highlights

- Customer / company research before outbound contact
- Live news scraping with citations
- CRM enrichment with current data
- Social-media content sourcing

## Why it matters in this wiki

This is the **real-time-search closure** of the [[n8n]] AI-agent stack. Previously the agent could remember things ([[zep|Zep]]), generate things (OpenAI/Claude), browse a webhook ([[retell-ai|Retell]]), but had no clean "what's true right now" tool. The Perplexity node fills that gap as a first-class node, which matters because n8n agents are increasingly the canonical no-code agent runner in the wiki ([[ai-automation-workflows|AI Automation Workflows]] thread).

## See Also

- [[n8n|n8n]]
- [[perplexity|Perplexity]]
- [[zubair-trabzada|Zubair Trabzada]]
- [[ai-automation-workflows|AI Automation Workflows]]
- [[zep|Zep]] — sibling memory tool (long-term context)
