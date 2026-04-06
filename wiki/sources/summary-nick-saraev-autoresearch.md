---
type: source-summary
sources: ["Stop Fixing Your Claude Skills. Autoresearch Does It For You.md"]
created: 2026-04-06
updated: 2026-04-06
tags: [source, video, claude-code, skills, evals, autoresearch]
---

# Stop Fixing Your Claude Skills. Autoresearch Does It For You

**Source**: YouTube — [[Nick Saraev]], published 2026-03-13
**Link**: https://www.youtube.com/watch?v=qKU-e0x2EmE

## Summary

Nick Saraev demonstrates how to apply the AutoResearch methodology (from [[Andrej Karpathy]]'s auto_research repo) to self-improve Claude Code skills. The video provides a practical, repeatable framework: define binary evals, run the skill N times, score against evals, mutate the prompt, keep the winner, repeat.

## Three Ingredients for AutoResearch

1. **Objective metric** — a measurable number (not "feels faster" — an actual number). For skills: eval pass rate. For websites: load time in ms. For cold email: reply rate.
2. **Measurement tool** — automated, reliable, no human in the loop. For skills: an agent-written test suite. For websites: Lighthouse. For email: API analytics.
3. **Something to change** — the variable being optimized. For skills: the prompt (the markdown instruction file). For websites: code. For email: copy.

## How Evals Work

Skills are prompts. Prompts are inherently noisy — run one 20 times and you'll get variation. To control for this:

- Run the skill many times per iteration (e.g., 10)
- Evaluate each output against binary (yes/no) criteria
- Score: count of passes out of (runs × criteria)
- Mutate the prompt, run again, keep the winner

**Binary evals are critical**: Avoid Likert scales or subjective scoring. Each compound probability makes the total score more variable. Binary yes/no questions give the tightest signal.

**Diagram generator example** (4 binary criteria):
1. Is all text legible and grammatically correct?
2. Does it use pastel/soft colors (no neon)?
3. Is it linear (left→right or top→bottom)?
4. Is it free of numbers/ordinals?

10 diagrams × 4 criteria = 40 max score. Started at 32/40, reached 39/40 (97.5%) after several iterations.

## Practical Results

- **Website optimization**: 67 tests → load time dropped from 1,100ms to 67ms (81.3% improvement)
- **Skill optimization**: Started 32/40, reached 39/40 within a few iterations (~$10 total cost at $0.02/generation)
- The research log itself is valuable: pass it to a future, smarter model to continue where predecessors left off

## Anti-Patterns

- Don't use overly narrow constraints ("under X words", "no these symbols") — the model will optimize to parrot the eval without improving actual quality
- A student who gets 100% on the test without understanding the material

## Connection to Karpathy's AutoResearch

Karpathy's repo has three files that matter: `prepare.py` (ML-specific, skip), `train.py` (= your skill.md), `program.md` (= your agent instructions). The methodology generalizes: any process with objective metrics, automated measurement, and a variable to change can be auto-researched.

## Pages Created or Updated

- [[Nick Saraev]] — new
- [[AutoResearch and Evals]] — new concept page

## See Also

- [[Andrej Karpathy]] — AutoResearch originator
- [[Hermes Agent]] — a different approach to self-improving agents (closed learning loop)
- [[Agentic Harness Primitives]] — broader agent infrastructure
