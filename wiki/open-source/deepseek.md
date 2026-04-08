---
type: entity
sources: ["Every AI Model Explained in 20 Minutes.md", "Deepseek-R1-0528 BEST Opensource Reasoning Model! Powerful, Fast, & Cheap! Fully Tested + Free API.md"]
created: 2026-04-06
updated: 2026-04-08
tags: [open-source, llm, chinese-lab, model, reasoning]
---

# DeepSeek

Open-weights LLM family from a Chinese AI lab. One of the strongest open-source models available as of early 2026 — frequently cited alongside Qwen as having surpassed Meta's Llama in capability. The **R1 reasoning** line is the wiki's default recommendation for "free local-equivalent reasoning model."

## R1-0528 (May 2025 refresh)

The latest R1 release at the time of [[summary-deepseek-r1-0528-reasoning-model|WorldofAI's benchmark]]:

- **Params**: 671B total, **37B active** (Mixture-of-Experts)
- **Context**: 136K
- **License**: **MIT** — fully unrestricted, no Commons Clause
- **Pricing**: $1.95/M input, $5/M output via DeepSeek API; **free tier on [[openrouter|OpenRouter]]**
- **MMLU**: competitive with OpenAI O3-high and GPT-4 mini
- **Demoed**: 107s chain-of-thought on multi-step unit-conversion math (correct); full animated SaaS landing page in one shot

R1-0528 is now the default open-weights backbone for several tools in the wiki: [[codename-goose|Codename Goose]] (recommended free model), [[stagehand|Stagehand]] (R1-distilled Qwen 32B is the fastest+cheapest in Stagehand's eval), [[deerflow|DeerFlow]] (named explicitly as a recommended model), [[agenticseek|AgenticSeek]].

## Why It Matters

DeepSeek demonstrated that open-source models from non-US labs could match or exceed models from established US AI labs at a fraction of the training cost. Its release caused significant attention in the AI community regarding compute efficiency.

## Use in Local AI

Available in GGUF format via [[llama.cpp]] and [[Ollama]]. Commonly referenced in quantization naming: `DeepSeek-R1-Q4_K_M` follows the standard llama.cpp quantization naming convention.

## Compared to Other Open-Source Models

Among the current leaders alongside [[Qwen]]. Both are considered stronger than [[Llama]] for most tasks as of early 2026.

## API Access

Also available via DeepSeek's own API and through [[OpenRouter]] for cloud inference at low cost.

## See Also

- [[Qwen]] — comparable Chinese lab model
- [[Llama]] — Meta's model; now behind DeepSeek in capability
- [[llama.cpp]] — inference engine for running locally
- [[Open-Source Model Integration]] — using open-source models with Claude Code
- [[Matthew Berman]] — source
- [[summary-matthew-berman-ai-models|Source: Every AI Model Explained]]
