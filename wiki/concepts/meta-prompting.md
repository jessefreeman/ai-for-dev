---
type: concept
sources: ["ChatGPT-5 Prompting is Too Hard This Video Makes it Easy for You.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [concept, ai, prompting, gpt5, chatgpt, meta-prompting]
---

# Meta-Prompting

A **prompt that makes your prompts better.** [[Nate B Jones]]'s answer to the GPT-5 prompting problem: instead of trying to write a perfect detailed prompt yourself, you give the model a structured *instruction-set* for how to interpret, restructure, and execute whatever sloppy request you actually type. Meta-prompting acts as **power steering** for a model that Nate describes as "a speedboat with a really big rudder — it wants to go fast and it wants to be steered really hard."

## Why GPT-5 Specifically Needs This

GPT-5 changed the prompting game in four ways that break old habits:

1. **It's multiple models behind a router.** The way you structure the prompt influences which underlying model GPT-5 calls. Bad structure → wrong model gets the job.
2. **The Precision Tax.** Contradictory instructions ("be brief but comprehensive") force the model to burn tokens trying to resolve the conflict, and the output suffers.
3. **Agentic bias.** GPT-5 doesn't want to chat — it wants to *complete missions*. Casual conversational prompts make it fabricate details to fill the mission shape.
4. **The Expertise Paradox.** It's marketed to non-experts but works best with expert-structured prompts. Anthropic released a GPT-5 prompting guide because OpenAI internally recognized this gap.

> "The era of casual conversation prompting is over. With ChatGPT-5, we need systematic prompting." — Nate B Jones

## A Quick Example Meta-Prompt

The "five-minute get started" meta-prompt Nate uses:

> Transform my request into a structured brief and then execute it.
>
> First, interpret what I'm actually asking for: what type of output would help me, what expertise would be relevant, what format would be useful, what level of detail.
>
> Then restructure and execute as: a specific role (you should infer appropriate expertise), a specific objective (please make my vague request more specific), an approach (choose the methodology that fits the objective), and an output.

When Nate gave ChatGPT-5 the bare prompt "help me prepare for tomorrow's meeting," it fabricated an agenda, a 30-minute timeline, fake industry stats — useless. With the meta-prompt wrapper around the same five words, the model verbalized assumptions it could be corrected on, asked precise clarifying questions, and produced a meeting prep sheet at "80% good" on the first pass.

## The Seven Prompting Principles for GPT-5

1. **Structure beats intelligence.** Headers, bullets, methodologies, and explicit format expectations steer the implicit router toward the right underlying model. "Think hard" works too, but structure is more reliable.
2. **Explicitly prioritize tension.** "My primary goal is X. My secondary goal is Y. When in doubt, prioritize one over two." Resolves the Precision Tax.
3. **Depth ≠ length.** GPT-5 separates *reasoning depth* from *response verbosity*. Tell it both: "I want PhD-level analysis in a tight executive summary."
4. **Define uncertainty protocols.** GPT-5 will literally attempt any task. You must tell it what to do when data is missing or ambiguous: "If you can't find X, ask. Don't fabricate."
5. **Be opinionated about tool use.** GPT-5 is either a tool maximalist or minimalist. Specify: "First search the web. Then analyze the data this way."
6. **Context memory is an illusion.** It's re-reading everything each turn. Periodically restate instructions. The "flag" trick: tell it to write `flag` at the end of every response while it remembers the instruction — when the flag disappears, you know it forgot.
7. **Give the model methodologies, not just goals.** A clear stepwise process beats "think harder."

## The Seven Components of a Good Prompt

If you're writing from scratch instead of using a meta-prompt:

| # | Component | Why |
|---|---|---|
| 1 | **Role** | Aims the implicit router toward the right expertise tier |
| 2 | **Objective** | GPT-5 needs missions, not conversations |
| 3 | **Process methodology** | Step-by-step path to the result |
| 4 | **Format expectations** | The model wants to deliver — tell it the shape |
| 5 | **Boundaries / anti-goals** | "Don't go to the coral reefs" — where *not* to steer |
| 6 | **Uncertainty protocols** | Explicit priorities when there's ambiguity |
| 7 | **Validation criteria** | How the model can check its own work |

## When NOT to Meta-Prompt

Skip the heavy machinery for:
- Simple factual queries
- Exploratory or discovery conversations
- Personal/emotional conversations (Nate's note: "Claude has better emotional capabilities than ChatGPT — pick the right model")

Meta-prompting is built for **mission-shaped work**. On the edges of what GPT-5 does well, drop the structure or use a different model.

## Relationship to Other Wiki Concepts

- [[four-prompting-disciplines]] — Nate's broader framework. Meta-prompting sits at the intersection of **context engineering** and **specification engineering**: you're giving the model both the right context-shaping instructions AND a spec for the output structure.
- [[ai-coding-workflow]] — Cole Medin's PLANNING.md/TASK.md pattern is meta-prompting for coding agents: you're not writing a perfect prompt every time, you're encoding the discipline once in a markdown file the agent reads.
- [[bmad-method]] — The BMAD persona artifacts are essentially heavy meta-prompts: each role's output is the next role's prompt.
- [[chatgpt|ChatGPT]] — the model family meta-prompting was designed for.

## See Also

- [[nate-b-jones]] — author
- [[chatgpt]] — the target model family
- [[four-prompting-disciplines]] — the broader prompting taxonomy
- [[ai-coding-workflow]], [[bmad-method]] — applied meta-prompting in coding contexts
- [[summary-nate-b-jones-chatgpt5-prompting|Source: ChatGPT-5 Prompting]]
