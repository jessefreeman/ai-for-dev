---
type: source-summary
sources: ["Build BEAUTIFUL Diagrams with Claude Code (Full Workflow).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [source, video, claude-code, skills, diagrams]
---

# Build Beautiful Diagrams with Claude Code (Full Workflow)

**Source**: YouTube — [[Cole Medin]], published 2026-03-02
**Link**: https://www.youtube.com/watch?v=m3fqyXZ4k4I

## Summary

Cole Medin shares his Excalidraw diagram skill for Claude Code — a packaged workflow for generating high-quality visual diagrams from natural language. The key innovation is the **visual validation loop**: the agent generates a diagram, renders it as PNG, reviews the screenshot, and iterates on imperfections before returning control to the human.

## Core Pattern: Argue Visually

The skill's design philosophy: structure and labels should convey the concept even if all explanatory text is stripped. Two self-check questions: (1) Does the visual structure mirror the concept's behavior? (2) Could someone learn something concrete from this diagram?

## Workflow

1. **Assess depth** — simple diagrams built at once; complex ones built section-by-section (32k token output limit)
2. **Map pattern** — determine shapes, text, layout
3. **Build JSON** — generate Excalidraw-compatible JSON
4. **Visual validation loop** — render PNG via Python script → agent reviews image → makes direct edits to JSON → repeats 2-4 times
5. **Human review** — typically 1-3 additional directed iterations to reach final quality

## Installation

Clone GitHub repo → copy to `.claude/skills/excal-diagram/` → skill.md provides the instruction set. Works with any coding agent. Renders via excalidraw.com (free) or Obsidian Excalidraw plugin.

## Connection to AutoResearch

[[Nick Saraev]] used a diagram generator skill as his AutoResearch example (improving from 32/40 to 39/40 eval score). Cole's skill represents the manual design approach; AutoResearch represents the automated improvement approach. Complementary.

## Pages Created or Updated

- [[Cole Medin]] — new
- [[Claude Code]] — Excalidraw skill mentioned in skills ecosystem

## See Also

- [[AutoResearch and Evals]] — automated skill improvement methodology
- [[Claude Code]] — the harness this skill is built for
- [[Impeccable]] — another design-focused Claude Code skill
