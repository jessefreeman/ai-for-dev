---
title: Advisor Strategy Benchmark Numbers
summary: Anthropic's published benchmark results for the Advisor Strategy.
tags: [tool_claude, concept_advisor_strategy, topic_cost_reduction, source_nate_herk_advisor_strategy]
---

# Advisor Strategy Benchmark Numbers

## Context

From [[summary-nate-herk-advisor-strategy|Claude Just Told Us to Stop Using Their Best Model]]. See also [[claude]], [[llm-design-patterns#pattern-6-advisor-strategy]].

## Content

Anthropic's evaluations for the Advisor Strategy:

- **Sonnet + Opus advisor**: +2.7 percentage points on SWE-bench over Sonnet alone, with ~12% cost reduction per agentic task.
- **Haiku + Opus advisor**: 41.2% on BrowseComp vs 19.7% solo — more than double the score at a fraction of Opus-only cost.
- Simple queries: Haiku alone cost 21× less than Opus alone with comparable quality (Nate Herk's dashboard demo).
