---
type: source-summary
sources: ["Open-SWE Opensource Jules! FULLY FREE Async AI Coder IS INSANELY GOOD!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, youtube, ai, coding-agent, async, open-source, langchain, langgraph]
---

# Open-SWE: Opensource Jules! FULLY FREE Async AI Coder

**Channel:** [[worldofai|WorldofAI]]
**Format:** YouTube tool walkthrough
**Published:** 2025-08-12
**Sponsor:** None disclosed (Hyperliquid referral, Patreon, Scrimba affiliate links in description)

## Summary

WorldofAI walks through **[[open-swe|Open-SWE]]**, an open-source asynchronous AI coding agent built on **LangGraph** by **[[langchain|LangChain]]**, positioned explicitly as a free alternative to Google's Jules (which moved features behind a paywall). Open-SWE plans, writes, tests, reviews, and opens GitHub pull requests autonomously, with the bring-your-own-API-key (or [[openrouter|OpenRouter]] free tier, or [[ollama|Ollama]] local) flexibility that Jules doesn't offer. Demo: building a calendar app from a single prompt with the planning agent + execution agent + review agent chain working through 7 sequenced tasks and opening a PR.

## Key Points

- **Jules went paid → wiki needs an alternative** — Google's Jules introduced a subscription plan that moved many features behind a paywall. Open-SWE is the open-source response.
- **Built on LangGraph by LangChain** — first first-party LangChain product to land in the wiki, justifies the [[langchain]] org page
- **Async coding agent**: queue it up, walk away, come back to a PR. Not interactive autocomplete (that's [[continue|Continue]]) or interactive compose (that's [[cursor|Cursor]]). Different category.
- **Capabilities**: codebase understanding, end-to-end planning, multi-file edits, test execution, self-review, automatic PR opening, token usage + cost visibility per generation
- **Backend flexibility** is the standout: bring your own API key (Anthropic, OpenAI, Google), or use [[openrouter|OpenRouter]] free tier, or run fully local via [[ollama|Ollama]]. **No vendor lock-in.**
- **Cloud option**: swe.langchain.com (the easy path)
- **Self-host option**: clone `langchain-ai/open-swe`, `yarn install`, configure dual `.env` files (web app + agent), create a GitHub App, configure webhooks via ngrok for local, run `yarn dev` in two terminals (LangGraph agent + web app)
- **Demo workflow**: WorldofAI tells Open-SWE to create a calendar app. Open-SWE deploys a planning agent → produces 7 sequenced tasks → user approves the plan → execution agent works through each task → opens a PR → review agent checks the work → final calendar app with add/edit/delete events. The PR-opening step is the standout: Open-SWE picks up the existing branch state from a prior pull request, recognizes the in-progress index.html, and continues from there rather than starting over.
- **Token visibility** in the UI: hover the model dropdown for input tokens, output tokens, total cost per generation. Cache savings are explicit. Useful for cost-conscious users tuning between local Ollama (free, slow) and Anthropic (paid, fast).
- **Editorial framing**: "this is what Jules does, but free, open-source, and self-hostable" is the throughline. The video assumes the viewer already knows what Jules does.

## Sponsorship & Bias Notes

**Sponsor:** None disclosed. Standard WorldofAI affiliate links in the description (Hyperliquid for crypto trading, Patreon for the channel, Scrimba course affiliate). None tied to Open-SWE or LangChain.

**Product placement / affiliations:** None observed. WorldofAI does not disclose any relationship with LangChain. The framing is consistent with his other "tool walkthrough" videos.

**Comparison bias:** The "INSANELY GOOD!" title and the "Jules alternative" framing are typical WorldofAI marketing patterns — discount the enthusiasm. The actual technical content is reproducible. The demo (calendar app) is small enough that the autonomous PR-opening worked; larger codebases would stress-test the planning step in ways the video doesn't show.

## Notable Quotes

> "Open-SWE is an asynchronous coding agent built with LangGraph. It can autonomously understand your entire codebase, plan solutions, and execute code changes across your repository from initial planning all the way to opening pull request."

> "And the best part is it's locally available which lets you bring your own API. And if you don't have the funds for an API, you can either use OpenRouter as a free provider or you can use Ollama where you can locally host these models without paying for any API costs."

## Connected Pages

- [[open-swe]] — entity page anchored on this source
- [[langchain]] — org page (this is the first wiki source for LangChain as a company)
- [[worldofai|WorldofAI]] — author hub (8th source)
- [[ollama]], [[openrouter]] — backend options
- [[saas-death-spiral]] — the broader thesis Open-SWE participates in (open-source agentic coding eats per-seat licensing)

## See Also

- [[summary-worldofai-archon-os|Source: Archon OS]] — another open-source coding command center, different category (Archon = knowledge backbone, Open-SWE = async PR-opener)
- [[summary-worldofai-deepcode|Source: DeepCode]] — another open-source agentic coder, different angle (DeepCode = Paper2Code research pipeline, Open-SWE = production async dev workflow)
- [[summary-worldofai-hermes-agent|Source: Hermes Agent]] — adjacent open-source agent framework, different layer (Hermes = personal agent + GEPA self-improvement, Open-SWE = repo-scoped coding)
- [[summary-fireship-saas-death-spiral|Source: SaaS Death Spiral]] — the market context this proliferation lives inside
