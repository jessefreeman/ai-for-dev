---
title: StrongDM's Dark Factory — Scenarios and Digital Twins
summary: StrongDM's 3-person team uses external scenarios (holdout sets the agent can't game) and a digital twin universe (simulated external services) to run fully autonomous software development.
tags: tool_attractor, concept_dark_factory, concept_evals, source_nate_b_jones_five_levels
---

# StrongDM's Dark Factory — Scenarios and Digital Twins

## Context

From [[summary-nate-b-jones-five-levels|Nate B Jones's 5 Levels video]]. See also [[Attractor]], [[Five Levels of AI Coding]].

## Content

**Scenarios vs tests**: Traditional tests live inside the codebase. AI agents can read them and optimize for passing (teaching to the test). StrongDM's scenarios are behavioral specs stored EXTERNALLY — the agent never sees evaluation criteria during development. Functions as a holdout set (same concept that prevents overfitting in ML).

**Digital twin universe**: Behavioral clones of every external service — simulated Okta, Jira, Slack, Google Docs/Drive/Sheets. Full integration testing without touching production APIs or data.

**Why this matters**: When humans write code, we don't worry about devs gaming their own tests. When AI writes code, optimizing for test passage IS the default behavior unless you deliberately architect around it. This is the most important architectural insight for autonomous software development.

**$1,000/engineer/day benchmark**: "If you haven't spent $1,000 per human engineer per day on compute, your software factory has room for improvement." Often still cheaper than the humans being replaced.
