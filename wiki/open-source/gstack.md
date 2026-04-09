---
type: entity
sources: ["You NEED to try these open-source AI projects right now....md", "The Only Claude Skills You Need in 2026.md"]
created: 2026-04-06
updated: 2026-04-09
tags: [open-source, claude-code, startup, yc, productivity, plugin]
---

# GStack

An open-source Claude Code skill set by Gary Tan (President of Y Combinator) that brings YC's startup-building methodology to solo developers. The goal: give one person the leverage of an entire development team.

## What It Is

GStack is not a collection of individual tools — it's a process. A set of markdown-based prompts that teach Claude Code how to think like different startup roles: CEO, CTO, engineering manager, senior designer, design partner, staff engineer, debugger. Each role gets a dedicated prompt file that focuses the agent on problems through that lens.

The inspiration: Andrej Karpathy saying he hadn't typed a line of code since December. Gary Tan's question: *"How does one person ship like a team of 20?"*

## Key Skills

- **`/gstack office-hours`** — Six forcing questions that reframe your product before writing any code, modeled on actual YC office hours
- **`/gstack plan`** — CEO review: rethink the problem, find the "10-star product" (reference to Airbnb's Brian Chesky)
- **Engineering manager, senior designer, design partner, staff engineer, debugger** — role-specific analysis prompts for reviewing a codebase through that lens

## Installation

One command: copy the install prompt from the GStack docs and paste into Claude Code. It asks a few questions, requests permissions, and installs.

## Why It Matters

GStack is prompt engineering as open-source product. Reading the documentation is reading how Gary Tan actually thinks about startups, YC office hours, product-market fit. Because it's open source, you can inspect and adapt every prompt.

## Adoption

~50,000 GitHub stars within two weeks of launch (as of March 2026). Per the [[summary-dubibubii-claude-skills-2026|Dubibubii 2026-04 ingest]]: now at **~40,000 stars** (note: Dubibubii's number is lower than the earlier Berman figure — could reflect a star-count correction, double-counting, or measurement noise; the wiki keeps both as-recorded). **TechCrunch covered it** and a "this is like god mode" CTO testimonial screenshot went viral. The source frames the skeptical critique (*"it's just prompts in a text file"*) as accurate but missing the point — *"skills are literally just markdown files, and how you structure your Claude Code environment matters more than most people realize."*

## See Also

- [[agent-plugins]] — index of installable plugins
- [[Claude Code]] — the harness GStack is built for
- [[Superpowers]] — similar Claude Code skill set, more TDD-focused
- [[Matthew Berman]] — source
- [[summary-matthew-berman-open-source-projects|Source: Open-Source AI Projects]]
- [[summary-dubibubii-claude-skills-2026|Source: The Only Claude Skills You Need in 2026]]
