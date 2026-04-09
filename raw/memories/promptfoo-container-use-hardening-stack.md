---
title: Promptfoo + Container-Use as the install-grade hardening stack
summary: Two plugins from the Dubibubii ingest fill both ends of the personal-agent-hardening discipline — pre-ship prompt testing and post-ship sandboxing.
tags: [concept_ai_personal_agent_hardening, tool_promptfoo, tool_container_use, source_dubibubii_claude_skills_2026]
---

# Promptfoo + Container-Use as the install-grade hardening stack

## Context

From [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08). Both tools are referenced from [[ai-personal-agent-hardening]]. See [[promptfoo]] and [[container-use]].

## Content

The wiki's [[ai-personal-agent-hardening]] discipline names five attack classes (tokenade, siege/wallet-drain, format-override jailbreak, faked-system-command injection, free-association exfiltration) and two defensive rules (human-in-loop quarantine; frontier model as scanner). Until the Dubibubii ingest, the page had **no concrete tooling answers** — only principles.

Two plugins from the ingest fill both ends:

| Surface | Plugin | What it provides |
|---|---|---|
| **Pre-ship** | [[promptfoo]] | Automated red-teaming, edge-case testing, injection scanning. Multi-model (Claude, GPT, Gemini, Ollama). 18K stars, VC-backed. *"Unit tests for your prompts."* |
| **Post-ship** | [[container-use]] | Per-agent containerized sandbox by Dagger (founded by Solomon Hykes / Docker creator). Each agent gets an isolated environment that physically cannot reach the host. The install-grade implementation of rule 1 (human-in-loop quarantine). |

Together they bracket the agent lifecycle: promptfoo tests the prompts before the agent ships, container-use contains the agent after it ships. This is the wiki's first **dual-tooling answer** to a hardening discipline that was previously principle-only.
