---
title: Gemma 4 31B Benchmark Position
summary: Gemma 4's 31B model ranks #3 among all open models globally while being small enough to run on consumer hardware.
tags: tool_gemma_4, person_matthew_berman, topic_local_ai, topic_open_source_models, source_matthew_berman_gemma4
---

# Gemma 4 31B Benchmark Position

## Context

From [[summary-matthew-berman-gemma4|Google Drops Gemma 4]] by [[Matthew Berman]]. See [[Gemma 4]].

## Content

Gemma 4 31B (released April 2026):
- Ranked **#3 open model** on Arena AI text leaderboard
- ELO comparable to Qwen 3.5 — which has 397B parameters (17B active in MoE mode)
- Gemma 4 31B achieves similar performance at a fraction of the size
- Perfect tool-calling scores across all sizes (Tool Call 15 benchmark)
- Apache 2.0 license — commercially permissive
- Available on Ollama, HuggingFace, LM Studio

The key result: a model competitive with near-frontier performance that fits on consumer GPU RAM. Models above it on the leaderboard (GLM5, Kimmy K2.5) require hardware most people can't access.

Benchmarks: MMLU 85.2%, AME 2026 89%, LiveCodeBench 80%, GPQA Diamond 84.3%.
