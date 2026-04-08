---
type: hot-cache
created: 2026-04-06
updated: 2026-04-08
---

# Hot Cache

## Current State

**85 sources ingested** (after a 5-source batch on 2026-04-08, second batch of the day). Strongest threads from this round: **Google's coordinated I/O 2025 free-tools push** (Jules + Stitch, both Gemini-powered) and a **third entry in the wiki's RAG-skepticism thread** ([[context-augmented-generation|CAG]]) joining [[rag-vs-wiki|RAG vs Wiki]] and [[summary-cole-medin-rag-for-code|Cole Medin's "RAG is dead for code"]].

## Most Active Pages

- [[jules|Google Jules]] — new entity; first-party Google async coding agent (Gemini 2.5 Pro, free, GitHub-integrated, 5 tasks/day). Closes the long-standing Jules gap that [[open-swe]] was tracked against.
- [[google-stitch|Google Stitch]] — second source; added pricing modes (350/mo Flash, 50/mo Pro) + Figma/HTML export + Airbnb-clone demo.
- [[context-augmented-generation|CAG]] — new concept; pre-load entire dataset into context; the third RAG-skepticism entry. Cost economics: Gemini 2.0 Flash at $0.01/M input × 1M context window broke the calculus.
- [[dify|Dify]] — new entity; no-code AI agent + knowledge base platform; complement to [[n8n]].
- [[claude|Claude]] — refreshed with Claude 4 Opus/Sonnet pricing ($15/$75 and $3/$15) and ~$2.60 SaaS-landing-page cost data point.
- [[google|Google]] — added Jules + Stitch second-source to product list; first-party Google coding agent now tracked.
- [[ai-jason|AI Jason]] — new person; LLM application architecture / CAG / MCP patterns.

## Most Recently Added (the 5-source batch 2026-04-08 round 2)

1. **Claude 4 Opus/Sonnet + Cline** ([[worldofai|WorldofAI]]) — enriches existing [[claude]] and [[cline]]; first source with concrete cost-of-build numbers
2. **Don't Do RAG — CAG** ([[ai-jason|AI Jason]]) — new concept [[context-augmented-generation]], new person [[ai-jason]]
3. **Google Jules** (WorldofAI) — new entity [[jules]]; closes long-standing Jules gap
4. **Google Stitch I/O 2025 launch** (WorldofAI) — second source; updates [[google-stitch]] with pricing modes + export options
5. **Dify Knowledge Base config** (LLMs Explained / Aggregate Intellect — channel-attributed, individual creator unknown) — new entity [[dify]]

## Open Gaps

- **Long-standing primary sources**: Karpathy's gist, AI 2027, Dan Shapiro, StrongDM, METR study
- **Aggregate Intellect / LLMs Explained creator name** — flagged in tasks.md; no person page until verified
- **JSON-to-Video pricing model** — carryover from previous batch
- **Jules vs Codex benchmark beyond the WorldofAI demo** — single side-by-side isn't a benchmark
- **Browserbase / Block / ByteDance org pages** — carryover threshold-watching from previous batch

## Architectural Threads to Watch

- **RAG-skepticism thread now has 3 entries**: [[rag-vs-wiki|RAG vs Wiki]], [[summary-cole-medin-rag-for-code|RAG-dead-for-code]], and [[context-augmented-generation|CAG]]. Macro view: **RAG was a bridge technology** for context-window scarcity; cheap long context shrinks its remaining role to "datasets larger than any feasible window."
- **Google's I/O 2025 free push**: [[jules]] + [[google-stitch]] shipped same week, both on Gemini, both targeting paid incumbents (Codex/Copilot, v0/Figma). Coordinated SaaS-death-spiral move.
- **No-code AI platform layer filling out**: [[n8n]] (workflow), [[dify]] (KB + agents), [[sim-ai]] (visual). Builders mix and match.
- **Claude 4 cost-of-build evidence**: ~$2.60 for a SaaS landing page via Sonnet — concrete dollar number the [[saas-death-spiral]] thesis needed.
