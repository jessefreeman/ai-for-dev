---
title: The GPT-5 Precision Tax — Contradictory Instructions Burn Tokens
summary: GPT-5 takes every instruction literally, so contradictory instructions (e.g., "be brief but comprehensive") force the model to burn tokens trying to resolve the conflict and produce worse output.
tags: [tool_chatgpt, concept_meta_prompting, topic_prompting, source_nate_b_jones_chatgpt5_prompting]
---

# The GPT-5 Precision Tax — Contradictory Instructions Burn Tokens

## Context

From [[summary-nate-b-jones-chatgpt5-prompting|Nate B Jones on GPT-5 prompting]]. See also [[meta-prompting]].

## Content

**The Precision Tax**: when you give GPT-5 contradictory instructions ("be brief but comprehensive," "be casual but professional," "be detailed but quick"), the model takes both literally and burns tokens trying to satisfy them simultaneously. Output gets worse, costs more, takes longer.

**The fix**: explicitly prioritize when goals tension:

> My primary goal is X. My secondary goal is Y. When in doubt, prioritize X over Y.

**Why it matters more on GPT-5 than earlier models**: GPT-5 is *literal*. Earlier models would silently pick one and ignore the other. GPT-5 tries to honor both.

**Related principle — depth ≠ length**: GPT-5 separates *reasoning depth* from *response verbosity*. You can ask for "PhD-level analysis in a tight executive summary." Tell it both dimensions explicitly.

**Related principle — be opinionated about tool use**: GPT-5 is either a tool maximalist or minimalist by default. Specify: "First search the web. Then analyze the data this way." Don't leave tool use to inference.

**Related principle — context memory is an illusion**: GPT-5 re-reads everything each turn. Use the **flag trick** to detect forgetting: tell the model to write `flag` at the end of every response while it remembers the initial instruction. When the flag disappears, you know it dropped context.
