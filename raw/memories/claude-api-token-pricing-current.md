---
title: Claude API Token Pricing (4.5/4.6 Generation)
summary: Per-million-token pricing for Opus, Sonnet, and Haiku in the Messages API.
tags: [tool_claude, topic_cost_reduction, source_nate_herk_advisor_strategy]
---

# Claude API Token Pricing (4.5/4.6 Generation)

## Context

From [[summary-nate-herk-advisor-strategy|Claude Just Told Us to Stop Using Their Best Model]]. See also [[claude]].

## Content

Messages API token pricing (as of April 2026):

| Model | Input / 1M tokens | Output / 1M tokens |
|-------|-------------------|---------------------|
| Opus 4.6 | $5 | $25 |
| Sonnet 4.6 | $3 | $15 |
| Haiku 4.5 | $1 | $5 |

Output tokens cost significantly more than input tokens across all tiers. This asymmetry is why the Advisor Strategy (routing only hard tasks to Opus) can save up to 12% on agentic workloads — most of the savings come from avoiding Opus output tokens on easy steps.
