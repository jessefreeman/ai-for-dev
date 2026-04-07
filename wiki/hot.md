---
type: hot-cache
created: 2026-04-06
updated: 2026-04-07
---

# Hot Cache

## Current State

**45 sources ingested** + 16-rig benchmark section. Three big April-7 batches landed. Latest batch added the **vLLM + FP8 + Blackwell stack** (the practical justification for the top-spend rig in the benchmarks), plus three new agentic coding/workflow platforms (Archon OS, DeepCode, Sim AI). The wiki now has solid coverage of the local-AI throughput ceiling, not just the entry path.

## Most Active Pages

- [[claude-code|Claude Code]] — primary tool; /loop, /ultra-plan, skills ecosystem
- [[mcp|MCP]] — canonical concept page; foundational across the wiki
- [[archon-os]] — Cole Medin's MCP-based knowledge + task backbone for any AI coding agent
- [[vllm]] + [[fp8-quantization]] — the throughput upgrade past Ollama / LM Studio for serious local serving
- [[ai-coding-workflow]] + [[bmad-method]] + [[meta-prompting]] — the planning-discipline thread
- [[saas-death-spiral]] — the market thesis tying it all together
- [[hermes-agent]] — GEPA self-improving loop ("backprop for prompts")

## Most Recently Added (2026-04-07, Batch 3)

- **Alex Ziskind on vLLM + FP8** ([[summary-alex-ziskind-vllm-fp8]]) — same model + same hardware, vLLM hits **5,800 tok/s** vs LM Studio's ~80. LM Studio cannot parallelize. Code completion is the use case where parallelism matters even for solo developers. New entity [[vllm]], new concept [[fp8-quantization]], new person [[alex-ziskind]]. Updated [[benchmarks/rigs/proxmox-lenovo-p8-threadripper]] with the practical justification for the $9,145 PRO 6000 spend.
- **Archon OS** ([[summary-worldofai-archon-os|WorldofAI]]) — Cole Medin's repositioning of his Archon project as "the first AI OS for AI coding." Real-time editable task list while agent is running. Knowledge base over MCP. New tool [[archon-os]]. Cole's 5th source.
- **DeepCode** ([[summary-worldofai-deepcode|WorldofAI]]) — HKUDS's open-source multi-agent coding platform. Standout: **Paper2Code** (research papers → working implementations). New entity [[deepcode]].
- **Sim AI** ([[summary-worldofai-sim-ai|WorldofAI]]) — open-source n8n alternative with AI-native nodes. Visual canvas, 60+ integrations, multi-model. Plausible build target for selling [[ai-automation-workflows]] to clients. New tool [[sim-ai]].

## April-7 Batch 1 + 2 Reference

Batch 1: MCP canonical, Augment Agent, BMAD Method, Cole Medin AI coding workflow, Gemma 4 VRAM, Firebase Studio, Open WebUI, Dolphin Llama 3, pixegami RAG. Batch 2: Ultra Plan, SaaS death spiral, meta-prompting, Hermes GEPA, Docker Model Runner. All still active context.

## Open Gaps

- Karpathy's gist, AI 2027, Dan Shapiro, StrongDM, METR study — long-standing primary sources still uningested
- Lovable — referenced repeatedly, no entity page
- Supabase — now referenced from Archon OS, Sim AI, Cole Medin coding workflow; deserves its own entity page
- Shadow factory agency model — Jesse's business vision
- Two broken `[[proxmox-mobile-hx-pro-370]]` rig links (lint #6 — user undecided)
- 6 sources skipped across batches — archived
- Qwen 3 Coder Next, ZAI GLM 5, MiniMax M2.5, Waymo World Model, Kimi K2 — mentioned but no entity pages

## Architectural Threads to Watch

- **Local-AI throughput ceiling** is now anchored by [[vllm]] + [[fp8-quantization]]. The benchmarks section reflects single-request scores; vLLM unlocks ~70x more on concurrent workloads.
- **Agentic coding platform proliferation** — [[claude-code]], [[cursor]], [[augment-agent]], [[firebase-studio]], [[archon-os]], [[deepcode]] all coexist with overlapping but distinct positioning. [[saas-death-spiral]] explains why this market is fragmenting.
- **Planning-discipline convergence** — [[ai-coding-workflow]], [[bmad-method]], [[meta-prompting]], and [[claude-code|Claude Code Ultra Plan]] all converge on the same thesis: structured thinking before code, executed by agents.
