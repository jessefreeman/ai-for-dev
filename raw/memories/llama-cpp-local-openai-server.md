---
title: llama.cpp as Drop-In Local OpenAI Server
summary: llama.cpp's server mode exposes an OpenAI-compatible API on localhost:8080, making any local model a drop-in replacement for OpenAI's API.
tags: [tool_llama_cpp, topic_local_ai, topic_openai_compatible, source_ibm_llama_cpp]
---

# llama.cpp as Drop-In Local OpenAI Server

## Context

From [[summary-ibm-llama-cpp|IBM Technology's llama.cpp explainer]]. See also [[llama.cpp]], [[Ollama]], [[Open-Source Model Integration]].

## Content

llama.cpp has two usage modes:

**CLI mode** (terminal chat):
```
llama-cli --model model.gguf
```

**Server mode** (OpenAI-compatible API):
```
llama-server --model model.gguf --port 8080
```

The server mode is the important one for developers. It exposes GET and POST endpoints on `localhost:8080` that are compatible with the OpenAI API specification.

**What "OpenAI-compatible" means in practice:**
- Any tool that accepts an OpenAI API endpoint (LangChain, LangGraph, Claude Code with OpenRouter config) works without code changes
- Just point the base URL at `http://localhost:8080` instead of `api.openai.com`
- No API key charges, no rate limits, no data leaving your machine

**Why [[Ollama]] exists**: Ollama wraps this same functionality with a more developer-friendly interface (model management, one-command pulls, automatic GGUF handling). But under the hood, it's llama.cpp doing the inference.
