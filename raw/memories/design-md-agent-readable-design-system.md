---
title: design.md — Agent-Readable Design System Export
summary: Google Stitch exports a design.md file that gives coding agents full design-system context (colors, typography, components) without Figma handoff.
tags: [person_nate_b_jones, tool_google_stitch, concept_mcp, topic_design, source_nate_b_jones_google_stitch]
---

# design.md — Agent-Readable Design System Export

## Context

From [[summary-nate-b-jones-google-stitch|Nate B Jones's Google Stitch video]]. See also [[Google Stitch]].

## Content

Google Stitch exports a `design.md` file — a markdown document capturing the full design system as it evolved during the design session: colors, typography, spacing rules, component patterns. It is agent-readable, not a Figma export or PDF.

**The pipeline this enables:**
1. Describe your business objective in Stitch (voice or text)
2. Stitch generates high-fidelity multi-screen UI
3. Export `design.md`
4. Coding agent (Claude Code, ChatGPT, etc.) reads `design.md` while building

**Result**: No Figma export, no handoff document, no "the developer interpreted the design wrong." The agent reads the design system and builds to it directly.

You can also extract `design.md` from any public URL — giving you a machine-readable representation of any site's design system.

Google shipped this as MCP-readable and included official Claude Code skills (installable playbooks) teaching the agent how to work with Stitch outputs.
