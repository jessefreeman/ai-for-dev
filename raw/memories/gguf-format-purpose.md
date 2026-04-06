---
title: GGUF Format — What It Is and Why It Matters
summary: GGUF is llama.cpp's single-file model format combining weights and metadata, enabling fast model loading, swapping, and quantization.
tags: [tool_llama_cpp, topic_local_ai, topic_quantization, source_ibm_llama_cpp]
---

# GGUF Format — What It Is and Why It Matters

## Context

From [[summary-ibm-llama-cpp|IBM Technology's llama.cpp explainer]]. See also [[llama.cpp]], [[Ollama]].

## Content

GGUF (GPT-Generated Unified Format) is llama.cpp's model format. It bundles model weights and metadata into a single file.

**Why it matters:**
- **Fast loading**: One file, no assembly required — faster to load and swap models
- **Easy model switching**: Swap DeepSeek for Qwen for Llama in seconds; everything needed to run the model is in one file
- **Quantization support**: The GGUF format is designed to store weights at multiple precisions (16-bit down to 4-bit and below)
- **Ecosystem standard**: Hugging Face hosts thousands of models in GGUF format; it's the standard format for local inference

**Where you encounter it**: Any time you see a filename like `DeepSeek-R1-Q4_K_M.gguf` or `Llama-3.1-8B-Instruct-Q4_K_M.gguf`, that's a GGUF file ready to run with llama.cpp.

**Tools that use it**: [[Ollama]], Jan, GPT4All, [[AnythingLLM]] all use llama.cpp (and therefore GGUF) under the hood.
