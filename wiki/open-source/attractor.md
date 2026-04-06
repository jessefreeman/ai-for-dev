---
type: entity
sources: ["The 5 Levels of AI Coding (Why Most of You Won't Make It Past Level 2).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [open-source, coding-agent, dark-factory, specification]
---

# Attractor

The open-source coding agent powering StrongDM's dark factory — the most thoroughly documented Level 5 autonomous software development system in production. The agent's repo consists of just three markdown specification files. That's the entire agent.

## How It Works

The agent reads markdown specifications describing what the software should do, writes the code, and tests it. No human writes code. No human reviews code.

## Key Architecture Decisions

### Scenarios Instead of Tests
Traditional tests live inside the codebase — the AI agent can read them and optimize for passing tests rather than building correct software ("teaching to the test"). Attractor uses **scenarios**: behavioral specifications stored externally, describing what the software should do from an external perspective. The agent never sees evaluation criteria during development. Functions as a **holdout set** (same concept as ML overfitting prevention).

### Digital Twin Universe
Behavioral clones of every external service: simulated Okta, Jira, Slack, Google Docs/Drive/Sheets. Agents develop against digital twins — full integration testing without touching production.

## Production Output

CXDB (AI context store): 16,000 lines Rust, 9,500 lines Go, 700 lines TypeScript. Shipped, in production, built entirely by agents.

## The Team

Three engineers: Justin McCarthy (CTO), Jay Taylor, Nan Chowan. Running since July 2025. No sprints, no standups, no Jira. Write specs, evaluate outcomes.

## See Also

- [[Five Levels of AI Coding]] — framework this exemplifies
- [[AutoResearch and Evals]] — scenarios are evals by another name
- [[Four Prompting Disciplines]] — specification engineering powers this
- [[Nate B Jones]] — source
- [[summary-nate-b-jones-five-levels|Source: 5 Levels of AI Coding]]
