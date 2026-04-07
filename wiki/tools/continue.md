---
type: entity
sources: ["Host Your Own AI Code Assistant with Docker, Ollama and Continue!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [tool, ai, coding, ide-extension, open-source, local-ai, copilot-alternative]
---

# Continue

Open-source VS Code and JetBrains extension that turns any **local LLM** (or remote API) into a Copilot-style code assistant. The wiki's anchor entry for the **self-hosted Copilot replacement** thread — what you install when you want intelligent autocomplete and inline chat without sending code to GitHub or Anthropic.

- **Site**: continue.dev
- **License**: Apache 2.0
- **Editor support**: VS Code, JetBrains IDEs (IntelliJ family). Neovim extension "in the works" per [[wolfgangs-channel|Wolfgang's]] coverage, not yet shipped at the time of his August 2024 video — worth re-checking.
- **Backend support**: any [[ollama|Ollama]] endpoint, any OpenAI-compliant API, plus first-class support for Anthropic, Mistral, OpenAI, and other SaaS providers (the wiki uses it with local backends, but the SaaS support is real)

## What it does

Two distinct features bundled into one extension:

1. **Tab autocomplete** — Copilot-style inline suggestions as you type. Uses a separate, smaller "completion model" by convention (3B–7B), since latency matters more than depth here. You can specify any local model.
2. **Chat panel** — full conversation interface inside the IDE, for "explain this function," "rewrite this loop," "what's wrong with this Ansible task," etc. Uses a larger "chat model" by convention (34B+), since you're willing to wait for better answers.

The split is configured in a JSON config file inside the extension settings. Per [[wolfgangs-channel|Wolfgang]]: *"You're probably gonna want to have a lighter 7B or even 3B model for auto-suggestions, and leave beefy 34B and 70B models for chat interactions."*

## How [[wolfgangs-channel|Wolfgang]] uses it

From [[summary-wolfgangs-channel-self-host-ai-code-assistant|the Docker + Ollama + Continue self-hosting walkthrough]]:

1. Install Continue from the VS Code Marketplace
2. Open the JSON config (Continue's settings panel)
3. Set the Ollama endpoint URL to the homelab server (e.g., `http://192.168.1.x:11434`)
4. Specify two models: `tabAutocompleteModel: starcoder:3b` and `models: [codebooga, codellama:7b]` for chat
5. Restart VS Code and start writing code

The extension immediately starts producing inline suggestions sourced from the local Ollama instance. Wolfgang's test was an Ansible playbook — Continue correctly recognized the playbook context and started suggesting `hosts: all`, task structure, etc.

## Why it matters in the wiki

- **Practical alternative to [[claude-code|Claude Code]] for non-vibe-coders** — Continue is the closer-to-classical-IDE tool. You're not delegating code generation to an agent, you're getting smarter autocomplete with the same code privacy as a local Ollama setup.
- **The local-Copilot replacement** — combined with [[ollama|Ollama]] (or [[docker-model-runner|Docker Model Runner]]) and a GPU, it's a complete self-hosted Copilot stack with no per-seat fees and no code leaving the machine.
- **GPU dependency is real** — Wolfgang's data shows that without a dedicated GPU (130W gaming rig vs 4.6W MiniPC), Continue produces unusable suggestions. The extension itself is free and lightweight; the cost is the GPU it talks to. See also [[summary-alex-ziskind-vllm-fp8|Alex Ziskind's vLLM analysis]] for why local code assistance is GPU-bound.

## How it compares

| | Continue | [[claude-code\|Claude Code]] | [[cursor\|Cursor]] | GitHub Copilot |
|---|---|---|---|---|
| Form factor | IDE extension (VS Code, JetBrains) | CLI agent harness | Standalone editor | IDE extension (VS Code, JetBrains, Neovim) |
| Code generation style | Inline autocomplete + chat | Agentic file edits | Compose-style multi-file edits | Inline autocomplete + chat |
| Local model support | **Yes** (Ollama, any OpenAI API) | Via [[open-source-model-integration\|model substitution]] | Limited | No |
| Per-seat fee | None | Anthropic API costs | $20/mo+ | $10/mo+ |
| Best for | Self-hosted privacy + tab completion | Agentic workflows + planning discipline | Multi-file refactors with visual diffs | "Just install it and go" with cloud API |

Continue's positioning is closest to a **JetBrains-feel autocomplete + chat** experience with full local-model support. It's not trying to replace [[claude-code|Claude Code]] — different category.

## See Also

- [[ollama]] — the typical local LLM backend
- [[docker-model-runner]] — alternative local backend (also OpenAI-compliant)
- [[wolfgangs-channel]] — primary source for Continue coverage in the wiki
- [[claude-code]], [[cursor]] — adjacent agentic-coding tools (different category)
- [[open-source-model-integration]] — broader thread on substituting local models for paid APIs
- [[summary-wolfgangs-channel-self-host-ai-code-assistant|Source: Host Your Own AI Code Assistant]]
