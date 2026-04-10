---
title: Ralph Loop Now Has Archon Implementation
summary: The Ralph loop (headless re-feed-until-done pattern) and Cole Medin's PIV loop now have first-class Archon workflow implementations.
tags: [concept_llm_design_patterns, tool_archon, source_archon_readme]
---

# Ralph Loop Now Has Archon Implementation

## Context

From [[summary-archon-readme|Archon README]]. See also [[llm-design-patterns]], [[archon-os]].

## Content

Two previously name-checked-but-not-implemented patterns from [[llm-design-patterns]] now have concrete Archon workflows:
- **`archon-ralph-dag`** — the Ralph loop: iterate through PRD stories until done. A community pattern for shipping full projects overnight by re-feeding the same prompt until output meets criteria.
- **`archon-piv-loop`** — guided Plan-Implement-Validate with human review between iterations. Cole Medin's PIV pattern from his E2E testing methodology.

Both use Archon's loop node system (`loop.until` + optional `fresh_context: true` for clean sessions each iteration).
