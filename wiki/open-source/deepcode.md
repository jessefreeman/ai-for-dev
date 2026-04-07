---
type: entity
sources: ["DeepCode NEW Opensource Agentic Coder IS POWERFUL! Can Build ANYTHING!.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [open-source, ai, agent, coding-agent, multi-agent, hkuds, paper-to-code]
---

# DeepCode

Open-source agentic coding platform from **HKUDS** (Hong Kong University Data Science). Multi-agent system that unifies prototyping, research, backend, frontend, testing, and deployment in one product. Distinctive feature: **Paper2Code** — convert academic research papers into working implementations. Both CLI and web dashboard interfaces.

- **GitHub**: [HKUDS/DeepCode](https://github.com/HKUDS/DeepCode)
- **License**: Open source
- **Stack**: Python (pip-installable) + per-skill MCP agent configs + your choice of model provider

## Core Capabilities

| Feature | What it does |
|---|---|
| **Paper2Code** | Research-to-production pipeline: document parsing → algorithm extraction → code synthesis → quality assurance |
| **Text2Web** | Generate frontends from plain text or wireframe/UX images |
| **Text2Backend** | Scalable backend gen with auth, microservices, MCP-referenced data sources |
| **Code Generation** | General-purpose code writing + automated documentation |
| **Reference Mining** | Discover the best libraries for a task and build a knowledge graph |
| **Code Indexing** | Project-wide indexing for retrieval during generation |
| **Code Planning** | Automated architecture and tech-stack design |

## Multi-Agent Architecture

DeepCode is **not just a text-to-code model** — it's a coordinator that dispatches specialized agents per task:
- Document parsing agent (for Paper2Code)
- Intent understanding agent
- Code planning agent
- Reference mining agent
- Code generation agent
- Quality assurance agent

The video shows the agents running through a project management web app build, with the coordinator orchestrating the planning → workspace setup → implementation phases.

## Setup

1. Prerequisites: Python, git, pip
2. `git clone https://github.com/HKUDS/DeepCode`
3. `cd DeepCode` — three install paths:
   - **Source** install
   - **uv** for isolated environment (recommended)
   - **pip install** (direct)
4. Configure `mcp_agent.config.yaml` and `mcp_agent.secrets.yaml` with API keys (OpenAI, Anthropic, or [[ollama|Ollama]])
5. Optional: configure web search via Brave Search MCP or BotMCP in `mcp_agent.config.yaml`
6. **Launch web UI**: `deepcode` command (opens at `localhost:8501`) — built on Streamlit
7. **Launch CLI**: `uv run streamlit run` for source installs, or use the CLI directly

## Web UI Features

- **Workflow controls** on the left panel: codebase indexing toggle, fast mode, system status
- **Tabs** for the four main flows: Paper2Code, Text2Web, Text2Backend, Chat
- **Processing history** for tracking runs
- **Engine status** indicator
- **Demo recommendation**: use Anthropic Claude 4 Sonnet/Opus or Kimi K2 (free, locally installable) for the Text2Web flow

## Demo Output

WorldofAI builds a project management web app with user authentication from a single descriptive prompt. The agent:
1. Sets up the chat engine
2. Plans the architecture
3. Creates the workspace
4. Saves the plan
5. Implements the code

Output is a working app with a login screen (admin / project manager / team member demo accounts), main dashboard with project + task stats, recent projects view, individual project drill-down, and notifications.

## How It Compares

| | DeepCode | [[archon-os]] | [[bmad-method]] | [[firebase-studio]] |
|---|---|---|---|---|
| Form factor | CLI + Streamlit web UI | Hosted Docker microservices | Markdown artifacts in IDE | Cloud IDE |
| Origin | HKUDS academic | Cole Medin / Dynamis | Brian / BMad Code | Google |
| Standout feature | **Paper2Code** | Real-time editable task list | Six Agile personas | Genkit + Vertex AI |
| Multi-agent | Yes (specialized per-task) | Coming soon | Persona handoffs (manual) | Gemini-driven |
| Self-host? | Yes | Yes | Local files | Cloud only |

DeepCode's standout vs. all the other coding-agent platforms is the **Paper2Code pipeline** — the only one targeted at research-to-implementation workflows.

## Caveats

- **HKUDS is academic** — release cadence and long-term support may differ from commercial alternatives
- The video's demo is single-prompt and impressive, but no benchmarks against [[claude-code|Claude Code]], [[cursor|Cursor]], or [[deepcode]]'s peers
- Streamlit-based UI is functional but not as polished as commercial coding IDEs

## See Also

- [[archon-os]] — adjacent open-source coding command center
- [[claude-code]], [[cursor]], [[firebase-studio]], [[augment-agent]] — competing agentic coding platforms
- [[mcp]] — protocol DeepCode uses for tool/data integration
- [[ollama]] — supported local model provider
- [[WorldofAI]] — source channel
- [[summary-worldofai-deepcode|Source: DeepCode walkthrough]]
