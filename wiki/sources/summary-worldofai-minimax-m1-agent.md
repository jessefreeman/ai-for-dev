---
type: source-summary
sources: ["MiniMax Agent NEW Opensource General AI Agent w MCP & 1 Million Context!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, minimax, ai-agent, open-weights]
---

# MiniMax Agent (M1)

**Author / channel:** [[worldofai|WorldofAI]]
**Format:** video
**Source:** [Original](../../raw/archive/MiniMax%20Agent%20NEW%20Opensource%20General%20AI%20Agent%20w%20MCP%20%26%201%20Million%20Context%21.md)
**Published:** 2025-06-24

## Summary

MiniMax dropped their first open-source large-scale hybrid-attention reasoning model, [[minimax-m1|M1]], plus a hosted general-purpose **MiniMax Agent** powered by it. M1 ships in 80K and 40K reasoning-output variants with a **1M-token context window** matching Gemini 2.5 Pro and **80K reasoning output** (8× DeepSeek R1). Open weights on Hugging Face. WorldofAI demos the hosted agent building a working Twitter clone with auth and an integrated chatbot in a few minutes — including an MCP marketplace (Notion, Slack, Figma, GitHub, Google Maps) inside the agent UI. **Note**: this is the M1 generation, predating the M2.7 model already covered in [[summary-damian-malliaros-minimax-m27]].

## Key Points

- **Hybrid attention architecture** — proprietary "lightning attention" mechanism for efficient long-context inference. The architecture is the moat, not just the size.
- **Context window** — 1M tokens (matching Gemini 2.5 Pro at the time).
- **Reasoning output** — 80K tokens, 8× DeepSeek R1's. Designed for long-form multi-step reasoning over large documents and codebases.
- **Open weights** — both 80K and 40K variants on Hugging Face with a Gradio demo space. Ideal for local hosting paired with [[ollama]] / [[vllm]].
- **MiniMax Agent (hosted)** — general-purpose autonomous agent, multi-tool (browser-use, terminal, web search, image search). Includes MCP marketplace inside the UI: Notion, Slack, Figma, GitHub, Google Maps.
- **Hosted agent caveat** — paywall; ~1,000 monthly credits free, easy to burn through. WorldofAI's recommendation: skip the hosted agent, run M1 weights locally and wire them into n8n / Vector Shift to build your own.
- **Demo output** — functional Twitter clone with auth, posting, and an embedded AI chatbot — generated in minutes from a single prompt.

## Connected Pages

- [[minimax-m1]] — model entity
- [[minimax-m27|MiniMax M2.7]] — successor model already in the wiki
- [[summary-damian-malliaros-minimax-m27]] — successor model coverage
- [[mcp]] — agent-side marketplace pattern
- [[manus]], [[openmanus]], [[flowith]] — sibling general agents
- [[worldofai|WorldofAI]] — channel hub
