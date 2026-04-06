---
type: entity
sources: ["You NEED to try these open-source AI projects right now....md"]
created: 2026-04-06
updated: 2026-04-06
tags: [open-source, claude-code, tdd, productivity]
---

# Superpowers

An open-source Claude Code plugin (by "Ora") that enforces test-driven development and structured engineering workflow. The most-starred Claude Code enhancement tool as of March 2026.

## What It Does

Gives Claude Code a structured workflow enforcing TDD, YAGNI (You Aren't Gonna Need It), and DRY (Don't Repeat Yourself) principles. Described in its own docs as creating "an implementation plan that's clear enough for an enthusiastic junior engineer with poor taste, no judgment, no project context, and an aversion to testing to follow."

## Workflow

1. **Brainstorm**: Activates before writing code; refines rough ideas, explores alternatives, presents design in sections for validation, saves a design document
2. **Plan**: Writes implementation plans
3. **Execute**: Implements with TDD enforced throughout
4. **Review**: Code review pass
5. **Finish**: Merges the branch

By default uses worktrees for parallelizing coding agent work across branches.

## Comparison to GStack

Both are Claude Code skill sets focused on bringing structure to AI-assisted development. Key differences:
- GStack: startup-methodology focus, YC-style product thinking, role-based analysis (CEO/CTO/designer lenses)
- Superpowers: engineering-methodology focus, TDD-centric, plugin format vs copy-paste install

## Installation

```
claude plugin install superpowers@claude-plugins-official
```

Then: `/superpowers` to see available tools. `/superpowers brainstorm` to start.

## Adoption

**115,000+ GitHub stars** (as of March 2026) — by far the most-starred of the Claude Code skill/plugin projects.

## See Also

- [[GStack]] — complementary startup-methodology tool
- [[Claude Code]] — the harness Superpowers extends
- [[Agentic Harness Primitives]] — the production agent framework Superpowers overlaps with
- [[Matthew Berman]] — source
- [[summary-matthew-berman-open-source-projects|Source: Open-Source AI Projects]]
