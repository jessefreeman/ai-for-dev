---
title: Gemma 4 E4B Tool Calling on OpenClaw
summary: Bart Slodyczka ran the mobile-grade Gemma 4 E4B on OpenClaw for several days and found it reliably handles multi-step agentic tool calling; previously small models would buckle mid-chain.
tags: [tool_gemma_4, tool_openclaw, tool_ollama, topic_local_ai, source_bart_slodyczka_gemma4_searxng_openclaw]
---

# Gemma 4 E4B Tool Calling on OpenClaw

## Context

From [[summary-bart-slodyczka-gemma4-searxng-openclaw|Gemma 4 + SearXNG + OpenClaw]]. See also [[gemma-4]], [[openclaw]].

## Content

Bart Slodyczka tested the Gemma 4 E4B model (~9.6 GB, mobile-grade) as his OpenClaw daily driver. Multi-step tasks (web search → summarize → create report → attach to ClickUp → email) completed without the model buckling mid-chain — a failure mode common with previous small models. He attributes this partly to OpenClaw's improved backend prompt structure for tool calling. His current daily driver is the 26B (18 GB) on a 512 GB Mac Studio, but E4B was surprisingly capable. E2B (7.2 GB) fits on a 16 GB MacBook Pro with tight headroom.
