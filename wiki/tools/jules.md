---
type: entity
sources: ["Google Jules New FULLY FREE Async AI Coder Is INSANE! RIP Codex and Copilot!.md"]
created: 2026-04-08
updated: 2026-04-08
tags: [tool, ai-coding, google, async-agent, gemini, free-tier]
---

# Google Jules

Google's free cloud-based async AI coding agent. Built on **[[gemini|Gemini]] 2.5 Pro**, connects to a GitHub repo, reads the full codebase, plans, executes in a sandboxed VM, and opens a pull request — including an audio summary of changes. Launched at Google I/O 2025.

- **Vendor**: Google (DeepMind / Labs)
- **Site**: jules.google
- **Model**: Gemini 2.5 Pro
- **Surface**: Cloud / web UI
- **Pricing**: Free, capped at **5 tasks/day** per account

## Workflow

1. Connect a GitHub repository
2. Describe the task in natural language
3. Jules reads the entire codebase, builds a plan, and executes it in a sandboxed VM
4. Opens a pull request with the changes
5. Generates an **audio summary** of what was done

## Position in the agent-coding landscape

Jules is the **first-party Google entry** in the async-coding-agent cluster. Before this source, [[open-swe|Open-SWE]] was tracked in the wiki as "the open-source Jules alternative" — but Jules itself wasn't a wiki entity because no first-party source had been ingested. This page closes that gap.

| | [[claude-code\|Claude Code]] | [[codex\|Codex]] | **Jules** | [[open-swe\|Open-SWE]] |
|---|---|---|---|---|
| Vendor | Anthropic | OpenAI | **Google** | LangChain (OSS) |
| Surface | CLI | CLI + Mac app | **Cloud / web** | Self-hostable |
| Async | Yes (Ultra Plan) | Yes | **Yes (cloud-native)** | Yes |
| Free tier | Pro $17 | Plus $20 | **Free, 5 tasks/day** | Free, BYO model |

## Why it matters

Jules is one of the strongest data points in the [[saas-death-spiral|SaaS death spiral]] thread: a major frontier lab shipping a *free* async coding agent against [[codex|Codex]] / GitHub Copilot / [[cursor|Cursor]] is the kind of move that breaks per-seat coding-tool pricing across the segment. Pairs with [[google-stitch|Google Stitch]] (UI design, also free, also Gemini-powered, also Google I/O 2025) as Google's coordinated free-tools push.

## Caveats

- The "Jules wrote 2,000+ LOC vs Codex's 77" demo is a single side-by-side example, not a benchmark — the *direction* is real, the exact ratio is not load-bearing
- 5-task daily cap is real — Jules is positioned as a **complementary** async tool, not a sole replacement for an interactive IDE agent

## Sources

- [[summary-worldofai-google-jules|Google Jules: New FULLY FREE Async AI Coder]] ([[worldofai|WorldofAI]], 2025-05-21) — first-party launch coverage; CRM-dashboard demo

## See Also

- [[google|Google]] — vendor
- [[gemini|Gemini]] — the model
- [[google-stitch|Google Stitch]] — sibling free Google I/O 2025 launch
- [[open-swe|Open-SWE]] — the open-source alternative
- [[codex|Codex]] — sibling closed-source product (OpenAI)
- [[claude-code|Claude Code]] — sibling closed-source product (Anthropic)
- [[saas-death-spiral|SaaS Death Spiral]] — why "free async coder" matters as a market move
