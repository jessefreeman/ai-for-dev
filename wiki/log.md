---
type: log
updated: 2026-04-06
---

# Wiki Log

Chronological record of all operations.

## [2026-04-06] init | Wiki Initialized
- Created directory structure: `raw/`, `raw/assets/`, `wiki/`
- Created `CLAUDE.md` schema file
- Created `wiki/index.md`, `wiki/log.md`, `wiki/overview.md`
- Wiki is empty and ready for first source ingest.

## [2026-04-06] maintenance | Wiki Reorganized into Subdirectories
- **Reason**: Flat wiki/ layout produces an endless article list on the public Quartz site.
- **Structure**: Introduced five subdirectories under `wiki/`:
  - `people/` — andrej-karpathy, nate-herk
  - `tools/` — claude-code, obsidian, obsidian-web-clipper
  - `concepts/` — llm-wiki-pattern
  - `analyses/` — rag-vs-wiki
  - `sources/` — summary-karpathy-10x-claude-code, ai-2027
- **Root** (`wiki/`): index.md, overview.md, log.md unchanged.
- **Updated**: `CLAUDE.md` (directory structure, Page Types table, Ingest step 3–4), `wiki/index.md` (section headers match new folders).
- **Wikilinks**: No body link changes required — Obsidian and Quartz both resolve `[[filename]]` links by filename regardless of folder.

## [2026-04-06] ingest | Andrej Karpathy Just 10x'd Everyone's Claude Code
- **Source**: YouTube transcript by Nate Herk on Karpathy's LLM Wiki pattern
- **Pages created** (9):
  - `summary-karpathy-10x-claude-code.md` — Source summary
  - `andrej-karpathy.md` — Entity: AI researcher, LLM Wiki creator
  - `nate-herk.md` — Entity: YouTube creator, demo author
  - `claude-code.md` — Entity: Anthropic's CLI tool
  - `obsidian.md` — Entity: Markdown note-taking app
  - `obsidian-web-clipper.md` — Entity: Browser extension for clipping
  - `ai-2027.md` — Entity: Forecasting article used as demo
  - `llm-wiki-pattern.md` — Concept: LLM-maintained knowledge bases
  - `rag-vs-wiki.md` — Comparison: LLM Wiki vs semantic search RAG
- **Updated**: `index.md`, `overview.md`

## [2026-04-06] ingest | I Broke Down Anthropic's $2.5 Billion Leak (Nate B Jones)
- **Source**: YouTube transcript by Nate B Jones analyzing the leaked Claude Code architecture
- **Pages created** (3):
  - `summary-nate-jones-12-agent-primitives.md` — Source summary
  - `agentic-harness-primitives.md` — Concept: 12-primitive production agent framework
  - `nate-b-jones.md` — Entity: AI strategy educator
- **Updated**: `claude-code.md` (added internal architecture section from leak), `index.md`, `overview.md`

## [2026-04-06] ingest | Ollama + Claude Code = 99% CHEAPER (Nate Herk)
- **Source**: YouTube transcript by Nate Herk on running Claude Code with open-source models
- **Pages created** (3):
  - `summary-nate-herk-ollama-claude-code.md` — Source summary
  - `open-source-model-integration.md` — Concept: substituting models in Claude Code
  - `ollama.md` — Entity: local model runner
  - `openrouter.md` — Entity: unified AI API gateway
- **Updated**: `claude-code.md`, `index.md`, `overview.md`

## [2026-04-06] maintenance | Person pages standardized as author hubs
- **Reason**: Person pages were minimal stubs with no channel info and no content index.
- **Change**: All four person pages rebuilt with Channels, Content in This Wiki, and Key Ideas sections.
- **Updated**: `andrej-karpathy.md`, `nate-herk.md`, `nate-b-jones.md`, `matthew-berman.md`
- **CLAUDE.md**: Added "Person Page Structure" standard under Page Types — required sections, rules for keeping content lists complete, instruction to update on every new ingest from that person.

## [2026-04-06] maintenance | Added business/ category to wiki schema
- **Reason**: Nate Herk's 500 AI Workflows content is business/sales-focused rather than developer tooling — needed a dedicated folder.
- **Change**: Added `wiki/business/` to CLAUDE.md directory structure and Page Types table.

## [2026-04-06] ingest | I Cut Claude Code Costs by 95% (MiniMax M2.7) — Damian Malliaros
- **Source**: YouTube transcript: Claude Code + MiniMax M2.7 ClickUp clone demo
- **Pages created** (3):
  - `summary-damian-malliaros-minimax-m27.md` — Source summary
  - `minimax-m2-7.md` — Entity: MiniMax M2.7 model
  - `damian-malliaros.md` — Entity: AI creator
- **Updated**: `open-source-model-integration.md` (added MiniMax), `index.md`

## [2026-04-06] ingest | I've Built 500 AI Workflows (Nate Herk)
- **Pages created** (2):
  - `summary-nate-herk-500-ai-workflows.md` — Source summary
  - `wiki/business/ai-automation-workflows.md` — Business: 5 workflows + clogged pipe framework
- **Updated**: `nate-herk.md` (added source + key ideas), `index.md`

## [2026-04-06] ingest | Claude Code + Paperclip Just Destroyed OpenClaw (Nate Herk)
- **Source**: YouTube transcript by Nate Herk on Paperclip multi-agent orchestration
- **Pages created** (4):
  - `summary-nate-herk-paperclip.md` — Source summary
  - `paperclip.md` — Entity: open-source multi-agent orchestration tool
  - `multi-agent-orchestration.md` — Concept: coordinating multiple AI agents
  - (no new person page — Nate Herk already exists)
- **Updated**: `nate-herk.md` (added new source + key idea), `index.md`

## [2026-04-06] ingest | TurboQuant will change Local AI for everyone (Tim Carambat)
- **Source**: YouTube transcript by Tim Carambat on TurboQuant KV cache optimization
- **Pages created** (4):
  - `summary-tim-carambat-turboquant.md` — Source summary
  - `turboquant.md` — Concept: KV cache optimization technique
  - `anything-llm.md` — Entity: local AI all-in-one app
  - `tim-carambat.md` — Entity: AnythingLLM founder
- **Updated**: `open-source-model-integration.md`, `ollama.md`, `index.md`

## [2026-04-06] ingest | Google just dropped Gemma 4 (Matthew Berman)
- **Source**: YouTube transcript by Matthew Berman covering Gemma 4 release
- **Pages created** (3):
  - `summary-matthew-berman-gemma4.md` — Source summary (minimal)
  - `gemma-4.md` — Entity: Google's open-weights model family
  - `matthew-berman.md` — Entity: AI YouTuber
- **Updated**: `index.md`, `overview.md`

## [2026-04-06] ingest | A Markdown File Just Replaced Your Design Meeting (Nate B Jones)
- **Source**: YouTube transcript by Nate B Jones on Google Stitch, Remotion, and Blender MCP
- **Pages created** (5):
  - `summary-nate-b-jones-google-stitch.md` — Source summary
  - `wiki/tools/google-stitch.md` — Entity: Google's voice-to-UI design tool
  - `wiki/tools/remotion.md` — Entity: React video-as-code framework
  - `wiki/open-source/blender-mcp.md` — Entity: Natural language to 3D via MCP (first page in open-source/ dir)
  - `wiki/tools/skills-sh.md` — Entity: Claude Code skill directory
- **Updated**: `nate-b-jones.md` (added source + key ideas), `index.md`
- **Memories** (5): design-md-agent-readable-design-system, mcp-as-growth-hack-2026, remotion-video-as-code, blender-mcp-natural-language-3d, scheduled-creative-pipelines
- **Note**: Created `wiki/open-source/` directory for first time

## [2026-04-06] ingest | What Is Llama.cpp? (IBM Technology)
- **Source**: YouTube transcript by IBM Technology on llama.cpp internals
- **Pages created** (2):
  - `summary-ibm-llama-cpp.md` — Source summary
  - `wiki/open-source/llama-cpp.md` — Entity: C++ inference engine
- **Note**: No person page created — IBM Technology is a corporate channel
- **Memories** (3): gguf-format-purpose, quantization-naming-q4km, llama-cpp-local-openai-server

## [2026-04-06] ingest | You NEED to Try These Open-Source AI Projects (Matthew Berman)
- **Source**: YouTube transcript by Matthew Berman on four open-source agent projects
- **Pages created** (4):
  - `summary-matthew-berman-open-source-projects.md` — Source summary
  - `wiki/open-source/gstack.md` — Entity: YC President Gary Tan's Claude Code skills
  - `wiki/open-source/hermes-agent.md` — Entity: Self-improving agent framework
  - `wiki/open-source/superpowers.md` — Entity: TDD-enforcing Claude Code plugin (115k stars)
- **Updated**: `matthew-berman.md` (added source + key ideas), `index.md`
- **Memories** (3): gstack-yc-office-hours-skill, hermes-agent-self-improving-loop, superpowers-tdd-plugin

## [2026-04-06] ingest | Every AI Model Explained in 20 Minutes (Matthew Berman)
- **Source**: YouTube transcript by Matthew Berman — introductory AI model survey
- **Pages created** (11):
  - `summary-matthew-berman-ai-models.md` — Source summary
  - `wiki/tools/chatgpt.md` — Entity: OpenAI's flagship consumer AI
  - `wiki/tools/claude.md` — Entity: Anthropic's model family (distinct from Claude Code)
  - `wiki/tools/gemini.md` — Entity: Google's frontier model; unique video ingestion
  - `wiki/tools/grok.md` — Entity: xAI's model; Twitter/X specialty
  - `wiki/tools/cursor.md` — Entity: AI-native code editor
  - `wiki/tools/codex.md` — Entity: OpenAI's coding agent
  - `wiki/tools/devin.md` — Entity: Cognition's autonomous software engineer
  - `wiki/open-source/llama.md` — Entity: Meta's open-weights model family
  - `wiki/open-source/deepseek.md` — Entity: Chinese lab open-weights model
  - `wiki/open-source/qwen.md` — Entity: Alibaba's open-weights model family
- **Updated**: `matthew-berman.md` (added source + key ideas), `index.md`
- **Memories** (2): gemini-video-ingestion-unique, grok-twitter-search-specialty, open-source-models-95-percent-use-cases

## [2026-04-06] ingest | 7 New Open-Source AI Tools (Fireship)
- **Source**: YouTube transcript by Fireship covering 7 open-source AI tools
- **Pages created** (9):
  - `summary-fireship-7-open-source-tools.md` — Source summary
  - `wiki/people/fireship.md` — Entity: Developer education YouTube channel
  - `wiki/open-source/agency.md` — Entity: Role-based agent templates for Claude Code
  - `wiki/open-source/prompt-fu.md` — Entity: Prompt unit testing (acquired by OpenAI)
  - `wiki/open-source/mirrorish.md` — Entity: Multi-agent prediction engine
  - `wiki/open-source/impeccable.md` — Entity: Claude Code frontend design skill
  - `wiki/open-source/open-viking.md` — Entity: File-system agent memory DB
  - `wiki/open-source/heretic.md` — Entity: Model guardrail removal
  - `wiki/open-source/nano-chat.md` — Entity: Full LLM training pipeline
- **Memories** (2): open-viking-file-system-agent-memory, prompt-fu-unit-testing-for-prompts

## [2026-04-06] ingest | /loop + OpenBrain (Nate B Jones)
- **Source**: YouTube transcript by Nate B Jones on Anthropic's /loop, OpenBrain, and OpenClaw
- **Pages created** (5):
  - `summary-nate-b-jones-loop-openbrain.md` — Source summary
  - `wiki/concepts/slash-loop.md` — Concept: Anthropic's proactive scheduling command
  - `wiki/concepts/open-brain.md` — Concept: SQL + MCP agent memory pattern
  - `wiki/tools/openclaw.md` — Entity: Fastest-growing OSS agent framework
  - `wiki/concepts/autoresearch-evals.md` — Concept: (co-sourced with Nick Saraev)
- **Updated**: `nate-b-jones.md`, `andrej-karpathy.md`, `claude-code.md` (/loop + skills ecosystem sections)
- **Memories** (3): three-agent-primitives, slash-loop-heartbeat, openbrain-sql-mcp
- **Note**: Fills the OpenClaw gap from tasks.md

## [2026-04-06] ingest | Project Nomad (Crosstalk Solutions)
- **Source**: YouTube transcript by Crosstalk Solutions on offline AI knowledge server
- **Pages created** (3):
  - `summary-crosstalk-project-nomad.md` — Source summary
  - `wiki/open-source/project-nomad.md` — Entity: Offline knowledge server + local AI
  - `wiki/people/crosstalk-solutions.md` — Entity: Home lab YouTuber
- **Memories** (1): project-nomad-offline-ai-server

## [2026-04-06] ingest | AutoResearch for Skills (Nick Saraev)
- **Source**: YouTube transcript by Nick Saraev on self-improving Claude Code skills
- **Pages created** (2):
  - `summary-nick-saraev-autoresearch.md` — Source summary
  - `wiki/people/nick-saraev.md` — Entity: AI educator, Maker School
- **Updated**: `wiki/concepts/autoresearch-evals.md` (co-sourced)
- **Memories** (1): autoresearch-three-ingredients

## [2026-04-06] ingest | VoiceBox TTS (Dave Swift)
- **Source**: YouTube transcript by Dave Swift demoing VoiceBox open-source TTS
- **Pages created** (3):
  - `summary-dave-swift-voicebox.md` — Source summary
  - `wiki/open-source/voicebox.md` — Entity: Free local TTS with voice cloning
  - `wiki/people/dave-swift.md` — Entity: AI tools YouTuber
- **Memories** (1): voicebox-local-tts-alternative
- **Note**: 18 total sources ingested — lint pass recommended per CLAUDE.md (every 5th ingest)

## [2026-04-06] ingest | Prompting Split Into 4 Skills (Nate B Jones)
- **Source**: YouTube transcript on the four-discipline prompting framework
- **Pages created** (2):
  - `summary-nate-b-jones-four-prompting-disciplines.md` — Source summary
  - `wiki/concepts/four-prompting-disciplines.md` — Concept: The four disciplines + five spec primitives
- **Updated**: `nate-b-jones.md`
- **Memories** (2): four-prompting-disciplines-framework, five-specification-primitives

## [2026-04-06] ingest | Excalidraw Diagrams (Cole Medin)
- **Source**: YouTube transcript on visual validation loop for Claude Code diagrams
- **Pages created** (2):
  - `summary-cole-medin-excalidraw-skill.md` — Source summary
  - `wiki/people/cole-medin.md` — Entity: AI educator (2 sources ingested)
- **Updated**: `claude-code.md` (Excalidraw skill in ecosystem section)
- **Memories** (1): excalidraw-visual-validation-loop

## [2026-04-06] ingest | Why Coding Tools Abandoned RAG (Cole Medin)
- **Source**: YouTube transcript on RAG for structured vs unstructured data
- **Pages created** (1):
  - `summary-cole-medin-rag-for-code.md` — Source summary
- **Updated**: `wiki/analyses/rag-vs-wiki.md` (major rewrite with structured vs unstructured distinction), `cole-medin.md`
- **Memories** (1): rag-dead-for-code-alive-for-knowledge

## [2026-04-06] ingest | OpenBrain Architecture (Nate B Jones)
- **Source**: YouTube transcript — definitive OpenBrain architecture guide
- **Pages created** (1):
  - `summary-nate-b-jones-openbrain-architecture.md` — Source summary
- **Updated**: `wiki/concepts/open-brain.md` (major rewrite with full Postgres + PGVector architecture, lifecycle prompts, compounding advantage thesis), `nate-b-jones.md`
- **Memories** (1): openbrain-full-architecture
- **Note**: 22 total sources ingested — lint pass overdue

## [2026-04-06] ingest | The 5 Levels of AI Coding (Nate B Jones)
- **Source**: YouTube transcript — Dan Shapiro's framework, StrongDM dark factory, J-curve, junior pipeline
- **Pages created** (3):
  - `summary-nate-b-jones-five-levels.md` — Source summary
  - `wiki/concepts/five-levels-of-ai-coding.md` — Concept: L0→L5 framework + StrongDM case study
  - `wiki/open-source/attractor.md` — Entity: StrongDM's dark factory coding agent
- **Updated**: `nate-b-jones.md` (7th source)
- **Memories** (2): five-levels-of-ai-coding, strongdm-dark-factory-architecture

## [2026-04-06] ingest | I Built a FREE OpenClaw (Stephen G. Pope)
- **Source**: YouTube transcript — ThePepeBot autonomous agent architecture
- **Pages created** (3):
  - `summary-stephen-g-pope-thepopebot.md` — Source summary
  - `wiki/open-source/thepopebot.md` — Entity: Free OpenClaw alternative
  - `wiki/people/stephen-g-pope.md` — Entity: AI developer, ThePepeBot creator
- **Memories** (1): thepopebot-github-actions-architecture

## [2026-04-06] ingest | E2E Testing Command (Cole Medin)
- **Source**: YouTube transcript — Self-healing AI coding workflow
- **Pages created** (1):
  - `summary-cole-medin-e2e-testing.md` — Source summary
- **Updated**: `cole-medin.md` (3rd source)
- **Memories** (1): e2e-testing-self-healing-workflow

## [2026-04-06] ingest | Frontier Operations (Nate B Jones)
- **Source**: YouTube transcript — The expanding bubble; five persistent skills
- **Pages created** (2):
  - `summary-nate-b-jones-frontier-operations.md` — Source summary
  - `wiki/concepts/frontier-operations.md` — Concept: Five skills at the AI/human boundary
- **Updated**: `nate-b-jones.md`
- **Memories** (1): frontier-operations-five-skills
- **Note**: 26 total sources ingested — lint pass seriously overdue
