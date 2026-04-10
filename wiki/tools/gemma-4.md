---
type: entity
sources: ["Google just dropped Gemma 4... (WOAH).md", "Ollama + Claude Code = 99% CHEAPER.md", "Gemma 4 VRAM Requirements Every GPU and Mac Tested (2026).md", "Gemma 4 Guide Models, Local Deployment, VRAM, and Comparisons.md", "Google just casually disrupted the open-source AI narrative….md", "Gemma 4 + SearXNG = 100% FREE & PRIVATE OpenClaw (Full Setup).md"]
created: 2026-04-06
updated: 2026-04-10
tags: [tool, ai, llm, open-source, google, model]
---

# Gemma 4

[[google|Google]]'s fourth-generation open-weights model family. Released April 2026. The headline achievement: state-of-the-art open-source performance at unusually small parameter counts. Licensed under Apache 2.0. See [[google]] for the company-level entity.

## Apache 2.0 as a strategic event

Per [[fireship|Fireship]]'s [[summary-fireship-gemma4-apache|Code Report]], Gemma 4's most important attribute isn't its benchmarks — it's that it's the **first FAANG-released large language model under a true Apache 2.0 license.** Existing US-lab open-weights models come with strings:

- **[[llama|Llama]]** (Meta) — "quasi-free" license that retains Meta leverage over developers who commercialize it
- **GPT-OSS** ([[openai|OpenAI]]) — Apache 2.0 but, per Fireship, *"bigger and dumber than Gemma"*
- **Outside FAANG** — Mistral plus the Chinese labs ([[qwen|Qwen]], GLM, [[kimi-k2|Kimi]], [[deepseek|DeepSeek]])

Gemma 4 is the first time a US tech giant has shipped a frontier-grade open-weights model with *no* license strings *and* no size penalty. Treat this as a licensing event with industry-strategic significance, not just a model release. The headline contrast: Gemma 4 31B scores in [[kimi-k2|Kimi K2.5 thinking]] territory but runs locally as a **20 GB download at ~10 tok/s on a single RTX 4090**, while Kimi requires 600+ GB of weights, 256+ GB RAM, and multiple H100s. Kimi is still the better model — but for the median developer they're not in the same product category, because Gemma runs everywhere and Kimi runs nowhere outside a data center.

## Model Sizes

| Model | Params | Context | Target |
|-------|--------|---------|--------|
| E2B | 2B effective | 128K | Mobile/edge devices |
| E4B | 4B effective | 128K | Mobile/edge devices |
| 27B | 4B active / 26B MoE | 256K | Desktop/cloud |
| 31B | 31B dense | 256K | Desktop/cloud |

"Effective" parameter count: uses per-layer embeddings (PLE) for inference efficiency — larger embedding tables, but only fast lookups at runtime.

### Per-layer embeddings (PLE) explained

Per [[fireship|Fireship]]'s [[summary-fireship-gemma4-apache|Code Report]]: in a normal transformer, each token gets **one** embedding at the start of the model, and that information has to be carried through every subsequent layer — most of which doesn't actually need it. PLE inverts this: **each layer gets its own small custom version of the token embedding**, so information is introduced exactly when it's useful instead of all at once. The "E" in E2B/E4B stands for **effective parameters** — the embedding tables are larger than a vanilla 2B model would have, but they're fast lookups at runtime, so the model behaves as if it were the smaller size for inference cost while retaining the richer representation.

**This is what makes Gemma 4's small models small.** It is *not* [[turboquant|TurboQuant]], which Google released as a parallel research note alongside Gemma 4 — Fireship explicitly clarifies that TurboQuant is a separate compression technique that is *not* the mechanism behind Gemma 4's footprint. Easy mistake to make given the simultaneous release.

**The deeper bottleneck PLE addresses**: per Fireship, *"To run a massive large language model locally, you don't need a better CPU. You need more memory bandwidth. Every time a model generates a token, it has to read through a massive amount of model weights in VRAM."* PLE reduces what has to be read on each step — that's the local-runnability story.

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

## Hardware Requirements

See [[gemma-4-vram-requirements]] for the full VRAM lookup table by GPU and Mac. Quick rule of thumb (Q5_K_M):

- **E4B** — 6 GB GPU minimum (RTX 3060, RX 6600)
- **26B A4B** (MoE, ~4B active) — 12 GB GPU at Q5 (RTX 3080 12GB / RTX 4070); the **best Mac sweet spot** at 32–36 GB unified memory
- **31B** dense — 16 GB GPU at Q4 (RTX 4080 / RTX 3090)
- **BF16 31B** — 24 GB GPU (RTX 4090)

The 26B A4B MoE only activates ~4B params during inference, which is why it fits in 12–14 GB while delivering reasoning quality close to a 26B dense model — the most efficient option for users who want more than E4B but can't run 31B.

## Tool-calling on OpenClaw (E4B field report)

[[bart-slodyczka|Bart Slodyczka]] ran the E4B model (~9.6 GB) as his [[openclaw|OpenClaw]] daily driver for several days and was *"very impressed with its ability to do agentic tool calling."* Multi-step tasks (web search → summarize → create report → attach to ClickUp → email) completed without the model buckling mid-chain — a failure mode he'd seen with previous small models. He attributes the improvement partly to OpenClaw's improved backend prompt structure for tool calling. The 26B (18 GB) is now his primary daily driver on a 512 GB Mac Studio, with the E2B (7.2 GB) viable for 16 GB MacBook Pro users. See [[summary-bart-slodyczka-gemma4-searxng-openclaw|source]].

## Relevance to Claude Code Workflows

Highlighted by [[Nate Herk]] as the motivation for his Ollama + Claude Code tutorial. The 31B model is a strong candidate for running [[Claude Code]] locally on consumer hardware — high capability, small enough to fit in reasonable GPU RAM. See [[Open-Source Model Integration]].

[[Matthew Berman]]'s take: use Gemma 4 for lighter tasks in a hybrid workflow; reserve Opus 4.6 for serious coding.

## See Also
- [[gemma-4-vram-requirements]] — full GPU + Mac lookup tables
- [[Ollama]]
- [[Open-Source Model Integration]]
- [[Matthew Berman]]
- [[benchmarks/index|Personal Hardware Benchmarks]] — many rigs reference Gemma 4 model fit
- [[summary-matthew-berman-gemma4|Source: Google Drops Gemma 4]]
- [[summary-nate-herk-ollama-claude-code|Source: Ollama + Claude Code]]
- [[summary-gemma4guide-vram-requirements|Source: Gemma 4 VRAM Requirements]]
- [[summary-fireship-gemma4-apache|Source: Fireship — Google casually disrupted the open-source AI narrative]]
