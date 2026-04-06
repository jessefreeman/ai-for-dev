---
type: entity
sources: ["7 new open source AI tools you need right now….md"]
created: 2026-04-06
updated: 2026-04-06
tags: [open-source, model-modification, uncensoring]
---

# Heretic

An open-source tool that removes safety guardrails from language models using a technique called "obliteration." Fully automatic, requires no expensive post-training — run it from the command line on any model.

## How It Works

Takes a censored model (e.g., Google's Gemma) and applies obliteration to remove the guardrails that prevent it from responding to certain types of requests. The output is a model that obeys any command without refusal.

## Use Case

For researchers, developers, or users who need unrestricted model outputs — e.g., creative writing without content filters, security research, red-teaming, or applications where model refusals interfere with legitimate work.

## Note

This tool raises obvious safety and ethical considerations. Removing guardrails from a capable model creates a system with no behavioral constraints. Users should consider the implications before deploying uncensored models, especially in any user-facing application.

## See Also

- [[Fireship]] — source
- [[summary-fireship-7-open-source-tools|Source: 7 Open-Source AI Tools]]
