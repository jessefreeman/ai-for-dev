---
title: Advisor Strategy Escalation is Non-Deterministic
summary: The executor model's self-assessment of task difficulty varies by model — test extensively before production.
tags: [concept_advisor_strategy, tool_claude, topic_cost_reduction, source_nate_herk_advisor_strategy]
---

# Advisor Strategy Escalation is Non-Deterministic

## Context

From [[summary-nate-herk-advisor-strategy|Claude Just Told Us to Stop Using Their Best Model]]. See also [[llm-design-patterns#pattern-6-advisor-strategy]].

## Content

The Advisor Strategy's escalation behavior is non-deterministic and model-dependent. In Nate Herk's dashboard demo, Sonnet called the Opus advisor on a customer-support query that Haiku handled without escalation. This means each model has a different internal threshold for "is this hard enough to need help?"

Practical implication: you cannot assume a prompt that doesn't trigger escalation with one executor will behave the same with another. Nate's recommendation: test hundreds of prompts through each model combo before committing to a production configuration. "Saving cost on tokens is amazing, but only if you're not sacrificing quality."
