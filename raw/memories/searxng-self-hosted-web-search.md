---
title: SearXNG — Self-Hosted Web Search for AI Agents
summary: SearXNG is a self-hosted meta-search engine (Docker) with native OpenClaw integration; the free alternative to paid search APIs like Tavily/Brave/Google.
tags: [tool_searxng, tool_openclaw, topic_self_hosting, topic_local_ai, source_bart_slodyczka_gemma4_searxng_openclaw]
---

# SearXNG — Self-Hosted Web Search for AI Agents

## Context

From [[summary-bart-slodyczka-gemma4-searxng-openclaw|Gemma 4 + SearXNG + OpenClaw]]. See also [[searxng]], [[self-hostable-alternatives]].

## Content

SearXNG is a self-hosted privacy-respecting meta-search engine that aggregates results from multiple upstream search providers without tracking queries. Runs as a Docker container. Has a native integration with OpenClaw — configure via `openclaw configure` or CLI command. Critical setup detail: SearXNG defaults to HTML format but OpenClaw requires JSON; must edit `settings.yaml` inside the Docker container to add `- json` under the `formats` section, then restart. Result: unlimited free web search with no queries leaving the machine.
