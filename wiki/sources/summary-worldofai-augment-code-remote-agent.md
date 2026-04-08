---
type: source-summary
sources: ["Augment Code UPDATE RIP Cursor! NEW AGENT! AI Software Engineer Automates Your Code! (New Agent).md"]
created: 2026-04-08
updated: 2026-04-08
tags: [source, video, augment-agent, ai-coding, cloud-agent, async]
---

# Augment Code UPDATE: Remote Agent (Cloud, 10 Parallel Instances)

**Source**: YouTube — [[worldofai|WorldofAI]], published 2025-05-09
**Tool**: [[augment-agent|Augment Agent]]

## Summary

Walkthrough of [[augment-agent|Augment Code]]'s new **Remote Agent** feature: a cloud-hosted version of the Augment agent that runs in an **isolated, mirrored dev environment** (not on the developer's laptop) and supports up to **10 parallel agents** working simultaneously while the human is offline. Targeted at the "queue and walk away" workflow — assign issues, agents handle PR drafts, tests, documentation debt; the dev reviews when ready. Waitlist-only at the time of recording (`augment.new`). Same VS Code / JetBrains / Vim editor support, but the agent runs server-side.

## Key facts

- **Cloud-based**: agent runs in an isolated mirrored dev environment, not local
- **10 parallel agents** per session
- **GitHub integration**: PR creation, CI/CD automation, branch protection
- **Editor support**: VS Code, JetBrains, Vim
- **Status at recording**: waitlist-only on `augment.new`

## Why it matters

Remote Agent is Augment's **async / cloud move**, putting it directly in the same category as [[jules|Google Jules]], [[summary-worldofai-google-jules|the Codex async pattern]], and [[claude-code|Claude Code Ultra Plan]]. Augment had been the *interactive IDE-extension* leader (#1 OSS on SWE-bench Verified per their launch); Remote Agent extends that to the queue-and-walk-away surface.

The **10 parallel agents** number is the wiki's first concrete data point on horizontal-scaling for a single dev — multi-agent at the *individual* level rather than the *org* level (cf. [[paperclip|Paperclip]]'s company-sim framing).

## Position in the async cloud agent cluster

| | [[jules\|Jules]] | [[codex\|Codex]] (cloud) | **Augment Remote Agent** | [[open-swe\|Open-SWE]] |
|---|---|---|---|---|
| Vendor | Google | OpenAI | Augment Code | LangChain (OSS) |
| Parallel agents | 1 | 1 | **10** | 1 |
| Free tier | Yes (5/day) | Plus subscription | Waitlist | Yes (BYO model) |
| Local IDE link | No | CLI / Mac app | **Yes (mirrored env)** | Self-hostable |

## See Also

- [[augment-agent|Augment Agent]]
- [[jules|Google Jules]]
- [[codex|Codex]]
- [[claude-code|Claude Code]]
- [[saas-death-spiral|SaaS Death Spiral]]
- [[worldofai|WorldofAI]]
