---
type: source-summary
sources: ["Google just dropped Gemma 4... (WOAH).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [ai, llm, open-source, google, gemma, models, video, transcript]
---

# Summary: Matthew Berman — Google Drops Gemma 4

[[Matthew Berman]] covers the Gemma 4 release. Key takeaway: Google achieved state-of-the-art open-source performance at unusually small parameter counts, making high-quality local inference accessible on consumer hardware.

## Model Family

| Model | Type | Params | Context | Notes |
|-------|------|--------|---------|-------|
| E2B | Dense, edge | 2B effective | 128K | Native audio; mobile/edge |
| E4B | Dense, edge | 4B effective | 128K | Native audio; mobile/edge |
| 27B | MoE | 4B active / 26B total | 256K | Thinking model |
| 31B | Dense | 31B | 256K | Thinking model; #3 open model worldwide |

"Effective" parameter count: smaller models use per-layer embeddings (PLE) to maximize efficiency — the embedding tables are large but used only for fast lookups, so inference is cheaper than the raw parameter count implies.

## Performance

- 31B ranked **#3 open model** on Arena AI text leaderboard (behind GLM5 and Kimmy K2.5, both of which are multi-hundred-billion-parameter models)
- Comparable ELO to Qwen 3.5 (397B params / 17B active) at a fraction of the size
- MMLU 85.2%, AME 2026 89%, LiveCodeBench 80%, GPQA Diamond 84.3%
- Perfect tool-calling scores across all four model sizes (Tool Call 15 benchmark)

## Capabilities

- All sizes: multimodal (video + images), variable resolution, OCR and chart understanding
- E2B/E4B: native audio input for speech recognition
- All sizes: native function calling, structured JSON output, agentic workflow support
- License: **Apache 2.0** (commercially permissive)

## Relevance to This Wiki

Gemma 4 is the open-source model highlighted in [[summary-nate-herk-ollama-claude-code|Nate Herk's Ollama video]] as the motivation for his tutorial — it's a strong candidate for local Claude Code runs due to small size + high capability. Berman notes he'd still use Opus 4.6 for serious coding, but Gemma 4 makes sense for hybrid workflows where local inference handles lightweight tasks.

Available via: HuggingFace, [[Ollama]], LM Studio, Unsloth, NVIDIA NIMs, and others.

## See Also
- [[Gemma 4]]
- [[Matthew Berman]]
- [[Ollama]]
- [[Open-Source Model Integration]]
- [[summary-nate-herk-ollama-claude-code|Source: Ollama + Claude Code]]
