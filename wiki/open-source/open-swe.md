---
type: entity
sources: ["Open-SWE Opensource Jules! FULLY FREE Async AI Coder IS INSANELY GOOD!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [open-source, ai, coding-agent, agentic, langchain, langgraph, async]
---

# Open-SWE

Open-source **asynchronous AI coding agent** built on **LangGraph** by [[langchain|LangChain]]. Positioned explicitly as a free alternative to **[[jules|Google Jules]]** (which is itself free at 5 tasks/day, but cloud-only and not self-hostable — Open-SWE is the bring-your-own-model, self-hostable version of the same workflow shape). Plans, writes, tests, reviews, and opens GitHub pull requests autonomously — all the same surface area as Jules, but locally hostable, free if you bring your own API key (or use [[openrouter|OpenRouter]]'s free tier or [[ollama|Ollama]]).

- **GitHub**: [langchain-ai/open-swe](https://github.com/langchain-ai/open-swe)
- **Cloud demo**: swe.langchain.com
- **Docs**: docs.langchain.com/labs/swe/setup/development
- **Blog post**: blog.langchain.com/introducing-open-swe-an-open-source-asynchronous-coding-agent/
- **License**: Open source

## What it does

Open-SWE is an **asynchronous coding agent** — it works in the background while you do other things, rather than blocking your IDE on each request. The async framing matters because the typical workflow is:

1. Open a GitHub issue (or use the Open-SWE UI) describing what you want
2. Open-SWE clones the repo, reads the codebase, and produces a step-by-step plan
3. You review the plan in the web UI (or accept it as-is)
4. Open-SWE executes the plan: writes code, runs tests, iterates on failures
5. Open-SWE opens a pull request when done
6. You review and merge

You're not watching it work. You queue it up and check back later. This is the "Jules-like" interaction model: AI as a remote teammate, not as an inline autocomplete.

## Capabilities

- **Codebase understanding** — clones and reads the repo before planning
- **Plan-first execution** — produces a step-by-step plan for human review before any code is written
- **Multi-file edits** — across the entire repo
- **Test execution** — runs tests as part of the workflow, iterates on failures
- **Self-review** — has a separate "review" agent that checks the work
- **Pull request automation** — opens PRs against the linked GitHub repo when done
- **Token usage visibility** — hover the model dropdown to see input/output token counts and total cost per generation

## How to run it

Per [[summary-worldofai-open-swe|the WorldofAI walkthrough]]:

**Cloud option**: just use swe.langchain.com (free tier with limits, then paid).

**Self-hosted option** (the wiki's recommendation):

```bash
git clone https://github.com/langchain-ai/open-swe
cd open-swe
yarn install
# configure two .env files: web app + agent
yarn dev   # starts the LangGraph agent
# in another terminal:
yarn dev   # starts the web app
```

Then create a GitHub App for repository integration, configure webhooks via ngrok (for local) or your domain (for cloud), and point Open-SWE at your repo.

**Backend options**:
- **Bring your own API key** (Anthropic, OpenAI, Google, etc.)
- **Use [[openrouter|OpenRouter]]'s free tier** for cost-free remote inference
- **Use [[ollama|Ollama]] locally** for fully-local operation, no API costs

The local-via-Ollama path is the wiki's preferred configuration — it's the most aligned with the [[open-source-model-integration|open-source model integration]] thread.

## How it compares

| | Open-SWE | [[jules\|Google Jules]] | [[claude-code\|Claude Code]] | [[cursor\|Cursor]] | [[archon-os\|Archon OS]] |
|---|---|---|---|---|---|
| Form factor | Web UI + GitHub integration (cloud or self-hosted) | Cloud web UI | CLI agent harness | Standalone editor | Hosted dashboard |
| Async vs sync | **Async** (queue and walk away) | **Async** | Sync (interactive) | Sync (interactive) | Async (real-time editable task list) |
| Open source | **Yes** | No | No (open SWE-bench pipeline only) | No | **Yes** |
| Self-hostable | **Yes** | No | Local CLI | Local editor | **Yes** |
| Local model support | **Yes** ([[ollama\|Ollama]]) | No | Via [[open-source-model-integration\|substitution]] | Limited | **Yes** |
| Underlying framework | LangGraph | Custom Google | Custom Anthropic | Custom | Custom |
| Underlying model | Bring your own | Gemini 2.5 Pro | Claude (or substitute) | Multi | Bring your own |

Open-SWE's distinctive features:
- **Async + open-source + self-hostable + bring-your-own-model** — no single competitor matches all four
- Built on **LangGraph**, which means the agent's structure is inspectable and customizable in ways closed-source agents aren't

## Caveats from the source

- **Worldofai's framing is enthusiastic** ("INSANELY GOOD!" in the title) — discount per the channel's typical bias
- The cloud demo is the easy path; self-hosting requires GitHub App creation, ngrok setup for webhooks, and dual-yarn-dev terminal management. Not a 5-minute install.
- **Jules comparison is the framing** — the video keeps coming back to "this is what Jules does, but free." Useful for setting expectations, but if you don't already know what Jules does the comparison doesn't tell you what Open-SWE does on its own merits.
- **Demo project** in the video is a calendar app — small enough that the autonomous PR-opening worked. Larger codebases will stress-test the planning step.

## Where this fits in the wiki

- **Agentic coding platform proliferation** — Open-SWE is another entry in the [[saas-death-spiral|fragmenting agentic-coding market]]. Distinctive for being **async + open-source**, which is rare in this space.
- **Open-source agent frameworks** — alongside [[hermes-agent|Hermes Agent]], [[paperclip|Paperclip]], [[thepopebot|ThePopeBot]] in the open-source-agent-framework cluster
- **LangChain's product strategy** — Open-SWE is the wiki's first concrete LangChain-shipped product, which justifies the [[langchain]] org page

## See Also

- [[langchain]] — the org behind Open-SWE
- [[ollama]], [[openrouter]] — backend options
- [[claude-code]], [[cursor]], [[augment-agent]], [[firebase-studio]], [[archon-os]], [[deepcode]] — competing agentic-coding platforms
- [[saas-death-spiral]] — the broader market thesis
- [[hermes-agent]], [[paperclip]], [[thepopebot]] — adjacent open-source agent frameworks
- [[summary-worldofai-open-swe|Source: Open-SWE walkthrough]]
