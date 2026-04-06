---
title: Excalidraw Skill — Visual Validation Loop Pattern
summary: Cole Medin's Claude Code skill for diagrams uses a visual validation loop: generate JSON → render PNG → agent reviews screenshot → iterate 2-4 times before human review.
tags: [person_cole_medin, tool_claude_code, topic_skills, topic_diagrams, source_cole_medin_excalidraw_skill]
---

# Excalidraw Skill — Visual Validation Loop Pattern

## Context

From [[summary-cole-medin-excalidraw-skill|Cole Medin's Excalidraw skill video]]. See also [[Claude Code]].

## Content

**The core pattern**: Coding agents are bad at visual tasks. The fix is giving them the ability to check their own work.

**Visual validation loop:**
1. Agent generates Excalidraw JSON
2. Python script renders JSON to PNG
3. Agent views the PNG screenshot
4. Agent identifies imperfections and makes direct edits to the JSON
5. Repeats 2-4 times
6. Returns to human for 1-3 directed iterations

**Design philosophy** — "argue visually": structure and labels should convey the concept even with all explanatory text stripped. Two self-check questions: (1) Does the visual structure mirror the concept's behavior? (2) Could someone learn something concrete from this diagram?

**Practical note**: Complex diagrams must be built section-by-section to avoid the 32k token output limit.

**Installation**: Clone repo → copy to `.claude/skills/excal-diagram/` → works with any coding agent. Renders via excalidraw.com (free) or Obsidian Excalidraw plugin.
