---
type: entity
sources: ["I Broke Down Anthropic's $2.5 Billion Leak. Your Agent Is Missing 12 Critical Pieces..md", "A Markdown File Just Replaced Your Most Expensive Design Meeting. (Google Stitch).md", "Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md", "'Prompting' Just Split Into 4 Skills. You Only Know One. Here's Why You Need the Other 3 in 2026..md", "You Don't Need SaaS. The $0.10 System That Replaced My AI Workflow (45 Min No-Code Build).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [person, ai, agent, educator]
---

# Nate B Jones

AI strategy educator and daily content creator. Focuses on production agent architecture, AI development workflows, and translating AI research into actionable engineering guidance for builders.

## Channels

- **YouTube**: [AI News & Strategy Daily | Nate B Jones](https://www.youtube.com/@natebjones) — daily AI strategy and news
- **Newsletter**: [natesnewsletter.substack.com](https://natesnewsletter.substack.com) — deeper playbooks, prompts, and skills
- **Site**: [natebjones.com](https://natebjones.com)
- **Podcast**: *AI News & Strategy Daily* — available on Spotify and Apple Podcasts

## Content in This Wiki

- [[summary-nate-jones-12-agent-primitives|I Broke Down Anthropic's $2.5 Billion Leak]] — Analysis of the leaked Claude Code architecture; distills [[Agentic Harness Primitives]] (12 primitives, 3 tiers) for production agent systems. Also released an agentic harness skill for Claude Code and OpenAI Codex.
- [[summary-nate-b-jones-google-stitch|A Markdown File Just Replaced Your Most Expensive Design Meeting]] — Three March 2026 creative tool releases (Google Stitch, Remotion, Blender MCP) and the thesis that MCP is the growth hack of 2026; design is shifting to the command line.
- [[summary-nate-b-jones-loop-openbrain|Anthropic Just Gave Your Agent the One Thing OpenClaw Has]] — Introduces [[/loop]] (Anthropic's proactivity command), [[OpenBrain]] (SQL + MCP memory), and the three-primitive agent stack. Argues you can replicate [[OpenClaw]] without the security risks. References Karpathy's AutoResearch and Toby Lutke's agent-optimized model.
- [[summary-nate-b-jones-four-prompting-disciplines|Prompting Just Split Into 4 Skills]] — The [[Four Prompting Disciplines]] framework: Prompt Craft → Context Engineering → Intent Engineering → Specification Engineering. Five specification primitives. The Klarna warning. Toby Lutke on prompting as communication discipline.
- [[summary-nate-b-jones-openbrain-architecture|The $0.10 System That Replaced My AI Workflow]] — The definitive [[OpenBrain]] architecture guide: Postgres + PGVector + Supabase + MCP. Walled garden problem. Human web vs agent web. Four lifecycle prompts. The compounding advantage thesis.

## Key Ideas

- **"Building agents is 80% plumbing, 20% AI"** — the core thesis from his Claude Code leak analysis
- Premature complexity is the most common agent failure mode: building multi-agent coordination before sessions survive crashes
- Released an agentic harness skill with two modes: design mode (architect a new harness) and evaluation mode (audit an existing codebase against the 12 primitives)
- Framed the Anthropic leaks (Claude Mythos + Claude Code) as a velocity vs. operational discipline question
- **"MCP is the growth hack of 2026"** — if your product isn't an MCP server, it should be; MCP turns any tool into an agent-accessible command-line primitive
- Design is following development to the command line: the product-design-engineering triangle collapses when "is this buildable?" is answered instantly
- **Three Lego bricks every agent needs**: Memory + Proactivity + Tools. Remove any one and the agent stops being useful. OpenClaw's explosive appeal is reducible to these three.
- **"The value of a loop isn't in any single cycle — it's in the accumulation across cycles"** — the compound interest thesis for agent work
- The terminal is "free time travel" — developers get agent capabilities months before everyone else just by being willing to use a different window
- **[[Four Prompting Disciplines]]**: Prompting has diverged into four skills (prompt craft, context engineering, intent engineering, specification engineering). Most people only practice the first. The gap is 10x.
- **"Memory architecture determines agent capabilities much more than model selection does"** — the compounding advantage of owning your memory infrastructure
- The human web vs agent web fork: note-taking apps are built for human eyes; agents need infrastructure designed for machine-to-machine readability
- **Klarna as anti-example**: Perfect context, wrong intent = AI resolved 2.3M conversations but optimized for speed not satisfaction

## See Also
- [[Agentic Harness Primitives]]
- [[Claude Code]]
- [[Google Stitch]]
- [[Remotion]]
- [[Blender MCP]]
- [[/loop]]
- [[OpenBrain]]
- [[OpenClaw]]
- [[Four Prompting Disciplines]]
- [[summary-nate-jones-12-agent-primitives|Source: 12 Agent Primitives]]
- [[summary-nate-b-jones-google-stitch|Source: A Markdown File Just Replaced Your Design Meeting]]
- [[summary-nate-b-jones-loop-openbrain|Source: /loop + OpenBrain]]
- [[summary-nate-b-jones-four-prompting-disciplines|Source: Prompting Split Into 4 Skills]]
- [[summary-nate-b-jones-openbrain-architecture|Source: The $0.10 System]]
