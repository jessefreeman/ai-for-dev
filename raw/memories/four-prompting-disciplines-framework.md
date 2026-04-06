---
title: Four Prompting Disciplines — The Full Stack for 2026
summary: Nate B Jones's framework splitting prompting into four cumulative disciplines — prompt craft (table stakes), context engineering, intent engineering, and specification engineering.
tags: person_nate_b_jones, concept_prompting, concept_specification, source_nate_b_jones_four_prompting_disciplines
---

# Four Prompting Disciplines — The Full Stack for 2026

## Context

From [[summary-nate-b-jones-four-prompting-disciplines|Nate B Jones's prompting framework video]]. See also [[Four Prompting Disciplines]].

## Content

Prompting has silently diverged into four disciplines. Most people only practice the first. The gap is 10x.

**The stack (cumulative — can't skip layers):**
1. **Prompt Craft** — clear instructions, examples, guardrails, output format. Table stakes in 2026. Like knowing how to type was in 1998.
2. **Context Engineering** — curating the 99.98% of the context window you didn't type: system prompts, tools, memory, MCP connections. Produces CLAUDE.md files, agent specs, RAG pipelines.
3. **Intent Engineering** — encoding goals, values, trade-off hierarchies. Klarna resolved 2.3M conversations but optimized resolution time not satisfaction. Perfect context, wrong intent.
4. **Specification Engineering** — writing documents agents execute against for days/weeks without human intervention. The entire org's document corpus should be agent-readable.

**The 10x gap**: Person A types request, gets 80% output, cleans up 40 min. Person B writes 11-min spec, hands off, comes back to completed work, does 5 more before lunch. Same model. Same Tuesday.
