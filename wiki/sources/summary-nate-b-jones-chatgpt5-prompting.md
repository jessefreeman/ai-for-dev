---
type: source-summary
sources: ["ChatGPT-5 Prompting is Too Hard This Video Makes it Easy for You.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, youtube, ai, prompting, chatgpt, gpt5, meta-prompting]
---

# ChatGPT-5 Prompting is Too Hard: This Video Makes it Easy for You

**Channel:** [[nate-b-jones|Nate B Jones]]
**Format:** YouTube video
**Published:** 2025-09-04
**Sponsor:** None disclosed (links to Nate's own Substack and site)

## Summary

Nate B Jones explains why GPT-5 prompting feels harder than earlier models and introduces **meta-prompting** as the practical fix. GPT-5 is "a speedboat with a really big rudder" — extremely powerful, agentic, literal, and easy to misguide. Without structure, it fabricates details to fill the mission shape you implied. Meta-prompts wrap your sloppy human request in an instruction-set that tells the model how to interpret, structure, and execute it. The video walks through a live before-and-after on "help me prepare for tomorrow's meeting" — useless without a meta-prompt, 80% useful with one. See [[meta-prompting]] for the full concept page.

## Key Points

- **GPT-5 is a different prompting beast** than prior models: a router over multiple sub-models, agentic by default, literal in execution, demands precision
- **The four GPT-5 differences**: (1) multiple models behind a dispatcher; (2) the Precision Tax — contradictory instructions burn tokens; (3) agentic bias — wants missions, not conversations; (4) expertise paradox — marketed to non-experts but needs expert-structured prompts
- **Live demo**: bare "help me prepare for tomorrow's meeting" prompt → fabricated agenda, fake stats, useless. Same prompt wrapped in a meta-prompt → model verbalized assumptions, asked precise questions, produced an 80%-good first-pass meeting brief.
- **Meta-prompting = power steering** — instead of writing a perfect prompt, you give the model a structured wrapper that tells it how to interpret and execute whatever you actually typed
- **Seven prompting principles for GPT-5**: structure beats intelligence; explicitly prioritize tension; depth ≠ length; define uncertainty protocols; be opinionated about tool use; context memory is an illusion (use the "flag" trick to detect forgetting); give methodologies, not goals
- **Seven components of a good GPT-5 prompt**: role, objective, process methodology, format expectations, boundaries/anti-goals, uncertainty protocols, validation criteria
- **Don't over-engineer**: meta-prompts are for mission-shaped work. Skip them for simple factual queries, exploratory conversations, or personal/emotional ones — and use Claude for emotional conversations because "Claude has better emotional capabilities than ChatGPT, just say it"
- **The flag trick**: tell GPT-5 to write `flag` at the end of every response while it remembers the initial instruction. When the flag disappears, you know it dropped context.
- The shift is **systematic prompting > casual prompting** — Nate expects GPT-6 to demand even more precision

## Notable Quotes

> "GPT-5 is a speedboat with a really big rudder — it wants to go fast and it wants to be steered really hard." — Nate B Jones

> "The era of casual conversation prompting is over. With ChatGPT-5, we need systematic prompting." — Nate B Jones

> "Structure beats intelligence — give the model methodologies, not just vague instructions." — Nate B Jones

## Sponsorship & Bias Notes

**Sponsor:** None disclosed. Nate links to his own Substack ("the ChatGPT-5 prompting manual") and natebjones.com — self-promotion of his own deeper resources, not third-party paid content.

**Product placement / affiliations:** The video is essentially a soft launch for Nate's own paid Substack content with the full meta-prompt library. Disclosed openly.

**Comparison bias:** Nate explicitly claims "Claude has better emotional capabilities than ChatGPT" — not benchmarked, but consistent with his broader editorial positioning across other videos.

## Connected Pages

- [[meta-prompting]] — full concept
- [[nate-b-jones]] — author hub (9th source)
- [[chatgpt]] — target model family
- [[four-prompting-disciplines]] — Nate's broader framework
- [[ai-coding-workflow]], [[bmad-method]] — applied meta-prompting in coding contexts

## See Also

- [[summary-nate-b-jones-four-prompting-disciplines|Prompting Split Into 4 Skills]] — the broader taxonomy this fits inside
- [[summary-cole-medin-100x-ai-coding|Cole Medin AI coding workflow]] — meta-prompting via PLANNING.md/TASK.md
- [[summary-bmad-code-aiadd-method|BMAD Method]] — meta-prompting via Agile personas
