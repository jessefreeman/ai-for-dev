---
type: source-summary
sources: ["Claude Just Told Us to Stop Using Their Best Model.md"]
created: 2026-04-10
updated: 2026-04-10
tags: [video, youtube, anthropic, cost-optimization, claude, advisor-strategy]
---

# Claude Just Told Us to Stop Using Their Best Model

**Channel:** [[nate-herk|Nate Herk]]
**Format:** YouTube video
**URL:** https://www.youtube.com/watch?v=1EPsUXSManU
**Length:** ~15 minutes
**Published:** 2026-04-09
**Sponsor:** none disclosed

## Summary

Nate Herk walks through Anthropic's new **Advisor Strategy** — a beta Messages API feature that pairs Opus as an advisor with a cheaper executor model (Sonnet or Haiku). The executor only escalates to the advisor when it detects a hard task. He builds a dashboard to demo cost/quality tradeoffs across model combos, then shows the Claude Code equivalent: the `/model opus-plan` command that uses Opus in plan mode and Sonnet for execution.

## Key Points

- **Advisor Strategy is a Messages API feature (beta).** You add `type: "advisor_2026_03_01"` and `name: "advisor"` to the API request. A `max_uses` parameter caps how many times the executor can call the advisor per request.
- **Benchmarks from Anthropic's evaluations:**
  - Sonnet + Opus advisor = **+2.7 percentage points on SWE-bench** over Sonnet alone, with **~12% cost reduction** per agentic task.
  - Haiku + Opus advisor = **41.2% on BrowseComp** — more than double Haiku's solo score of 19.7%.
- **API token pricing (current generation):** Opus = $5 input / $25 output per million tokens. Sonnet = $3 / $15. Haiku = $1 / $5.
- **Dashboard demo results:** In a customer-support knowledge-base scenario, Opus alone cost **21x more** than Haiku for a simple query with comparable quality. For complex queries, Haiku+Opus sometimes outperformed Sonnet+Opus — the advisor was called when Sonnet self-assessed difficulty but not when Haiku did (model-dependent escalation behavior).
- **Model-dependent escalation is non-deterministic.** Sonnet called the advisor on a query Haiku handled solo. The self-assessment of "is this hard enough to escalate?" varies by model and prompt — **test hundreds of prompts before production**.
- **Claude Code equivalent: `/model opus-plan`.** A hidden model selector: `opus-plan` sets Opus 4.6 for plan mode and Sonnet 4.6 for execution mode. The status bar shows the active model. Switching to plan mode activates Opus; exiting plan mode drops back to Sonnet automatically. This saves session usage because Opus consumes more of the subscription limit than Sonnet.
- **Side-by-side build test:** Nate built a visualization dashboard using both Opus-plan (Opus for planning, Sonnet for execution) and Opus-only. The Opus-plan output had dynamic scroll-in elements, clearer diagrams, and interactive sliders — Nate preferred it over the Opus-only output while spending fewer tokens.
- **Messages API vs Claude Code distinction:** The API is stateless, lets you define tools, and is for building your own apps. Claude Code is the finished product with file access, terminal commands, and web browsing. Both use the same models and can call tools. The Agent SDK sits between them — "embed Claude Code into your own app."
- **Monitor tool** — briefly mentioned as a new Anthropic feature announced on X during recording. No detail beyond the name.

## Sponsorship & Bias Notes

**Sponsor:** none disclosed.

**Product placement / affiliations:** Nate promotes his Skool community (AI Automation Society) and mentions sharing the demo project as a GitHub repo through the community. Standard self-promotion, not product placement.

**Comparison bias:** none observed. The dashboard compares Anthropic's own models against each other; no third-party model or competitor is involved.

## Notable Quotes

> "It's not a matter of which model is best. Obviously, Opus 4.6 is the most capable. So, the question is for this specific task, which model should I be using?" — Nate Herk, framing the advisor strategy

> "Don't just do it right away. Test hundreds of prompts through each of them to see what you consistently think is performing better. Because saving cost on tokens is amazing, but only if you're not sacrificing quality." — Nate Herk, on production readiness

## Connected Pages

- [[llm-design-patterns]] — the Advisor Strategy is a new pattern (Pattern 6) on the design patterns library
- [[claude-code]] — `/model opus-plan` is the Claude Code implementation of the advisor concept
- [[claude]] — the Advisor Strategy is a new API feature across the Claude model family
- [[open-source-model-integration]] — adjacent cost-optimization thread
- [[nate-herk]] — author hub

## See Also

- [[summary-nate-herk-ultra-plan]] — prior Nate Herk source on Claude Code planning optimization
- [[summary-simon-scrapes-claude-code-workflows]] — the 5-pattern ladder that this source extends with a 6th pattern
- [[summary-nate-herk-ollama-claude-code]] — prior Nate Herk source on cost reduction via model swapping
