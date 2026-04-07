---
title: Claude Code Ultra Plan — Cloud Opus 4.6 + 3 Exploration Agents + 1 Critique
summary: Claude Code's /ultra-plan offloads planning to a cloud-hosted Opus 4.6 instance running 3 parallel exploration agents and 1 critique agent — produces clearer plans that make local execution dramatically faster.
tags: [tool_claude_code, concept_planning, topic_multi_agent, person_nate_herk, source_nate_herk_ultra_plan]
---

# Claude Code Ultra Plan — Cloud Opus 4.6 + 3 Exploration Agents + 1 Critique

## Context

From [[summary-nate-herk-ultra-plan|Nate Herk's Ultra Plan video]]. See also [[claude-code]] for the full feature breakdown.

## Content

**What it is**: a cloud-hosted planning mode for Claude Code (research preview, April 2026). Trigger with `/ultra-plan <prompt>` from the CLI, or include "ultra plan" anywhere in a prompt and Claude offers to run it.

**The architecture**: cloud-hosted **Opus 4.6** running **3 parallel exploration agents + 1 critique agent**. Multi-agent exploration is the structural reason Ultra Plan produces better plans than local single-agent linear thinking.

**The benchmark** (Nate Herk's side-by-side dashboard build, same prompt to two sessions):
- **Local plan mode**: ~45 minutes total. Planning alone took 12+ minutes; execution took upwards of 30 minutes.
- **Ultra Plan**: ~10–15 minutes total. Plan in ~5 min, execution in another ~5–10 min.

**The surprise**: Ultra Plan made *execution* faster too. Inferred reason: clearer plans give the local execution agent less to figure out at runtime. Lincoln quote Nate uses: "Give me 6 hours to chop down a tree and I will spend the first four sharpening the axe."

**Review surface**: doc-style web UI with sections (context, what exists, new approach, files to create, modifications, verification). Comment on individual sections or leave emoji reactions. Send comments → Claude iterates the plan. "Approve plan" teleports it back to the terminal for local execution.

**Requirements / gotchas**:
- Project **must be git/GitHub-synced** — Claude reads the codebase from the cloud
- **CLI only** — VS Code extension and desktop app don't trigger Ultra Plan even if you type the command
- **Pro or Max subscription required** — API billing doesn't work
- **Token usage is opaque** — ~1% of a Max 20x plan per ultra-plan run; no explicit counter
- **Skill invocation can miss** — even though Ultra Plan can see the whole project, it sometimes needs explicit prompting to use a specific skill
- **30-minute cloud cap** on planning (Nate has never hit it)

**When it's worth it**: non-trivial features where plan quality dramatically affects execution quality. Skip for trivial changes — local plan mode is fine.

**Relationship to manual planning patterns**: Ultra Plan automates what [[ai-coding-workflow|Cole Medin]] and [[bmad-method|BMAD Method]] do by hand. They're complementary, not competing — the structural lesson is the same: spend more on planning, save more on execution.
