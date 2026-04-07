---
title: BMAD Method — Six Agile AI Personas for Complex Apps
summary: Brian's BMAD Method maps Agile roles (BA, PM, Architect, PO, SM, Dev) onto AI agents to plan apps before any code prompt, doing all expensive thinking outside the IDE.
tags: [concept_bmad_method, person_bmad_code, topic_ai_coding_workflow, topic_agile, source_bmad_code_aiadd_method]
---

# BMAD Method — Six Agile AI Personas for Complex Apps

## Context

From [[summary-bmad-code-aiadd-method|BMad Code's Better Than Vibe Coding video]]. See also [[bmad-method]].

## Content

**The chain** (each persona uses advanced thinking mode in a free LLM, not the coding IDE):

1. **Business Analyst** — refines the idea, elicits details
2. **Project Manager** — produces a PRD via deep research mode (OpenAI / Gemini)
3. **Architect** — produces an architecture doc (stack, libraries, schemas, deployment, security)
4. **Product Owner** — produces a granular sequenced task list
5. **Scrum Master** — produces epics + stories, each fully self-contained (data models, file locations, prior-story context)
6. **Developer** — picks one story per fresh chat thread in Cursor/Windsurf, writes tests, pushes if green

**The trick**: steps 1–5 happen in cheap/free LLM chat windows, *outside* the coding IDE. By the time the dev agent opens, it consumes one well-scoped story per fresh chat — no expensive context-rebuilding, no complex prompts, no rules. The story *is* the prompt.

**Test discipline**: every story includes tests; target 80–90% coverage as the project grows.

GitHub: bmadcode/BMAD-METHOD.
