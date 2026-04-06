---
title: AutoResearch — Three Ingredients for Self-Improving Anything
summary: The AutoResearch methodology needs only three things — an objective metric, a measurement tool, and something to change — to self-improve any process.
tags: person_nick_saraev, person_andrej_karpathy, concept_autoresearch, tool_claude_code, source_nick_saraev_autoresearch
---

# AutoResearch — Three Ingredients for Self-Improving Anything

## Context

From [[summary-nick-saraev-autoresearch|Nick Saraev's AutoResearch video]]. See also [[AutoResearch and Evals]], [[Andrej Karpathy]].

## Content

AutoResearch (from Karpathy's `auto_research` repo) generalizes to any process:

**Three ingredients:**
1. **Objective metric** — a measurable number. Not "feels faster." Actual number.
2. **Measurement tool** — automated, reliable, no human in the loop.
3. **Something to change** — the variable being optimized.

**For Claude Code skills**: metric = eval pass rate, measurement = agent-written test suite, variable = the prompt markdown file.

**Key insight on evals**: Binary (yes/no) questions only. Likert scales and subjective scoring compound variance and produce noisy results. "Is the text legible?" (yes/no) beats "Rate the text quality 1-7."

**Results**: Diagram skill 32/40 → 39/40 (~$10 cost). Website 1100ms → 67ms load time (67 iterations). Karpathy's NanoGPT: 100 overnight experiments, agent-optimized model outperformed human-tuned model.

**The research log**: Every iteration produces data about what worked. Pass this log to a future smarter model to continue where predecessors left off. Nick calls this "one of the most important assets of our time."
