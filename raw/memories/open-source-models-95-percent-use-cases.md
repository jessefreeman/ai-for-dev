---
title: Open-Source Models Cover 95% of Use Cases
summary: Matthew Berman's claim that despite being less capable than frontier models, open-source models are good enough for the vast majority of real-world AI use cases.
tags: [topic_open_source, topic_local_ai, person_matthew_berman, source_matthew_berman_ai_models]
---

# Open-Source Models Cover 95% of Use Cases

## Context

From [[summary-matthew-berman-ai-models|Matthew Berman's "Every AI Model Explained"]] video. See also [[Open-Source Model Integration]], [[Llama]], [[DeepSeek]], [[Qwen]].

## Content

Matthew Berman's position on open-source vs frontier models:

> "Open-source models are just not as good as frontier hosted models. There's just no way around it. But here's the thing about that — for 95% of use cases, open-source models are usually enough."

**The tradeoffs:**

Drawbacks:
- More technical to set up (though LM Studio and Ollama have lowered the bar significantly)
- Not as capable as frontier models at the absolute edge

Benefits:
- Run locally — no data sent to external servers
- Effectively free (cost = hardware you already own + electricity)
- Full control (fine-tuning, reinforcement learning possible)
- No rate limits, no API outages

**Current open-source leaders (early 2026)**: DeepSeek and Qwen from Chinese AI labs have surpassed Meta's Llama. Both are strong for most use cases.

**The 5% exception**: Tasks requiring the absolute frontier of reasoning, nuanced creative work at the highest quality level, or tasks that specifically need features only frontier models have (like Gemini's video ingestion). For everything else — Q&A, coding, summarization, analysis, writing — an open-source model running locally is sufficient.
