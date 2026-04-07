---
title: Hermes Agent's GEPA — Backpropagation for Prompts, Not Weights
summary: Nous Research's Hermes Agent runs a closed learning loop called GEPA that pauses every ~15 tool calls, reviews failures, and updates the agent's own behavior — described as "backprop for prompts instead of model weights."
tags: [tool_hermes_agent, concept_self_improving_agents, topic_gepa, topic_agent_learning, source_worldofai_hermes_agent]
---

# Hermes Agent's GEPA — Backpropagation for Prompts, Not Weights

## Context

From [[summary-worldofai-hermes-agent|WorldofAI's Hermes Agent walkthrough]]. See also [[hermes-agent]].

## Content

**GEPA** is the closed learning loop inside Hermes Agent (built by Nous Research). The framing Nous uses: **"backpropagation for prompts instead of model weights."**

**How it works**: Every ~15 tool calls, the agent pauses, reviews what happened, identifies what failed, and updates itself. No fine-tuning. No retraining. The model weights stay constant — what changes is the agent's *prompts and behaviors*, learned from its own execution history.

**What this enables**:
- **Autonomous skill creation**: when Hermes solves something, fixes an error, or is told to remember a task, it converts the experience into a reusable skill. Pulls that skill later when it recognizes a relevant situation.
- **Searches its own past conversations**: builds a deepening model of the user across sessions
- **Memory updates per session**: future prompts inherit workflow context (e.g., "this user uses shadcn") without re-prompting

**Why this matters**: it's the cleanest answer yet to the question "how does an agent get better without fine-tuning?" The conceptual root is [[andrej-karpathy|Karpathy]]'s [[autoresearch-evals|AutoResearch]] work, which demonstrated self-improving loops with binary evals.

**Comparison to alternatives**:
- [[OpenClaw]] just *executes* tasks — no reflection loop
- [[ThePopeBot]] uses Docker + GitHub Actions for orchestration but not GEPA-style self-improvement
- Hermes adds GEPA as the differentiator
