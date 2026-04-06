---
title: Hermes Agent — The Self-Improving Agent Loop
summary: Hermes Agent by Nouse Research implements a closed learning loop where the agent autonomously creates and improves skills from experience across sessions.
tags: tool_hermes_agent, topic_self_improving, topic_agent_memory, source_matthew_berman_open_source_projects
---

# Hermes Agent — The Self-Improving Agent Loop

## Context

From [[summary-matthew-berman-open-source-projects|Matthew Berman's open-source AI projects video]]. See also [[Hermes Agent]].

## Content

Hermes Agent is an open-source agent framework by Nouse Research. Its differentiator: a built-in closed learning loop inspired by Andrej Karpathy's auto-research project.

**The self-improving loop:**
- **Autonomous skill creation**: After completing complex tasks, Hermes automatically creates reusable skills from what it learned
- **Skills self-improve during use**: Existing skills get refined each time they're used
- **Agent-curated memory**: The agent decides what to remember and when; periodic nudges to persist key knowledge
- **Cross-session learning**: Searches its own past conversations; builds a deepening model of the user over time

**How this differs from other agents**: Most agents use the same capability level regardless of past interactions. Hermes accumulates task-specific skills that improve with each use — closer to how a human employee gets better at their job over time.

**Practical consequence**: Over time, Hermes should get faster and more accurate at tasks it has done before, as it has both the memory and the refined skills to apply.

**Also notable**: OpenClaw migration path — import existing workflows and memories without starting from scratch.
