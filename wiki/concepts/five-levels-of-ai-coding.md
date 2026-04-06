---
type: concept
sources: ["The 5 Levels of AI Coding (Why Most of You Won't Make It Past Level 2).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [concept, ai-coding, dark-factory, specification, agents]
---

# Five Levels of AI Coding

A framework by **Dan Shapiro** (CEO, Glowforge) mapping where the industry actually stands in AI-assisted software development. Published early 2026. The name "vibe coding" is deliberately informal — the underlying reality is what matters. [[Nate B Jones]] uses this as the backbone for his analysis of the dark factory era.

## The Levels

### Level 0: Spicy Autocomplete
You type code. The AI suggests the next line. Accept or reject. GitHub Copilot in its original form — a faster tab key. **The human is writing the software.**

### Level 1: Coding Intern
Hand the AI a discrete, well-scoped task: write this function, build this component, refactor this module. Review everything that comes back. **AI handles tasks. Human handles architecture, judgment, integration.**

### Level 2: Junior Developer
AI handles multi-file changes, navigates codebases, understands dependencies, builds features spanning modules. You're reviewing more complex output but still reading all the code. **Shapiro estimates 90% of developers who say they're "AI-native" are here.** They think they're farther along than they are.

### Level 3: Developer as Manager
The relationship flips. You're not writing code with AI help — you're directing AI and reviewing output at the feature/PR level. The model does implementation, submits PRs. **Almost everybody tops out here** because of the psychological difficulty of letting go of the code.

### Level 4: Developer as Product Manager
Write a specification. Leave. Come back hours later and check whether tests pass. You're not reading code — you're evaluating outcomes. Code is a black box. **Requires trust in the system AND your ability to write spec.** The quality of spec writing is the bottleneck.

### Level 5: The Dark Factory
A black box that turns specs into software. No human writes code. No human reviews code. The factory runs autonomously with the lights off. Specification in, working software out. **Almost nobody on the planet operates here** — but those who do represent the future.

## StrongDM: Level 5 in Production

The most thoroughly documented dark factory. Three engineers (Justin McCarthy, Jay Taylor, Nan Chowan). Running since July 2025 — the inflection point was Claude 3.5 Sonnet enabling sustained coherent work across sessions.

**Architecture:**
- Runs on **[[Attractor]]**, an open-source coding agent. The repo is just three markdown specification files.
- **Scenarios instead of tests**: Tests live inside the codebase (agent can game them — "teaching to the test"). Scenarios are behavioral specifications stored externally as a holdout set. The agent never sees evaluation criteria during development.
- **Digital twin universe**: Behavioral clones of every external service (simulated Okta, Jira, Slack, Google Docs/Drive/Sheets). Full integration testing without touching production.
- **Output**: CXDB — 16,000 lines Rust, 9,500 lines Go, 700 lines TypeScript. In production, built entirely by agents.
- **Benchmark**: "If you haven't spent $1,000 per human engineer per day, your software factory has room for improvement."

Simon Willison: "The most ambitious form of AI-assisted software development that I've seen yet."

## The Self-Referential Loop

- **Claude Code**: 90% of codebase written by Claude Code itself. Boris Cherny hasn't written code in months.
- **Codex 5.3**: First frontier model instrumental in creating itself. 25% speed improvement, 93% fewer wasted tokens.
- **Anthropic**: Estimating functionally 100% of code is AI-generated. co-work shipped in 10 days by 4 engineers directing agents.
- **GitHub**: 4% of public commits by Claude Code; projected 20%+ by end of 2026.

## The J-Curve

METR randomized control trial: experienced open-source devs using AI tools completed tasks **19% slower**. They believed they were 24% faster. Wrong about both direction and magnitude.

Why: workflow disruption outweighs generation speed. Time spent evaluating suggestions, correcting "almost right" code, context switching between mental models, debugging subtle errors. Bolting AI onto existing workflows produces a productivity dip before it recovers.

**Most organizations are sitting in the bottom of the J-curve** and interpreting the dip as evidence AI doesn't work.

## The Bottleneck Shift

> "The bottleneck has moved from implementation speed to spec quality. And spec quality is a function of how deeply you understand the system, your customer, and your problem."

StrongDM has no sprints, no standups, no Jira board. Write specs. Evaluate outcomes. The entire coordination layer that constitutes the OS of a modern software org is deleted — not because it was eliminated as a cost-saving measure, but because it no longer serves a purpose.

## The Junior Developer Reckoning

- US: junior dev job postings down **67%**
- UK: graduate tech roles down **46%** in 2024, projected **53% further** by 2026
- The career ladder is hollowed from underneath: seniors at top, AI at bottom, thinning middle

The junior of 2026 needs the systems design understanding expected of a mid-level engineer in 2020.

## AI-Native Company Economics

| Company | Revenue | Team | Revenue/Employee |
|---------|---------|------|-----------------|
| Cursor | ~$500M ARR | ~few dozen | ~$3.5M |
| Midjourney | ~$500M | ~100 | ~$5M |
| Lovable | Multi-$100M | Scaling but behind revenue | Multi-$M |

Average for top 10 AI-native startups: ~$3M+/employee vs $600K SaaS average (5-6x).

## Migration Path for Existing Organizations

1. Use AI at L2/L3 to accelerate current work (expect the J-curve dip)
2. Use AI to **document what your system really does** — generate specs from code, build scenario suites
3. Redesign CI/CD for AI-generated code at volume
4. Shift new development to L4/L5 while maintaining legacy in parallel

> "You cannot dark factory your way through a legacy system."

## See Also

- [[Four Prompting Disciplines]] — specification engineering is the skill that unlocks L4/L5
- [[Frontier Operations]] — the human skills that persist at every level
- [[Attractor]] — the open-source agent powering StrongDM's dark factory
- [[AutoResearch and Evals]] — scenarios are evals; the convergence logic for autonomous agents
- [[Agentic Harness Primitives]] — production agent infrastructure
- [[Nate B Jones]] — source
- [[summary-nate-b-jones-five-levels|Source: 5 Levels of AI Coding]]
