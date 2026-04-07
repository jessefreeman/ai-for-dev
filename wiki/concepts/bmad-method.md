---
type: concept
sources: ["Better Than Vibe Coding Agile AI Driven Development for Complex Apps.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [concept, ai, agile, coding-workflow, agents]
---

# BMAD Method (Agile AI-Driven Development)

A structured workflow from [[bmad-code|Brian / BMad Code]] for building complex applications with AI coding agents. Replaces "vibe coding" with six sequenced AI personas drawn from traditional Agile, each handing artifacts to the next. The point is that **all the expensive thinking happens outside the IDE** — by the time Cursor or Windsurf opens, the agent only consumes one well-scoped story at a time.

GitHub: [bmadcode/BMAD-METHOD](https://github.com/bmadcode/BMAD-METHOD)

## The Six Personas

| Step | Persona | Tool / mode | Output |
|---|---|---|---|
| 1 | **Business Analyst** | Advanced thinking LLM (chat) | Refined idea, elicited details |
| 2 | **Project Manager** | Deep research mode (OpenAI / Gemini) | PRD — what to build, MVP scope |
| 3 | **Architect** | Advanced thinking LLM | Architecture doc — stack, libraries, schemas, deployment |
| 4 | **Product Owner** | Advanced thinking LLM | Granular, sequenced task list |
| 5 | **Scrum Master** | Advanced thinking LLM | Epics + stories, each fully self-contained |
| 6 | **Developer** | Coding IDE (Cursor / Windsurf) | One story per fresh chat thread, with tests |

All artifacts get converted to markdown and dropped into an `AAI/` folder for the dev agent to reference.

## Why It Works

- **Cost discipline** — steps 1–5 happen in free or cheap LLM chat windows, not in the IDE where every token burns credits
- **Context discipline** — each dev story is small enough to fit in one fresh chat thread without overwhelming the LLM
- **Test discipline** — every story includes tests; target 80–90% coverage as the project grows
- **No prompt engineering rabbit hole** — Brian explicitly avoids "complex prompts and complex rules for development agents." The story itself *is* the prompt.

## Story Granularity

Each story is written with everything the dev agent needs: data models from the architecture doc, file locations, project structure, context from the PRD specific to that story, and what's been done in previous stories. Some stories are **enabler stories** — e.g., "set up Vercel account, configure env vars, secure secrets" — which may need human action mixed with agent action.

## Compared to Other Workflows

- [[ai-coding-workflow|Cole Medin's PLANNING.md + TASK.md pattern]] — same goals (plan before coding, golden rules, reference docs in context), but compressed into two markdown files instead of six personas. BMAD is heavier; Cole's is lighter. Use BMAD for SaaS-scale builds, Cole's for projects under ~10 stories.
- [[four-prompting-disciplines]] — Nate B Jones's framing of "specification engineering" as the highest discipline. BMAD is one concrete instantiation: the PO + SM artifacts *are* specifications.
- [[five-levels-of-ai-coding]] — BMAD sits around L3–L4: heavy human orchestration of multiple AI roles to ship complex apps.

## See Also

- [[bmad-code]] — creator
- [[ai-coding-workflow]] — Cole Medin's lighter equivalent
- [[four-prompting-disciplines]] — the underlying specification-engineering thesis
- [[cursor]] — the dev-agent IDE Brian uses
- [[summary-bmad-code-aiadd-method|Source: Better Than Vibe Coding]]
