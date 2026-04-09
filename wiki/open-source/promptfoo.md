---
type: entity
sources: ["The Only Claude Skills You Need in 2026.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [open-source, security, red-teaming, plugin, hardening]
---

# Promptfoo

Open-source automated security testing for AI prompts. **18,000 GitHub stars**, VC-backed. Red-teaming, edge-case testing, vulnerability scanning. The source frames it as *"unit tests for your prompts."*

## What it does

- **Red-team test suites** against LLM-backed apps
- **Edge case generation** to find prompts that break expected behavior
- **Injection attack scanning** — the canonical defensive use case
- **Multi-model**: supports Claude, GPT, Gemini, Ollama, and others

## Why it matters in the wiki

This is the wiki's first dedicated **prompt-security tooling** entry. It slots directly into [[ai-personal-agent-hardening]] as offensive-tooling-for-defenders — the same way [[kali-linux]] provides offensive tools for network defenders. The five attack classes documented on the hardening page (tokenade, siege/wallet-drain, format-override jailbreak, faked-system-command injection, free-association exfiltration) are exactly the kind of thing a prompt-security harness should be testing for.

**Defensive framing:** capture and use for testing your own LLM apps, not for attacking others'.

## Type and platform

- **Type:** CLI / library
- **Platforms:** model-agnostic (Claude, GPT, Gemini, Ollama, etc.)
- **Status:** tracked

## Hands-on notes

*(empty)*

## Sources

- [[summary-dubibubii-claude-skills-2026|The Only Claude Skills You Need in 2026]] (2026-04-08)

## See Also

- [[agent-plugins]]
- [[ai-personal-agent-hardening]]
- [[kali-linux]]
- [[parseltongue]]
