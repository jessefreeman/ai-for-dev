---
title: Continue — VS Code/JetBrains Extension as Local Copilot Replacement
summary: Continue is the open-source IDE extension that turns any local Ollama (or OpenAI-compliant) endpoint into Copilot-style tab autocomplete + chat — the wiki's anchor for the self-hosted Copilot replacement thread.
tags: [tool_continue, tool_ollama, topic_local_ai, topic_copilot_alternative, person_wolfgangs_channel, source_wolfgangs_channel_self_host]
---

# Continue — VS Code/JetBrains Extension as Local Copilot Replacement

## Context

From [[summary-wolfgangs-channel-self-host-ai-code-assistant|Wolfgang's Channel walkthrough]]. See also [[continue]].

## Content

**What it is**: open-source VS Code and JetBrains extension. Apache 2.0. Site: continue.dev.

**What it provides** (two distinct features in one extension):
1. **Tab autocomplete** — Copilot-style inline suggestions as you type. Uses a smaller, faster model (3B–7B by convention) since latency matters more than depth.
2. **Chat panel** — full conversation interface inside the IDE, for "explain this," "rewrite this loop," etc. Uses a larger, slower model (34B+) since you'll wait for better answers.

**The split is configured separately** in Continue's JSON config — you specify a `tabAutocompleteModel` and a separate `models[]` list for chat. Wolfgang's framing: *"You're probably gonna want to have a lighter 7B or even 3B model for auto-suggestions, and leave beefy 34B and 70B models for chat interactions."*

**Backend support**: any [[ollama|Ollama]] endpoint, any OpenAI-compliant API (so [[docker-model-runner|Docker Model Runner]] also works), plus first-class support for cloud SaaS (Anthropic, OpenAI, Mistral). The wiki cares because it's the **local-Copilot-replacement bridge** — combined with Ollama on a homelab GPU, you get a complete self-hosted Copilot stack with no per-seat fees and no code leaving the machine.

**GPU dependency is real**: Wolfgang's hardware testing shows Continue produces useful results on a 7900XTX gaming PC and unusable hallucinations on a LattePanda Sigma MiniPC. The extension is free, the cost is the GPU it talks to. See the related memory `wolfgang-power-cliff-gpu-vs-minipc.md`.

**Different category from Cursor / Claude Code**: Continue is closest to JetBrains-feel autocomplete + IDE chat. It's not trying to be an agentic compose tool or a CLI agent harness. If you want "smarter typing" rather than "delegate code generation," this is the right tool.
