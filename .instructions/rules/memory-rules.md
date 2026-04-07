# Memory Rules

`raw/memories/` holds atomized memory snippets ingested by the RavenBrain MCP server. Each file is **one atomic fact, concept, or recall item** — the kind of thing someone would ask an agent: *"How does technique X work?"* or *"Which source covered topic Y?"*

## Format

```markdown
---
title: Short Descriptive Title
summary: One sentence — what this memory captures.
tags: [person_name, tool_name, topic_name, source_slug]
---

# Short Descriptive Title

## Context

Where this came from. Link to the source-summary wiki page and any relevant entity/concept pages.
Example: `From [[summary-author-keyword|Source Title]]. See also [[Related Concept]].`

## Content

The atomic fact, method, claim, or concept. Self-contained — someone reading only this file should get the complete answer without needing to open the source.
```

## Tag taxonomy

YAML arrays only: `tags: [person_firstname_lastname, tool_toolname]`

- `person_[firstname_lastname]` — e.g. `person_jane_doe`
- `tool_[toolname]` — e.g. `tool_examplecli`, `tool_exampleapp`
- `concept_[name]` — e.g. `concept_multi_agent`, `concept_token_budget`
- `topic_[name]` — broad grouping — e.g. `topic_cost_reduction`, `topic_local_ai`
- `source_[slug]` — e.g. `source_author_keyword`

## What to capture

Good memories:
- Specific methods or steps (*"How do you configure feature X in tool Y?"*)
- Key claims with numbers (*"Tool A is 20× cheaper than Tool B for workload Z"*)
- Named frameworks or patterns (*"The X diagnostic"*)
- Important distinctions (*"State A vs State B"*)
- Tool overviews (*"What is Tool X and what does it solve?"*)
- Quotes or theses worth recalling (*"Building agents is 80% plumbing"*)

Skip:
- Information already obvious from a wiki page title
- Full summaries (that's `wiki/sources/`)
- Redundant memories covering the same fact

## Naming

Kebab-case descriptive slugs: `tool-feature-config-pitfall.md`, `pattern-name-shorthand.md`.

## Volume

Aim for **3–8 memories per source** depending on density. Prefer fewer high-quality memories over many redundant ones.
