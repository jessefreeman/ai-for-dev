---
type: entity
sources: ["I Broke Down Anthropic's $2.5 Billion Leak. Your Agent Is Missing 12 Critical Pieces..md", "A Markdown File Just Replaced Your Most Expensive Design Meeting. (Google Stitch).md", "Anthropic Just Gave Your AI Agent the One Thing OpenClaw Has. Without the Risk..md", "'Prompting' Just Split Into 4 Skills. You Only Know One. Here's Why You Need the Other 3 in 2026..md", "You Don't Need SaaS. The $0.10 System That Replaced My AI Workflow (45 Min No-Code Build).md", "The 5 Levels of AI Coding (Why Most of You Won't Make It Past Level 2).md", "Why Every AI Skill You Learned 6 Months Ago Is Already Wrong (And What Is Replacing Them).md", "Stop Competing With 400 Applicants. Build This in One Weekend (Yes, there's a  no code option too!).md", "ChatGPT-5 Prompting is Too Hard This Video Makes it Easy for You.md"]
created: 2026-04-06
updated: 2026-04-07
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
- [[summary-nate-b-jones-five-levels|The 5 Levels of AI Coding]] — Dan Shapiro's framework (L0 spicy autocomplete → L5 dark factory). StrongDM's 3-person software factory with [[Attractor]]. METR study (devs 19% slower). J-curve. Junior pipeline collapse. AI-native economics ($3.5M/employee).
- [[summary-nate-b-jones-frontier-operations|Why Every AI Skill Is Already Wrong]] — [[Frontier Operations]]: the expanding bubble metaphor. Five persistent skills (boundary sensing, seam design, failure model maintenance, capability forecasting, leverage calibration). Team of one, pod of five.
- [[summary-nate-b-jones-ai-professional-interface|Stop Competing With 400 Applicants]] — [[AI Professional Interface]]: five components (AI chat, expandable context, skills matrix with gaps, fit assessment tool, polished site). Attention economics, showing vs telling, bidirectional power inversion. Buildable in Lovable in an afternoon.
- [[summary-nate-b-jones-chatgpt5-prompting|ChatGPT-5 Prompting is Too Hard]] — Introduces [[meta-prompting]] as power steering for GPT-5. Speedboat-with-big-rudder analogy. Seven prompting principles. Seven components of a good prompt. The Precision Tax. The "flag" trick for detecting context loss.

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
- **[[Five Levels of AI Coding]]**: L0 spicy autocomplete → L5 dark factory. 90% of "AI-native" devs are stuck at L2. StrongDM's 3-person team with Attractor is the clearest L5 example. The bottleneck has moved from implementation speed to spec quality.
- **[[Frontier Operations]]**: The expanding bubble — as AI gets smarter, the surface area for human judgment GROWS. Five persistent skills. "The first workforce skill that expires on a roughly quarterly cycle."
- The **J-curve**: Most orgs are stuck at the bottom, getting measurably slower with AI while believing they're faster
- **[[AI Professional Interface]]**: Replace the 0.4% success rate hiring pipeline with an AI-powered interface. Five components. The fit assessment tool inverts the power dynamic — both sides evaluate fit. "Showing is almost always more persuasive than telling."
- **[[meta-prompting]]**: GPT-5 is a speedboat with a really big rudder — agentic by default, literal in execution, fabricates when underspecified. Meta-prompts are power steering: a wrapper that tells the model how to interpret your sloppy request. "The era of casual conversation prompting is over."

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
- [[Five Levels of AI Coding]]
- [[Frontier Operations]]
- [[Attractor]]
- [[summary-nate-b-jones-four-prompting-disciplines|Source: Prompting Split Into 4 Skills]]
- [[summary-nate-b-jones-openbrain-architecture|Source: The $0.10 System]]
- [[AI Professional Interface]]
- [[summary-nate-b-jones-five-levels|Source: 5 Levels of AI Coding]]
- [[summary-nate-b-jones-frontier-operations|Source: Frontier Operations]]
- [[summary-nate-b-jones-ai-professional-interface|Source: AI Professional Interface]]
