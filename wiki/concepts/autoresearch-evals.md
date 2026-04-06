---
type: concept
sources: ["Stop Fixing Your Claude Skills. Autoresearch Does It For You.md", "Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md"]
created: 2026-04-06
updated: 2026-04-06
tags: [concept, autoresearch, evals, claude-code, optimization]
---

# AutoResearch and Evals

A methodology for self-improving any process that has objective metrics. Originated from [[Andrej Karpathy]]'s `auto_research` GitHub repo; popularized for Claude Code skill optimization by [[Nick Saraev]]; referenced by [[Nate B Jones]] as part of the agent accumulation thesis.

## Three Ingredients

1. **Objective metric** — a measurable number (not "feels better"). Examples: eval pass rate, load time in ms, email reply rate.
2. **Measurement tool** — automated, reliable, no human in the loop. Examples: agent-written test suite, Lighthouse, API analytics.
3. **Something to change** — the variable being optimized. Examples: the skill prompt, website code, email copy.

## How It Works

1. Run the process N times (e.g., generate 10 diagrams)
2. Evaluate each output against binary (yes/no) criteria
3. Score: count of passes out of (runs × criteria)
4. Mutate the variable (e.g., rewrite the prompt)
5. Run again, keep the winner
6. Repeat

## Evals: The Key Concept

An **eval** is a binary test applied to an output. Binary is critical — yes/no questions give the tightest signal. Likert scales or subjective scoring compound variance and produce noisy results.

**Good eval example** (diagram skill):
- Is all text legible and grammatically correct? (yes/no)
- Does it use pastel/soft colors? (yes/no)
- Is it linear (left→right or top→bottom)? (yes/no)
- Is it free of numbers/ordinals? (yes/no)

**Anti-patterns**:
- Overly narrow constraints ("under X words") → model optimizes to parrot the eval without improving actual quality
- Subjective scales ("rate 1-7 for quality") → compounds variance

## Real-World Results

| Application | Before | After | Iterations |
|---|---|---|---|
| Diagram generator skill | 32/40 (80%) | 39/40 (97.5%) | ~5 runs, ~$10 |
| Website load time | 1,100ms | 67ms | 67 tests |
| Karpathy's NanoGPT training | Human-tuned baseline | Agent-optimized model outperformed | ~100 overnight |

## The Research Log as Asset

Every iteration produces data about what was tried and what worked. This log is independently valuable — pass it to a future, smarter model to continue where its predecessors left off. [[Nick Saraev]] argues this will be "one of the most important and valuable assets of our time."

## Connection to Agent Loops

AutoResearch is the goal-directed complement to [[/loop]]. Where `/loop` provides the heartbeat (proactive scheduling), AutoResearch provides the convergence logic (objective metrics, measurement, mutation). Combine them for autonomous overnight improvement cycles.

Toby Lutke (Shopify CEO) demonstrated this: used Karpathy's AutoResearch to produce an agent-optimized model that outperformed a larger human-tuned model — 100 cycles, every cycle informed by memory of all previous ones.

## See Also

- [[/loop]] — the proactivity primitive that enables overnight AutoResearch runs
- [[Andrej Karpathy]] — AutoResearch originator
- [[Nick Saraev]] — practical application to Claude Code skills
- [[Hermes Agent]] — a different self-improvement approach (closed learning loop, no explicit evals)
- [[summary-nick-saraev-autoresearch|Source: Nick Saraev's AutoResearch walkthrough]]
- [[summary-nate-b-jones-loop-openbrain|Source: Nate B Jones /loop + OpenBrain]]
