---
type: entity
sources: ["I built something.....md"]
created: 2026-04-08
updated: 2026-04-08
tags: [tool, agent-packaging, registry, agent-workflows, matthew-berman]
---

# Journey / Journey Kits

**A registry and package manager for end-to-end AI agent workflows.** Built by [[matthew-berman|Matthew Berman]], launched April 2026 at `journeykits.ai`. The unit of distribution is a **kit** — a single installable bundle that packages everything an agent needs to reproduce a workflow: skills, tools (regular code), learnings, memories, services, schemas, tests, and failure examples. Tagline: **"npm for agent workflows."**

- **Site**: journeykits.ai
- **Vendor**: Matthew Berman / Forward Future
- **Pricing**: free for public registry use (publish + discover + install); team/enterprise tiers TBD
- **CLI install**: `npm install -g journey-kits`
- **Agent install**: copy a prompt → paste into any agent → agent fetches and installs the kit
- **Host agnostic**: OpenClaw, Nemoclaw, Hermes Agent, [[claude-code|Claude Code]], Claude Desktop, Cloud Co-work — kits adapt to whatever harness you're running

## The kit format

A "kit" is a single installable bundle containing:

| Component | What it is |
|---|---|
| `kit.md` | Human-readable spec: goal, when-to-use, setup steps, validations, outputs |
| **Dependencies** | API keys, runtimes (Node), CLIs |
| **Verified harnesses** | List of agent harnesses where the kit is known to work |
| **Models** | Main model + embeddings model (interchangeable) |
| **External services** | Pointers to APIs the kit uses (FX Twitter, Firecrawl, Chrome DevTools) |
| **Failures overcome** | Documented edge cases the publisher already solved |
| **Skills** | Agent-side instruction documents |
| **Database schemas** | The publisher's actual SQL, customizable |
| **Source files** | Traditional code (tools) the agent can run |
| **Versioning** | Every release tracked; consumer agents prompt for upgrades with changelogs |
| **Learnings** | Post-install feedback from consumer agents (model + version + what worked) flows back into the kit |

## What's borrowable (the user's interest)

Reading Journey through the lens of *what concepts could be applied elsewhere* — the answer the user explicitly asked for:

1. **`kit.md` as a single-file workflow spec.** A markdown file that captures goal + dependencies + setup + failures + validation in one place is a small idea but a load-bearing one. Pairs with (and is conceptually similar to) Cole Medin's [[ai-coding-workflow|PLANNING.md / TASK.md]] pattern, but oriented around *packaging* instead of *in-repo planning*.
2. **"Failures overcome" as a first-class kit field.** Most package managers ship code; Journey ships **the negative space around the code** — the edge cases the publisher already debugged. This is the strongest single concept in the format. Nothing in skills.sh, MCP, or Cole's local-AI-packaged stack does this explicitly. **Borrow this in any wiki page that captures a workflow** — make "failures overcome" or "things to watch for" a standard section.
3. **Shared resources without storing credentials.** Journey stores **the pointer** to where credentials live (1Password, vaulted DB connection strings, etc.), not the credentials themselves. The consumer agent fetches credentials via the pointer at install/runtime. This is the right pattern for any "private registry across multiple agents" architecture — solves the secrets-leakage problem without requiring a custom secrets manager. Applicable to [[archon-os|Archon OS]], MCP server distribution, or any team-shared agent deployment.
4. **Learnings flowing back into the kit.** Post-install feedback ("this kit works on Node 20 + GPT-5.4") becomes part of the kit definition, not a separate channel. Kits get better over time without the publisher needing to re-publish. Conceptually adjacent to [[hermes-agent|Hermes Agent]]'s GEPA self-improvement loop, but applied to *packaging* rather than *runtime behavior*.
5. **Host adaptation as a kit responsibility.** Kits adapt themselves to OpenClaw / Nemoclaw / Claude Code / etc. rather than shipping separate variants. The kit is responsible for sniffing its environment and configuring itself. **This is the inverse of MCP's approach** (MCP defines a protocol that hosts implement uniformly); Journey defines a *bundle* that adapts to whatever protocol the host happens to use. Both work; Journey's approach is more practical for the long tail of host-specific quirks.
6. **Versioning + changelog + agent-prompted upgrades.** Standard package-manager fare, but the *agent-prompted* upgrade UX (consumer's agent says "hey, there's a new version; here's the diff; want to update?") is the right pattern for agent-team operations. Borrow for any auto-updating agent system.
7. **Reputation scoring for publishers.** Useful kits → high reputation → more discoverability. This is npm's worst gap, and Journey ships it on day one.

## How it sits in the wiki's existing threads

| Thread | Where Journey fits |
|---|---|
| **[[agentic-harness-primitives\|Agentic Harness Primitives]]** | Journey is a user-facing implementation of the *tool registry*, *agent type system*, and *tool pool assembly* primitives. Specifically: kits are tool pools with metadata. |
| **[[skills-sh\|skills.sh]]** | Sibling registry, narrower scope. skills.sh ships *skills* (markdown + scripts) for one host (Claude Code). Journey ships **everything that surrounds the skill** and is **host-agnostic**. Journey is what skills.sh becomes when you treat "publishable agent capability" as a software-distribution problem. |
| **[[mcp\|MCP]]** | Complementary, not competing. Journey is a *packaging* layer; MCP is a *protocol* layer. A Journey kit can wrap an MCP server, and many do. |
| **[[archon-os\|Archon OS]]** | Sibling "AI OS for AI coding" with overlapping packaging instincts. Archon is the *runtime knowledge backbone*; Journey is the *distribution format* for workflows that run on top of any backbone. |
| **[[ai-coding-workflow\|Cole Medin's PLANNING.md / TASK.md pattern]]** | The lightweight in-repo cousin. Cole's pattern is "structure your prompts inside a single project." Journey's pattern is "structure your workflow so it can be installed by someone else's agent." |

## Caveats

- **Single-source coverage** at recording time. Berman's own launch video. Treat capability claims as marketing position until a third-party walkthrough lands.
- **Kit format is described, not formally specified** at recording time. Long-term portability depends on whether Berman publishes the spec.
- **Free, but enterprise pricing TBD**. Standard pre-monetization SaaS pattern; worth tracking whether the public registry stays free.
- **Host adaptation is a claim** — kits *say* they adapt to OpenClaw/Nemoclaw/etc, but in practice the verification surface is small. Real test is whether a kit published from one host installs cleanly in another without manual fixes.

## Sources

- [[summary-matthew-berman-journey-kits|I Built Something — Matthew Berman Introduces Journey Kits]] (2026-04-04)

## See Also

- [[matthew-berman|Matthew Berman]]
- [[agentic-harness-primitives|Agentic Harness Primitives]]
- [[skills-sh|skills.sh]]
- [[claude-code-subagents|Claude Code Sub-Agents]]
- [[archon-os|Archon OS]]
- [[mcp|MCP]]
- [[ai-coding-workflow|AI Coding Workflow (Cole Medin)]]
- [[hermes-agent|Hermes Agent]] — sibling self-improving instinct
