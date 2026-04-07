---
type: source-summary
sources: ["Better Than Vibe Coding Agile AI Driven Development for Complex Apps.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, youtube, agile, coding-workflow, agents]
---

# Better Than Vibe Coding: Agile AI Driven Development for Complex Apps

**Channel:** [[bmad-code|BMad Code (Brian)]]
**Format:** YouTube video (Part 1 of a series)
**Published:** 2025-04-07
**Sponsor:** None disclosed

## Summary

Brian, a 20-year software veteran, introduces the **BMAD Method** (Agile-AI Driven Development) as an antidote to vibe coding. Vibe coding works for toys but fails on complex apps: agents go off the rails, credits burn, fixes break previous code. BMAD maps six Agile personas (BA, PM, Architect, PO, Scrum Master, Dev) onto AI roles, doing all the planning *outside* the coding IDE so the dev agent only consumes one well-scoped story per fresh chat thread. GitHub: bmadcode/BMAD-METHOD.

See [[bmad-method]] for the full concept page.

## Key Points

- **Vibe coding fails on complex apps** — fine for play (space shooter, Super Whisper riffing), but for serious projects you need workflows and stability
- **BA → PM → Architect → PO → SM → Dev** — six sequential AI persona handoffs, each producing concrete markdown artifacts
- **Steps 1–5 happen outside the IDE** in free/cheap LLM chats with deep research modes — saves credits before Cursor/Windsurf opens
- **PRD from PM**, architecture doc from Architect (full stack, libraries, schemas, deployment), task list from PO, **epics + stories from SM**
- **Each story is fully self-contained**: data models, file locations, project structure, prior-story context — dev agent handles one story per fresh chat thread
- **Enabler stories** for setup tasks (account creation, env vars, secrets) — some doable by agent, some by human, but laid out explicitly
- **80–90% test coverage** target; tests written per story to prevent later regressions
- Brian deliberately avoids "complex prompts and complex rules" — the story *is* the prompt

## Sponsorship & Bias Notes

**Sponsor:** None disclosed.

**Product placement / affiliations:** BMAD-METHOD is Brian's own GitHub project — the video is essentially a soft launch/explainer. Disclosed by Brian himself, not hidden.

**Comparison bias:** Brian's claim that BMAD works "in industry, and I've tested this" is unverified — single-creator method, no third-party case studies in this video.

## Connected Pages

- [[bmad-method]] — full concept
- [[bmad-code]] — author hub
- [[ai-coding-workflow]] — Cole Medin's parallel/lighter pattern
- [[four-prompting-disciplines]] — broader theory of specification engineering
- [[five-levels-of-ai-coding]] — BMAD sits at L3–L4

## See Also

- [[summary-cole-medin-100x-ai-coding|Cole Medin's full AI coding process]] — adjacent and lighter
- [[summary-nate-b-jones-four-prompting-disciplines|Four Prompting Disciplines]] — the theoretical frame
