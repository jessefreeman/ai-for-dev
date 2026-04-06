---
title: Five Specification Primitives for Agent Work
summary: The five building blocks of specification engineering — self-contained problem statements, acceptance criteria, constraint architecture, task decomposition, and evaluation design.
tags: person_nate_b_jones, concept_specification, concept_prompting, source_nate_b_jones_four_prompting_disciplines
---

# Five Specification Primitives for Agent Work

## Context

From [[summary-nate-b-jones-four-prompting-disciplines|Nate B Jones's prompting framework video]]. See also [[Four Prompting Disciplines]].

## Content

Five learnable primitives for writing specs agents can execute autonomously:

1. **Self-contained problem statements** — state the problem with enough context that it's plausibly solvable without fetching more info. Toby Lutke's core insight.
2. **Acceptance criteria** — describe "done" so an independent observer can verify without asking you questions. If you can't write 3 sentences to verify the output, you don't understand the task well enough to delegate it.
3. **Constraint architecture** — four categories: musts, must-nots, preferences, escalation triggers. CLAUDE.md is a practical implementation. "Every line needs to earn its place."
4. **Task decomposition** — break into subtasks each <2 hours, with clear I/O boundaries, independently verifiable. Your job is providing break patterns a planner agent can use, not writing the subtasks yourself.
5. **Evaluation design** — build 3-5 test cases with known-good outputs; run periodically. The only thing standing between AI output you can't use and output you can use as-is.

**Key insight**: Real-time prompting rewards verbal fluency and quick iteration. Specification engineering rewards completeness of thinking and anticipation of edge cases. Different people are naturally good at different ones — treat all as learnable skills.
