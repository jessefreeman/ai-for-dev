---
type: source-summary
sources: ["This One Command Makes Coding Agents Find All Their Mistakes (Use it Now).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [source, video, claude-code, testing, validation]
---

# This One Command Makes Coding Agents Find All Their Mistakes

**Source**: YouTube — [[Cole Medin]], published 2026-02-25
**Link**: https://www.youtube.com/watch?v=YeCHI1dmpZY

## Summary

Cole Medin packages his AI code validation process into a single Claude Code command (`/e2e test`). The skill runs a 6-step end-to-end testing framework: parallel sub-agent research, browser automation through user journeys, database validation, screenshot review, and a self-healing loop that fixes blocking issues before returning control. He calls it the "self-healing AI coding workflow."

## The 6-Step Framework

1. **Prereq check** — verify browser CLI, OS, frontend exists
2. **Research phase** — 3 parallel sub-agents: (a) app structure + user journeys, (b) database schema, (c) code review / bug hunt
3. **Start dev server** — spin up the full application
4. **Define task list** — identify every user journey to test
5. **For-loop through journeys** — for each: browser automation (Vercel Agent Browser CLI) + DB queries + screenshots. Self-fix blocking issues, then move to next journey.
6. **E2E report** — structured output: what was fixed, remaining issues, screenshots, optional markdown export for new context window

## Key Patterns

- **Visual validation via screenshots**: Agent takes screenshots at key points and reviews them (same pattern as Cole's Excalidraw skill)
- **Self-healing loop**: Agent only fixes blocking issues during testing; moderate/minor issues are reported for human decision
- **Database branching** (Neon): Create isolated test database branch, run all tests, delete branch — keeps dev DB clean
- **PIV loop**: Plan → Implement → Validate. E2E testing is the V.

## Pages Created or Updated

- [[Cole Medin]] — updated (3rd source)
- [[Claude Code]] — E2E testing mentioned in skills

## See Also

- [[AutoResearch and Evals]] — eval design as a concept; E2E testing is a comprehensive eval
- [[Five Levels of AI Coding]] — scenarios (StrongDM) are E2E testing's philosophical cousin
