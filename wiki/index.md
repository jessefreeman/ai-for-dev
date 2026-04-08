---
type: index
created: 2026-04-06
updated: 2026-04-08
# 12-source batch ingested 2026-04-08
description: "Jesse Freeman's personal AI research wiki — AI tools, techniques, and workflows for developers. Maintained by Claude Code."
socialImage: og-image.png
---

# AI for Developers — Jesse Freeman's Second Brain

I'm [Jesse Freeman](https://jessefreeman.com), founder of [BFreeLabs](https://bfreelabs.ai), and this is my personal AI research wiki: a living knowledge base focused on AI tools, techniques, and workflows for developers.

I built this after watching [Nate Herk's video](https://www.youtube.com/watch?v=sboNwYmH3AY) on [Andrej Karpathy's LLM Wiki idea](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) — the concept of using an LLM to maintain a structured, interlinked wiki instead of relying on chat history or RAG. Every page here is written and cross-referenced by Claude Code from source material I collect. I add the sources, Claude does the filing.

New content appears as I read, watch, and research. The site updates automatically.

## Start here

- [[overview|Overview]] — The big picture: what's in this wiki and why it exists.
- [[llm-wiki-pattern|LLM Wiki Pattern]] — How this wiki is built and maintained.
- [[rag-vs-wiki|RAG vs Wiki]] — Why a structured wiki beats semantic search for personal knowledge bases.

## Browse by category

### People
- [[andrej-karpathy|Andrej Karpathy]] — AI researcher, creator of the LLM Wiki pattern and AutoResearch.
- [[nate-herk|Nate Herk]] — YouTube creator who demonstrated the LLM Wiki in practice.
- [[nate-b-jones|Nate B Jones]] — AI strategy educator; agent primitives, MCP thesis, /loop + OpenBrain.
- [[matthew-berman|Matthew Berman]] — AI YouTuber focused on open-source models, local inference, and agent tooling.
- [[tim-carambat|Tim Carambat]] — Founder of AnythingLLM; covers local AI inference and TurboQuant.
- [[damian-malliaros|Damian Malliaros]] — AI creator focused on Claude Code cost optimization and app building.
- [[cole-medin|Cole Medin]] — AI educator; Excalidraw diagrams, RAG analysis, agentic engineering.
- [[nick-saraev|Nick Saraev]] — AI educator; AutoResearch methodology for self-improving Claude Code skills.
- [[fireship|Fireship]] — Fast-paced developer education YouTube channel.
- [[crosstalk-solutions|Crosstalk Solutions]] — Home lab creator; built Project Nomad offline AI server.
- [[dave-swift|Dave Swift]] — AI tools creator focused on audio and local-first applications.
- [[stephen-g-pope|Stephen G. Pope]] — Creator of ThePopeBot; autonomous agent architecture.
- [[worldofai|WorldofAI]] — YouTube creator covering AI tools and agentic IDE launches.
- [[bmad-code|BMad Code (Brian)]] — Creator of the BMAD Method; 20-year software vet on agile + AI workflows.
- [[joshua-clarke|Joshua Clarke]] — Cybersecurity educator; local AI for private security workflows.
- [[global-science-network|Global Science Network]] — YouTube channel on offline AI, hardware NNs, privacy-first computing.
- [[greg-isenberg|Greg Isenberg]] — Founder/podcaster; startup-ideas community Startup Empire.
- [[ras-mic|Ras Mic]] — Engineer at Tempo; non-technical AI infrastructure explainer.
- [[pixegami|pixegami]] — Python LLM tutorial creator; RAG, LangChain, pytest patterns.
- [[alex-ziskind|Alex Ziskind]] — Local LLM benchmarks; vLLM/FP8/Apple Silicon vs Nvidia hardware deep dives.
- [[the-cyber-mentor|The Cyber Mentor (Heath Adams)]] — Cybersecurity educator; founder of TCM Security Academy.
- [[tech-with-tim|Tech With Tim]] — Python + AI tutorials; concrete walkthroughs of fine-tuning, Ollama, Docker Model Runner.
- [[wolfgangs-channel|Wolfgang's Channel]] — Homelab/self-hosting YouTuber; local AI code assistant + power consumption analysis.
- [[simon-hoiberg|Simon Høiberg]] — SaaS founder; bootstrapped portfolio, leaving-the-cloud, AI agent monetization playbooks.
- [[beyond-fireship|Beyond Fireship]] — Long-form companion channel to Fireship; from-scratch builder tutorials.
- [[zubair-trabzada|Zubair Trabzada]] — No-code AI automation educator; voice agents and n8n workflows.
- [[tin-rovic|Tin Rovic]] — No-code AI automation creator; n8n workflow recipes.
- [[nathan-sebhastian|Nathan Sebhastian]] — Code with Nathan; practical dev environment + AI coding tutorials.
- [[jay-e-robonuggets|Jay E (RoboNuggets)]] — AI automation educator; deep n8n + generative-media long-form video pipelines.
- [[ai-jason|AI Jason]] — LLM application architecture educator; CAG advocate; runs the AI Builder Cloud community.
- [[bijan-bowen|Bijan Bowen]] — Engineer / YouTuber on local LLM infrastructure; multi-node vLLM via Ray cluster.
- [[networkchuck|NetworkChuck]] — Networking + self-hosting YouTuber; Cloudflare + Nginx Proxy Manager + Let's Encrypt deployment patterns.

### Organizations
- [[anthropic|Anthropic]] — US frontier-AI lab; Claude, Claude Code, the MCP standard, the Claude Code architecture leak. PBC structure.
- [[openai|OpenAI]] — US frontier-AI lab; ChatGPT, Codex, the Industrial Policy paper. PBC structure.
- [[google|Google]] — Big-tech AI org spanning Gemini (frontier), Gemma 4 (open weights), Firebase Studio, Stitch, Vertex AI, plus Waymo/DeepMind.
- [[nous-research|Nous Research]] — Open-source AI research collective; Hermes Agent + GEPA self-improving loop.
- [[langchain|LangChain]] — AI framework vendor (LangChain library, LangGraph, Open-SWE); open-source frameworks + paid LangSmith observability.
- [[lovable|Lovable]] — European no-code AI app builder; afternoon-to-prototype tool referenced across multiple wiki sources.

### Models

Tracked separately from tools and frameworks so we can follow each model's progress, capabilities, and best practices over time.

**Frontier (closed-weights):**
- [[chatgpt|ChatGPT]] — OpenAI's flagship model; best for ease of use.
- [[claude|Claude]] — Anthropic's model family; best for work and coding.
- [[gemini|Gemini]] — Google's model; unique video ingestion; best for search and deep research.
- [[grok|Grok]] — xAI's model; best for real-time Twitter/X research.
- [[minimax-m2-7|MiniMax M2.7]] — Closed-source model claiming to outperform Opus 4.6 at 20x lower cost.

**Open-weights:**
- [[llama|Llama]] — Meta's open-weights model family; pioneered local LLM inference.
- [[deepseek|DeepSeek]] — Chinese lab open-weights model; stronger than Llama as of 2026.
- [[qwen|Qwen]] — Alibaba's open-weights model family; among the top open-source models.
- [[gemma-4|Gemma 4]] — Google's open-weights model; 31B ranks #3 globally.
- [[kimi-k2|Kimi K2]] — Moonshot's open-weights MoE model; 32B active params, ~10× cheaper than Sonnet at output.
- [[minimax-m1|MiniMax M1]] — MiniMax's open-weights hybrid-attention model; 1M token context, 80K reasoning output.

### Tools
- [[augment-agent|Augment Agent]] — Agentic IDE; #1 OSS on SWE-bench Verified at 65.4%; large-codebase indexing.
- [[firebase-studio|Firebase Studio]] — Google's cloud agentic dev environment (rebrand of Project IDX); free tier.
- [[github-agent-hq|GitHub Agent HQ]] — Microsoft's evolution of GitHub into a full AI agent orchestration platform.
- [[archon-os|Archon OS]] — Cole Medin's open-source command center for AI coding agents; unified knowledge + task layer via MCP.
- [[sim-ai|Sim AI]] — Open-source visual AI agent workflow builder; n8n alternative with 60+ integrations.
- [[supabase|Supabase]] — Open-source Postgres + PGVector + auth backend; convergence point for OpenBrain, Archon OS, Sim AI, and AI coding workflows.
- [[claude-code|Claude Code]] — Anthropic's CLI tool, the engine behind this wiki. Now with /loop and a skills ecosystem.
- [[cursor|Cursor]] — AI-native code editor; one of the first coding agents.
- [[codex|Codex]] — OpenAI's coding agent harness.
- [[devin|Devin]] — Cognition's autonomous software engineering agent.
- [[openclaw|OpenClaw]] — Fastest-growing open-source agent framework (200k+ stars); security concerns.
- [[google-stitch|Google Stitch]] — Voice-to-UI design tool; exports agent-readable design.md.
- [[remotion|Remotion]] — React framework treating video as code; #1 non-corporate Claude Code skill.
- [[skills-sh|skills.sh]] — Open directory for Claude Code agent skills.
- [[obsidian|Obsidian]] — Markdown note-taking app used as the visual frontend.
- [[obsidian-web-clipper|Obsidian Web Clipper]] — Browser extension for clipping articles into raw/.
- [[ollama|Ollama]] — Local model runner for running open-source LLMs on consumer hardware.
- [[openrouter|OpenRouter]] — Unified API gateway for hundreds of AI models, including free tiers.
- [[paperclip|Paperclip]] — Open-source multi-agent orchestration dashboard; MIT licensed.
- [[anything-llm|AnythingLLM]] — All-in-one local AI app for document chat, agents, and automations.
- [[open-webui|Open WebUI]] — Self-hosted ChatGPT-like web interface for local LLMs via Ollama.
- [[docker-model-runner|Docker Model Runner]] — Local LLM runtime built into Docker Desktop; OCI-packaged models, no CUDA needed.
- [[continue|Continue]] — Open-source VS Code/JetBrains extension; local Copilot replacement via Ollama or any OpenAI-compliant API.
- [[n8n|n8n]] — Open-source workflow automation platform; canonical no-code agent runner; convergence point for the wiki's AI-automation thread.
- [[flowith|Flowith]] — Multimodal infinite-canvas execution agent; 10M-token context, 30+ native integrations.
- [[manus|Manus]] — Closed-source viral general AI agent; the original of the open-source [[openmanus]] clone.
- [[retell-ai|Retell AI]] — Voice-AI platform for inbound/outbound phone agents; telephony + persona + function calling.
- [[zep|Zep]] — Hosted long-term agent memory as a per-user relational graph; n8n integration.
- [[void-ide|Void IDE]] — Fully open-source agentic IDE shipped as a full editor; Agent Mode + Gather Mode.
- [[codellm|Abacus AI CodeLLM]] — Hosted IDE running Claude 4 Opus by default; bundles Composer Agent + Computer Agent + Chat Mode at ~$10/month; Cursor alternative.
- [[perplexity|Perplexity]] — AI search engine with citations; canonical "real-time search" primitive; first-class n8n node and MCP server.
- [[json-to-video|JSON-to-Video]] — Video assembly API used as the no-code video primitive in n8n content pipelines; the no-code sibling of [[remotion|Remotion]].
- [[jules|Google Jules]] — Google's free cloud-based async AI coding agent on Gemini 2.5 Pro; GitHub-integrated, sandboxed VM, audio PR summaries; 5 tasks/day free.
- [[dify|Dify]] — No-code AI agent + knowledge base platform; first-class RAG with configurable chunking/retrieval; complementary to n8n.
- [[readdy|Readdy]] — AI frontend builder generating clean React/Figma; pairs with Cline + Supabase as a free no-code-with-real-code-output stack.
- [[notebooklm|NotebookLM]] — Google's free AI research assistant on Gemini 2.5 Flash; multimodal source ingest, audio overviews in 50+ languages.
- [[deepagent|DeepAgent]] — Abacus AI's general-purpose agent (research, dashboards, automation); bundled with CodeLLM at $10/month.
- [[context7|Context7]] — MCP server hosting curated, version-correct docs for 1,856+ frameworks; the wiki's strongest "RAG works when curated" data point.

### Open-Source Projects
- [[llama-cpp|llama.cpp]] — C++ inference engine; the foundation underlying Ollama, AnythingLLM, and most local AI tools.
- [[unsloth|Unsloth]] — Fast, free fine-tuning library for open-weights LLMs; LoRA + GGUF export pipeline that runs on free Colab T4.
- [[open-swe|Open-SWE]] — LangChain's open-source async AI coding agent on LangGraph; self-hostable, bring-your-own-model, free Jules alternative.
- [[langchain-library|LangChain (library)]] — Original Python/JavaScript framework for chaining LLM calls with tools, prompts, retrievers, memory, and document loaders. The first widely-adopted LLM-app framework.
- [[langgraph|LangGraph]] — Stateful multi-step agent framework from LangChain; agents as directed graphs of nodes and edges; underlies Open-SWE.
- [[blender-mcp|Blender MCP]] — Natural language to 3D via MCP bridge to Blender's Python API.
- [[gstack|GStack]] — YC President Gary Tan's startup methodology as Claude Code skills.
- [[hermes-agent|Hermes Agent]] — Self-improving agent framework with closed learning loop.
- [[superpowers|Superpowers]] — TDD-enforcing Claude Code plugin; 115k stars.
- [[agency|Agency]] — Role-based agent templates for Claude Code (frontend, backend, security, etc.).
- [[prompt-fu|Prompt Fu]] — Unit testing framework for prompts; acquired by OpenAI.
- [[impeccable|Impeccable]] — Claude Code skill for frontend design; 17 UI commands.
- [[open-viking|Open Viking]] — File-system agent memory DB with tiered loading.
- [[mirrorish|Mirrorish]] — Multi-agent prediction engine with simulated social network.
- [[heretic|Heretic]] — Model guardrail removal via "obliteration" technique.
- [[nano-chat|Nano Chat]] — Full LLM pipeline; train your own model for ~$100.
- [[project-nomad|Project Nomad]] — Offline knowledge server with local AI, maps, and education.
- [[voicebox|VoiceBox]] — Free local TTS app with voice cloning; open-source ElevenLabs alternative.
- [[attractor|Attractor]] — StrongDM's dark factory agent; three markdown specs = the entire agent.
- [[thepopebot|ThePopeBot]] — Free open-source OpenClaw alternative; Docker + GitHub Actions + Ollama.
- [[deepcode|DeepCode]] — Open-source multi-agent coding platform from HKUDS; Paper2Code, Text2Web, Text2Backend.
- [[bjorn|Bjorn]] — Open-source Raspberry Pi network pentest tool; defensive audit for self-hosted AI infrastructure.
- [[vllm|vLLM]] — High-throughput LLM inference engine; saturates Nvidia GPUs with concurrent requests.
- [[cline|Cline]] — Open-source autonomous AI coding agent as a VS Code extension; bring-your-own-model.
- [[opencode|OpenCode]] — SST's open-source terminal AI coder; 75+ providers, parallel agents, themable UI.
- [[openmanus|OpenManus]] — MetaGPT's open-source clone of [[manus|Manus]]; Python agent loop with no UI.
- [[kimi-coder|Kimi Coder]] — Llama Coder fork repointed at Kimi K2; web app for prompt-to-SPA generation.
- [[docmost|Docmost]] — Self-hostable collaborative wiki/docs platform; Notion (docs portion) alternative.
- [[plane|Plane]] — Self-hostable open-source project management; Jira/Linear/Notion (PM portion) alternative.
- [[strapi|Strapi]] — Self-hostable headless CMS; Contentful/Sanity alternative.
- [[nocodb|NocoDB]] — Self-hostable no-code database; Airtable alternative.
- [[grafana|Grafana]] — Open-source observability/analytics dashboards; PostHog/Amplitude alternative when paired with Postgres.
- [[crawl4ai|Crawl4AI]] — Open-source web-to-markdown library optimized for LLM ingestion; 42K+ stars; the wiki's canonical knowledge-base build primitive.
- [[task-master-ai|Task Master AI]] — Open-source task-management layer for AI coding agents; three-model split (main/research/fallback) routes each task to the cheapest capable model; CLI + MCP.
- [[agent-zero|AgentZero]] — Self-organizing multi-agent framework with multi-tier LLM slots and MCP-first extensibility; Docker-installable.
- [[agenticseek|AgenticSeek]] — Fully local Manus alternative with voice input and visual UI; built for local reasoning models.
- [[codename-goose|Codename Goose]] — Block's open-source AI software engineer; TUI + desktop app; free Claude Code alternative with corporate backing.
- [[deerflow|DeerFlow]] — ByteDance's open-source LangGraph-based deep-research framework; Coordinator → Planner → Research Team → Reporter topology; first ByteDance entry.
- [[stagehand|Stagehand]] — Browserbase's open-source AI browser-automation framework on Playwright; v2 ships self-healing + MCP-native integration.

### Concepts
- [[llm-wiki-pattern|LLM Wiki Pattern]] — Method for building LLM-maintained personal knowledge bases in markdown.
- [[agentic-harness-primitives|Agentic Harness Primitives]] — 12-primitive framework for production-grade agent systems.
- [[open-source-model-integration|Open-Source Model Integration]] — Running Claude Code with local or third-party models to reduce cost.
- [[multi-agent-orchestration|Multi-Agent Orchestration]] — Coordinating multiple AI agents with distinct roles toward shared goals.
- [[turboquant|TurboQuant]] — KV cache optimization enabling 4x more context window on the same consumer hardware.
- [[slash-loop|/loop]] — Anthropic's proactive agent scheduling command for Claude Code.
- [[open-brain|OpenBrain]] — SQL database + MCP server pattern for persistent agent memory.
- [[autoresearch-evals|AutoResearch and Evals]] — Self-improving methodology with objective metrics and binary evals.
- [[four-prompting-disciplines|Four Prompting Disciplines]] — Prompt craft → context engineering → intent engineering → specification engineering.
- [[five-levels-of-ai-coding|Five Levels of AI Coding]] — L0 spicy autocomplete → L5 dark factory. Dan Shapiro's framework + StrongDM case study.
- [[frontier-operations|Frontier Operations]] — Five persistent skills for working at the expanding AI/human boundary.
- [[bmad-method|BMAD Method]] — Agile AI-Driven Development; six AI personas (BA → PM → Architect → PO → SM → Dev).
- [[ai-coding-workflow|AI Coding Workflow]] — Cole Medin's PLANNING.md + TASK.md + global rules + MCP servers pattern.
- [[mcp|Model Context Protocol (MCP)]] — Anthropic's standard for connecting LLMs to tools, services, and data.
- [[meta-prompting|Meta-Prompting]] — Wrapping sloppy requests in a structured instruction-set; power steering for GPT-5.
- [[fine-tuning|Fine-Tuning (LLMs)]] — LoRA + GGUF + Ollama pipeline for specializing open-weights models on local hardware.
- [[fp8-quantization|FP8 Quantization]] — Floating-point 8-bit precision; native to Nvidia Blackwell tensor cores; the throughput sweet spot for vLLM.
- [[context-engineering|Context Engineering]] — Karpathy/Lütke's successor to prompt engineering; curating *all* the information an LLM needs to plausibly solve a task.
- [[context-augmented-generation|Context Augmented Generation (CAG)]] — Pre-load the entire dataset into the model context window; the third entry in the wiki's RAG-skepticism thread alongside the LLM Wiki Pattern and Cole Medin's "RAG is dead for code."
- [[claude-code-subagents|Claude Code Sub-Agents]] — Anthropic's first-party multi-agent primitive: isolated context, tool whitelists, parallel execution.

### Analyses
- [[rag-vs-wiki|RAG vs Wiki]] — Comparison of semantic search RAG vs the LLM Wiki approach.
- [[saas-death-spiral|SaaS Death Spiral]] — Why $1T in SaaS market cap evaporated in early 2026; seven AI developments and the per-seat pricing axis.
- [[self-hostable-alternatives|Self-Hostable Alternatives]] — Running map of commercial dev tools and credible open-source self-hostable replacements captured in this wiki.

### Personal Hardware Benchmarks
- [[benchmarks/index|Benchmark Index]] — Master ranking of all 16 personal rigs by AI Capability Index.
- [[benchmarks/methodology|Benchmark Methodology]] — How the AI Capability Index (ACI) is calculated.
- [[gemma-4-vram-requirements|Gemma 4 VRAM Requirements]] — GPU + Mac lookup tables; quantization breakdown.

### Business
- [[ai-automation-workflows|AI Automation Workflows]] — The 5 highest-value AI automations to sell to businesses, plus the clogged pipe sales framework.
- [[ai-professional-interface|AI Professional Interface]] — Replace the broken hiring pipeline with an AI-powered personal interface. Five components, attention economics, bidirectional fit assessment.

### Sources
- [[ai-2027|AI 2027]] — Forecasting article used as a demo ingest source.
- [[industrial-policy-intelligence-age|Industrial Policy for the Intelligence Age]] — OpenAI's first major public policy paper (April 2026); 21 proposals for the transition to "superintelligence."
- [[summary-karpathy-10x-claude-code|Karpathy 10x'd Claude Code]] — Nate Herk demonstrates the LLM Wiki in practice.
- [[summary-nate-jones-12-agent-primitives|12 Agent Primitives]] — Nate B Jones analyzes the Claude Code leak.
- [[summary-nate-herk-ollama-claude-code|Ollama + Claude Code]] — Running Claude Code with local and free cloud models.
- [[summary-matthew-berman-gemma4|Google Drops Gemma 4]] — Matthew Berman covers Gemma 4 benchmarks.
- [[summary-nate-herk-paperclip|Claude Code + Paperclip]] — Multi-agent orchestration with Paperclip.
- [[summary-tim-carambat-turboquant|TurboQuant]] — Tim Carambat covers TurboQuant's impact on local models.
- [[summary-damian-malliaros-minimax-m27|MiniMax M2.7 + Claude Code]] — Building a ClickUp clone at 95% lower cost.
- [[summary-nate-herk-500-ai-workflows|500 AI Workflows]] — Nate Herk's 5 highest-value automation workflows.
- [[summary-nate-b-jones-google-stitch|Design Meeting → Markdown File]] — Google Stitch, Remotion, Blender MCP.
- [[summary-ibm-llama-cpp|What Is Llama.cpp?]] — GGUF format, quantization, local server mode.
- [[summary-matthew-berman-open-source-projects|Open-Source AI Projects]] — GStack, Hermes Agent, Superpowers, Paperclip.
- [[summary-matthew-berman-ai-models|Every AI Model Explained]] — Frontier models, open-source models, coding agents.
- [[summary-fireship-7-open-source-tools|7 Open-Source AI Tools]] — Agency, Prompt Fu, Impeccable, Open Viking, and more.
- [[summary-nate-b-jones-loop-openbrain|/loop + OpenBrain]] — Three agent primitives; OpenClaw without the risk.
- [[summary-crosstalk-project-nomad|Project Nomad]] — Offline knowledge server with local AI.
- [[summary-nick-saraev-autoresearch|AutoResearch for Skills]] — Self-improving Claude Code skills with evals.
- [[summary-dave-swift-voicebox|VoiceBox TTS]] — Free open-source local text-to-speech.
- [[summary-nate-b-jones-four-prompting-disciplines|Prompting Split Into 4 Skills]] — The four-discipline prompting framework for 2026.
- [[summary-cole-medin-excalidraw-skill|Excalidraw Diagrams]] — Visual validation loop for Claude Code diagram generation.
- [[summary-cole-medin-rag-for-code|RAG for Code vs Knowledge]] — Why coding tools abandoned RAG; when semantic search still matters.
- [[summary-nate-b-jones-openbrain-architecture|OpenBrain Architecture]] — The $0.10/month agent memory system in full detail.
- [[summary-nate-b-jones-five-levels|5 Levels of AI Coding]] — Dark factory, StrongDM, J-curve, junior pipeline collapse.
- [[summary-stephen-g-pope-thepopebot|FREE OpenClaw]] — ThePopeBot architecture: Docker + GitHub Actions + Ollama.
- [[summary-cole-medin-e2e-testing|E2E Testing Command]] — Self-healing AI coding workflow with browser automation.
- [[summary-nate-b-jones-frontier-operations|Frontier Operations]] — The expanding bubble; five persistent skills.
- [[summary-nate-b-jones-ai-professional-interface|AI Professional Interface]] — Replace hiring pipeline with AI-powered personal interface.
- [[summary-worldofai-augment-agent|Augment Agent: RIP Cursor]] — WorldofAI walkthrough of Augment Agent's SWE-bench launch.
- [[summary-bmad-code-aiadd-method|Better Than Vibe Coding]] — BMad Code introduces the BMAD Method (six Agile AI personas).
- [[summary-joshua-clarke-local-ai-cybersec|Local AI for Cybersec]] — Joshua Clarke on Ollama + Open WebUI for private security writing.
- [[summary-cole-medin-100x-ai-coding|Code 100x Faster with AI]] — Cole Medin's full AI coding process; one-shots a Supabase MCP server.
- [[summary-gemma4guide-vram-requirements|Gemma 4 VRAM Requirements]] — Reference article: GPU + Mac sizing for every Gemma 4 model.
- [[summary-worldofai-firebase-studio|Firebase Studio Walkthrough]] — WorldofAI on Google's free agentic dev environment.
- [[summary-global-science-network-dolphin-llama3|Dolphin Llama 3 Offline]] — Running an uncensored Llama variant from a USB drive via Ollama + AnythingLLM.
- [[summary-greg-isenberg-mcp-explained|MCP Clearly Explained]] — Ras Mic's non-technical walkthrough of MCP on the Greg Isenberg podcast.
- [[summary-pixegami-python-rag-tutorial|Python RAG Tutorial (Local LLMs)]] — pixegami builds a PDF RAG app with chunk IDs and LLM-as-judge tests.
- [[summary-nate-b-jones-chatgpt5-prompting|ChatGPT-5 Prompting is Too Hard]] — Nate B Jones on meta-prompting GPT-5; the speedboat with a big rudder.
- [[summary-worldofai-hermes-agent|Hermes Agent: 24/7 Self-Evolving]] — WorldofAI walkthrough of GEPA, install, Obsidian skill demo.
- [[summary-fireship-saas-death-spiral|How AI is Breaking SaaS]] — Fireship's $1T market-cap thesis; seven Feb 2026 developments.
- [[summary-worldofai-docker-model-runner|Docker Model Runner Walkthrough]] — WorldofAI on the Docker-native local LLM runtime.
- [[summary-nate-herk-ultra-plan|Planning in Claude Code Just Got a Huge Upgrade]] — Nate Herk on Claude Code's new Ultra Plan: cloud Opus 4.6 + multi-agent exploration.
- [[summary-worldofai-archon-os|Archon OS Walkthrough]] — WorldofAI on Cole Medin's AI coding command center.
- [[summary-worldofai-deepcode|DeepCode Walkthrough]] — WorldofAI on HKUDS's multi-agent coding platform with Paper2Code.
- [[summary-worldofai-sim-ai|Sim AI Walkthrough]] — WorldofAI on the open-source n8n alternative for AI agent workflows.
- [[summary-alex-ziskind-vllm-fp8|THIS is the REAL DEAL for local LLMs]] — Alex Ziskind on vLLM + FP8 + RTX PRO 6000; 5,800 tok/s sustained.
- [[summary-tcm-bjorn-network-pentest-pi|Meet Bjorn, the Easy to Build Hacking Tool]] — TCM walkthrough of building a Raspberry Pi network pentest device; defensive audit angle for self-hosters.
- [[summary-openai-industrial-policy-intelligence-age|Industrial Policy for the Intelligence Age]] — OpenAI's first major public policy paper; 21 proposals + heavy interested-party caveats.
- [[summary-tech-with-tim-fine-tune-ollama|EASIEST Way to Fine-Tune a LLM and Use It With Ollama]] — Tech With Tim: Unsloth + LoRA + GGUF + Ollama Modelfile workflow.
- [[summary-wolfgangs-channel-self-host-ai-code-assistant|Host Your Own AI Code Assistant with Docker, Ollama and Continue!]] — Wolfgang's Channel: 7900XTX gaming PC vs MiniPC for local Copilot; "GPU is the cliff."
- [[summary-worldofai-open-swe|Open-SWE: Opensource Jules!]] — WorldofAI on LangChain's open-source async coding agent built on LangGraph.
- [[summary-simon-hoiberg-5-ai-agent-business-ideas|5 (Real) AI Agent Business Ideas For 2025]] — Simon Høiberg's five concrete AI monetization paths.
- [[summary-simon-hoiberg-self-hostable-alternatives|Replace Cloud Tools With Self-Hostable Alternatives]] — Six-tool replacement stack saving $10K/yr.
- [[summary-worldofai-claude-code-subagents|Claude Code Sub-Agents]] — WorldofAI on Anthropic's first-class sub-agents in Claude Code.
- [[summary-worldofai-cline-v318|Cline v3.18 HUGE UPDATE]] — Gemini CLI provider, Claude Code as backend, 35 new MCP servers.
- [[summary-worldofai-context-engineering|Context Engineering: The End of Vibe Coding]] — Walkthrough of Cole Medin's PRP template.
- [[summary-worldofai-flowith-neo|Flowith Neo: Infinite Agent]] — Multimodal infinite-canvas execution agent.
- [[summary-beyond-fireship-deepseek-vscode-extension|I built a DeepSeek R1 powered VS Code extension]] — From-scratch VS Code extension wired to Ollama + DeepSeek R1.
- [[summary-worldofai-kimi-coder|Kimi Coder]] — Kimi K2 model + Llama Coder fork for prompt-to-SPA generation.
- [[summary-worldofai-minimax-m1-agent|MiniMax Agent (M1)]] — Open-weights hybrid-attention model + the hosted general agent.
- [[summary-worldofai-docker-mcp-toolkit|Docker MCP Toolkit]] — Containerized MCP install + secrets vault inside Docker Desktop.
- [[summary-worldofai-opencode|OpenCode]] — SST's terminal AI coder with 75+ provider support.
- [[summary-worldofai-openmanus|OpenManus]] — MetaGPT's open-source Manus clone.
- [[summary-zubair-trabzada-retell-voice-agent|AI Voice Agent (Retell + n8n)]] — Inbound dental receptionist no-code build.
- [[summary-tin-rovic-youtube-seo-blog|YouTube → SEO Blog (n8n)]] — Content-repurposing pipeline with n8n + OpenRouter + WordPress.
- [[summary-nate-herk-zep-memory|n8n + Zep memory]] — Knowledge-graph long-term memory with cost-trap fix.
- [[summary-nathan-sebhastian-vscode-cline-continue|VSCode + Cline + Continue]] — Canonical free Cursor-replacement setup.
- [[summary-worldofai-void-ide|Void IDE Update]] — Fully open-source agentic IDE with Agent Mode + Gather Mode.
- [[summary-task-master-ai-cursor-cline|100x Cursor + Cline with Task Master AI]] — Three-model split for AI coding agents.
- [[summary-agent-zero-framework|AgentZero ALL-IN-ONE Multi Agent]] — Self-organizing multi-agent framework with MCP-first extensibility.
- [[summary-agenticseek-manus-alternative|AgenticSeek FULLY FREE Manus Alternative]] — Local-first generalist agent with voice and UI.
- [[summary-claude-4-opus-codellm-composer|Claude 4 Opus + Composer Agent]] — Abacus AI CodeLLM walkthrough; Cursor alternative at $10/month.
- [[summary-codename-goose-claude-code-alternative|Codename Goose: FREE AI Software Engineer]] — Block's TUI + desktop free Claude Code alternative.
- [[summary-deerflow-local-research-agent|DeerFlow: FREE Local Deep Research Agent]] — ByteDance's LangGraph-based research framework.
- [[summary-stagehand-v2-browser-automation|Stagehand V2 Browser Use AI Agent]] — Browserbase's MCP-native self-healing browser automation.
- [[summary-deepseek-r1-0528-reasoning-model|DeepSeek-R1-0528: BEST Open Reasoning Model]] — MIT-licensed 671B/37B MoE reasoning model with free OpenRouter tier.
- [[summary-zubair-trabzada-perplexity-node-n8n|n8n NEW Perplexity Node]] — First-class real-time search node in n8n v1.98+.
- [[summary-nate-herk-faceless-shorts-n8n|Faceless Shorts with n8n]] — Free template for fully automated n8n short-form video pipeline.
- [[summary-tin-rovic-youtube-scraper-n8n|How To Scrape YouTube For FREE with n8n]] — Free YouTube Data API v3 channel scraper.
- [[summary-jay-e-longform-youtube-videos|Longform YouTube Videos Hourly]] — Jay E's deep n8n + JSON-to-Video long-form pipeline with error-routed Creator Agent.
- [[summary-worldofai-claude-4-opus-sonnet-cline|Claude 4 Opus/Sonnet + Cline]] — Claude 4 launch pricing + ~$2.60 SaaS-landing-page demo via Cline.
- [[summary-ai-jason-cag-context-augmented-generation|Don't Do RAG (CAG)]] — AI Jason introduces Context Augmented Generation as a practical RAG alternative.
- [[summary-worldofai-google-jules|Google Jules launch]] — first-party Google async coder on Gemini 2.5 Pro; CRM dashboard demo.
- [[summary-worldofai-google-stitch|Google Stitch I/O 2025 launch]] — Stitch second source; pricing modes + Airbnb clone demo.
- [[summary-dify-knowledge-base-rag-configuration|Dify Knowledge Base configuration]] — no-code RAG control panel walkthrough.
- [[summary-worldofai-cline-v313-memory-bank|Cline v3.13]] — Memory Bank, slash commands, checkpoint system.
- [[summary-worldofai-cline-v4-yolo-mode|Cline v4.0]] — YOLO Mode, Chrome browser integration, 10× faster diff editing.
- [[summary-worldofai-readdy-cline-fullstack|Readdy + Cline full-stack]] — no-code stack with Cline as the backend half.
- [[summary-worldofai-augment-code-remote-agent|Augment Code Remote Agent]] — cloud-hosted Augment with 10 parallel agents per session.
- [[summary-worldofai-github-copilot-coding-agent|GitHub Copilot Coding Agent]] — autonomous in-GitHub agent on Pro Plus tier.
- [[summary-cole-medin-mcp-server-template|MCP server template (Cole Medin)]] — FastMCP + lifespan + Mem0 reference template.
- [[summary-cole-medin-context7-mcp|Context7 MCP server]] — curated docs for 1,856+ frameworks; the production MCP server example.
- [[summary-worldofai-n8n-mcp-local-ai|n8n + MCP via community node]] — escape hatch for any MCP server inside n8n.
- [[summary-cole-medin-local-supabase-rag|Local Supabase RAG (Cole Medin)]] — full self-hosted local-AI stack with PGVector RAG.
- [[summary-cole-medin-crawl4ai-v2|Crawl4AI v2 (Cole Medin)]] — three crawl strategies with auto-detection; Pydantic AI + Chroma DB template.
- [[summary-worldofai-notebooklm-gemini25|NotebookLM + Gemini 2.5]] — free AI research assistant with multilingual audio overviews.
- [[summary-gemma4guide-overview|Gemma 4 Guide overview]] — companion to the VRAM requirements article; tier ladder + Qwen/Llama comparison.
- [[summary-worldofai-deepagent|DeepAgent (Abacus AI)]] — general-purpose research/dashboards/automation agent bundled with CodeLLM.
- [[summary-wolfgangs-channel-local-ssl-homelab|Wolfgang: Local SSL for Homelab]] — Nginx Proxy Manager + Let's Encrypt DNS-01 for valid SSL on private IPs.
- [[summary-networkchuck-open-webui-domain-ssl|NetworkChuck: Open WebUI Domain + SSL]] — Cloudflare DNS deployment recipe for Open WebUI.
- [[summary-bijan-bowen-vllm-distributed-inference|Multi-node vLLM (Bijan Bowen)]] — Ray cluster + tensor/pipeline parallelism across 2 nodes.
- [[summary-docker-model-runner-mac-playground|Docker Model Runner Mac demo]] — official Docker walkthrough for Apple Silicon.

## Contribute or build your own

This wiki is open source at [github.com/jessefreeman/ai-for-dev](https://github.com/jessefreeman/ai-for-dev). If you spot something wrong or want to improve a page, open a pull request — the site rebuilds automatically as content is added.

Want to build your own? Clone the repo, delete `wiki/` and `raw/`, then follow the instructions in the README to start from scratch with your own content.
