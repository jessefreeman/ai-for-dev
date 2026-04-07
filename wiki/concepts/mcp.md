---
type: concept
sources: ["Model Context Protocol (MCP), clearly explained (why it matters).md"]
created: 2026-04-07
updated: 2026-04-07
tags: [concept, ai, llm, agents, protocol, anthropic, integration]
---

# Model Context Protocol (MCP)

A standard, introduced by Anthropic, for connecting LLMs to external tools, services, and data sources. The pitch in one sentence: **MCP is to LLMs what REST APIs are to web services** — a shared language so the same agent can talk to any compliant tool without bespoke glue.

This page is the canonical concept page for the protocol that's referenced across the wiki. For a full non-technical explainer, see [[summary-greg-isenberg-mcp-explained|Ras Mic on the Greg Isenberg podcast]].

## Why It Exists

LLMs by themselves are very limited — they predict the next token, full stop. The first evolution gave them **tools** (web search, function calls, custom APIs), which made them genuinely useful but introduced a scaling problem: every tool speaks a different "language," and stacking many tools together is brittle. Engineers spend most of their time gluing tools to LLMs and handling the edge cases when a tool's API changes underneath them.

> "Combining these tools, making it work with the LLM is one thing. But then stacking these tools on top of each other, making it cohesive, making it work together — is a nightmare itself. And this is where we're currently at." — [[ras-mic|Ras Mic]]

MCP standardizes the integration layer so any MCP client can talk to any MCP server using the same protocol.

## The Four Components

```
┌─────────────┐    ┌──────────┐    ┌─────────────┐    ┌─────────┐
│  MCP Client │◄──►│ Protocol │◄──►│  MCP Server │◄──►│ Service │
│  (LLM-side) │    │ (shared) │    │ (svc-side)  │    │  (DB/   │
└─────────────┘    └──────────┘    └─────────────┘    │  API/   │
                                                       │  CLI)   │
                                                       └─────────┘
```

| Component | What it is | Examples |
|---|---|---|
| **MCP client** | The LLM-facing app | [[claude-code]], [[cursor]], [[augment-agent]], Tempo, Windsurf |
| **Protocol** | Two-way connection between client and server | The MCP spec itself |
| **MCP server** | Translates a service's capabilities into the protocol | Built by the service provider; Supabase MCP, Brave Search MCP, filesystem MCP, git MCP |
| **Service** | The thing being exposed | A database, web search, a CLI tool, a SaaS API |

## Anthropic's 3D Chess

The architectural choice that makes MCP a strategic win for Anthropic: **the MCP server lives with the service provider, not the LLM vendor**. If you want LLMs to have access to your database, *you* build the MCP server. Anthropic effectively externalized the integration cost across the entire ecosystem — and in doing so, made every compliant LLM client immediately more capable as new MCP servers ship.

This is why every major service provider has been racing to publish MCP servers — Supabase, Figma, Cloudflare, GitHub, Postgres, Slack, and hundreds more.

## What MCP Is Not

- **Not Einstein's fifth law of physics.** It's a standard, period — no novel ML or capability inside the protocol itself.
- **Not the only standard.** OpenAI or another vendor could ship a competing standard tomorrow.
- **Not friction-free yet.** Setting up MCP servers in clients still involves downloading files, editing JSON config, and other manual steps — the "polish" is incomplete.

## Concrete Patterns Across the Wiki

- **Three core MCP servers** ([[ai-coding-workflow|Cole Medin's pattern]]): filesystem, Brave Search, git — give any AI IDE the file reach, web reach, and version control reach to operate seriously.
- **MCP as growth hack** ([[summary-nate-b-jones-google-stitch|Nate B Jones]]): publishing an MCP server is the new "support our API" — gets your tool inside every agent that exists.
- **Memory via MCP** ([[OpenBrain]]): treat a Postgres database as an MCP server and you have persistent agent memory for ~$0.10/month.
- **Replacing OpenClaw** ([[/loop]] + [[OpenBrain]] + MCP tools): the three-Lego-brick model says you can replicate most [[openclaw|OpenClaw]] capabilities by combining MCP tools with native scheduling and memory primitives.
- **Standalone MCP servers as products**: e.g. Cole Medin's Supabase MCP server demo in [[summary-cole-medin-100x-ai-coding|his AI coding video]].

## Startup Opportunities (Per Ras Mic)

- **MCP App Store** — central place to browse and one-click-deploy MCP servers (Ras Mic claims he registered the domain but hasn't built it; "please steal this idea")
- **Standards observation play for non-technical builders** — wait for the standard to finalize, then ship integrations on the rails of the winning protocol

## See Also

- [[summary-greg-isenberg-mcp-explained]] — the Ras Mic explainer
- [[blender-mcp]] — MCP server for Blender
- [[claude-code]], [[cursor]], [[augment-agent]] — major MCP clients
- [[OpenBrain]] — MCP-based agent memory pattern
- [[ai-coding-workflow]] — Cole Medin's three-MCP-server pattern
- [[openclaw]] — what MCP + /loop + OpenBrain replaces
- [[greg-isenberg]], [[ras-mic]] — source authors
