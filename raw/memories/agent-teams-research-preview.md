---
title: Claude Code Agent Teams — research preview, Opus 4.6
summary: New peer-to-peer agent collaboration primitive shipped as research preview with Opus 4.6. Opt-in via env var. Costs 4-7× tokens. Only for genuine cross-discipline coordination.
tags: [tool_claude_code, concept_multi_agent, concept_design_patterns, source_simon_scrapes_claude_code_workflows]
---

# Agent Teams — Claude Code research preview, Opus 4.6

## Context

From [[summary-simon-scrapes-claude-code-workflows|Simon Scrapes — Every Claude Code Workflow Explained]]. See also [[claude-code]], [[llm-design-patterns]] § Pattern 4, [[claude-code-subagents]].

## Content

**Agent Teams** is the newest Claude Code multi-agent primitive — shipped as a research preview with Opus 4.6. Implements [[llm-design-patterns#pattern-4-agent-teams]].

**Opt-in**: add to `settings.json`:
```
CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1
```

Then specify *"use an agent team"* explicitly in your prompt. **Claude does NOT auto-route** to agent teams the way it auto-routes to sub-agents — you must request it explicitly.

**Architectural difference from sub-agents (Pattern 3)**:
- Sub-agents: hub-and-spoke. Sub-agents can only report back to the main agent. They cannot talk to each other.
- Agent Teams: peer-to-peer. Agents share a **task list** and can **send messages directly to each other**. They no longer interact only through the team lead.

**Terminal navigation**: shift+up / shift+down navigates between teammates. Message a teammate directly or talk to the team lead.

**Cost**: **4–7× more tokens** than a single session. Sources of cost:
1. Cross-agent messaging back-and-forth
2. Each teammate is a full Claude Code instance with its own context window
3. Shared task list overhead

**When to use**: complex multi-discipline projects where genuine cross-collaboration is required. Canonical example: front-end dev + back-end dev + test dev that have to coordinate as they build. **When NOT to use**: anything sub-agents or a single session could handle — which is *most* tasks.

**Wiki framing**: treat as a power-user tool with a high cost ceiling. *"A lot of people in the community are just saying that actually this is just a way to produce large quantities of work very quickly, which isn't necessarily a good thing. You still need the work to be the right work."* — Simon Scrapes
