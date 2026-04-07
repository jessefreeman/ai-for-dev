---
title: Meta-Prompting — Power Steering for GPT-5
summary: Nate B Jones's meta-prompt is a wrapper that tells the model how to interpret, restructure, and execute your sloppy request — letting you stay lazy while getting structured output from a model that demands precision.
tags: [concept_meta_prompting, person_nate_b_jones, tool_chatgpt, topic_prompting, source_nate_b_jones_chatgpt5_prompting]
---

# Meta-Prompting — Power Steering for GPT-5

## Context

From [[summary-nate-b-jones-chatgpt5-prompting|Nate B Jones's ChatGPT-5 Prompting video]]. See also [[meta-prompting]].

## Content

**The problem**: GPT-5 is "a speedboat with a really big rudder." It's agentic, literal, and powerful. Casual conversational prompts that worked on earlier models cause GPT-5 to fabricate details to fill the mission shape you implied.

**The solution**: a **meta-prompt** — a wrapper that tells the model how to interpret your sloppy request before executing it. Instead of writing a perfect prompt every time, you write the meta-prompt once and reuse it.

**Nate's quick five-minute meta-prompt**:

> Transform my request into a structured brief and then execute it.
> First, interpret what I'm actually asking for: what type of output would help me, what expertise would be relevant, what format would be useful, what level of detail.
> Then restructure and execute as: a specific role, a specific objective (please make my vague request more specific), an approach, and an output.

**The before/after**: bare "help me prepare for tomorrow's meeting" → fabricated agenda, fake stats, useless. Same prompt wrapped in the meta-prompt → model verbalized assumptions, asked precise clarifying questions, produced an 80%-good first-pass meeting brief.

**Why it works**: GPT-5 is a router over multiple sub-models. Structure in the prompt influences which sub-model gets called. A meta-prompt forces structure even when the human input is unstructured.

**When to skip**: simple factual queries, exploratory or emotional conversations. For emotional conversations, use Claude — "Claude has better emotional capabilities than ChatGPT, just say it."
