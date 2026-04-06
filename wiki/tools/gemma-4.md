---
type: entity
sources: ["Google just dropped Gemma 4... (WOAH).md", "Ollama + Claude Code = 99% CHEAPER.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [tool, ai, llm, open-source, google, model]
---

# Gemma 4

Google's fourth-generation open-weights model family. Released April 2026. The headline achievement: state-of-the-art open-source performance at unusually small parameter counts. Licensed under Apache 2.0.

## Model Sizes

| Model | Params | Context | Target |
|-------|--------|---------|--------|
| E2B | 2B effective | 128K | Mobile/edge devices |
| E4B | 4B effective | 128K | Mobile/edge devices |
| 27B | 4B active / 26B MoE | 256K | Desktop/cloud |
| 31B | 31B dense | 256K | Desktop/cloud |

"Effective" parameter count: uses per-layer embeddings (PLE) for inference efficiency — larger embedding tables, but only fast lookups at runtime.

## Performance

- 31B ranks **#3 open model** on Arena AI text leaderboard (April 2026)
- ELO competitive with Qwen 3.5 (397B params) at a fraction of the size
- Perfect tool-calling scores across all sizes (Tool Call 15 benchmark)
- MMLU 85.2%, AME 2026 89%, LiveCodeBench 80%, GPQA Diamond 84.3%
- Limitation: context window capped at 256K (smaller than Anthropic's million-token offerings)

## Capabilities

- All sizes: multimodal (video + images), variable resolution, OCR, chart understanding, function calling, structured JSON output
- E2B/E4B: native audio input, designed for offline use on phones, Raspberry Pi, NVIDIA Jetson
- All sizes: native agentic workflow support

## Availability

HuggingFace, [[Ollama]], LM Studio, Unsloth, NVIDIA NIMs, MLX, llama.cpp, and others.

## Relevance to Claude Code Workflows

Highlighted by [[Nate Herk]] as the motivation for his Ollama + Claude Code tutorial. The 31B model is a strong candidate for running [[Claude Code]] locally on consumer hardware — high capability, small enough to fit in reasonable GPU RAM. See [[Open-Source Model Integration]].

[[Matthew Berman]]'s take: use Gemma 4 for lighter tasks in a hybrid workflow; reserve Opus 4.6 for serious coding.

## See Also
- [[Ollama]]
- [[Open-Source Model Integration]]
- [[Matthew Berman]]
- [[summary-matthew-berman-gemma4|Source: Google Drops Gemma 4]]
- [[summary-nate-herk-ollama-claude-code|Source: Ollama + Claude Code]]
