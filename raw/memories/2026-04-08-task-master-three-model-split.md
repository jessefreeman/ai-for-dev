---
title: Task Master AI's three-model split (main / research / fallback)
summary: Task Master routes each AI coding task to one of three model slots; this is the cleanest stand-alone implementation of cost-routing for agent coding harnesses.
tags: [tool_taskmasterai, concept_cost_routing, topic_cost_reduction, source_task_master_ai_cursor_cline]
---

# Task Master AI's three-model split

## Context

From [[summary-task-master-ai-cursor-cline|100x Cursor + Cline with Task Master AI]]. See also [[task-master-ai]], [[multi-agent-orchestration]], [[open-source-model-integration]].

## Content

[[task-master-ai|Task Master AI]] is an open-source MCP server / CLI that decomposes a PRD into a structured task list and dispatches each task to one of **three model slots**:

| Slot | Default in demo | Job |
|---|---|---|
| **main** | Anthropic Sonnet | task generation, decomposition, execution |
| **research** | Gemini 2.5 Pro | context-gathering, library lookups, web research |
| **fallback** | Gemini 2.5 Flash | cheap retries when main fails or budget hits |

The thesis: **most tokens an AI coding agent burns are not hard reasoning** — they're context-loading, library research, and retry loops. Routing those to a cheap model and reserving the expensive model for the actual reasoning step is where the cost wins come from.

This is the **next abstraction layer above [[open-source-model-integration|raw model substitution]]**: instead of "swap one model for another," it's "use multiple models inside a single task and route by sub-step." [[agent-zero|AgentZero]] takes the same idea further with five model slots (main, utility, embedding, web-browsing, speech-to-text). Both are stand-alone tools that work *inside* any host harness ([[claude-code]], [[cursor]], [[cline]], etc.) via MCP — you don't have to change your harness to get the cost win.

License: MIT + Commons Clause. Authors: @eyaltoledano, @RalphEcom. Repo: github.com/eyaltoledano/claude-task-master.
