---
type: concept
sources: ["Code 100x Faster with AI, Here's How (No Hype, FULL Process).md"]
created: 2026-04-07
updated: 2026-04-07
tags: [concept, ai, coding-workflow, claude-code, cursor]
---

# AI Coding Workflow (PLANNING.md + TASK.md Pattern)

[[cole-medin|Cole Medin]]'s end-to-end process for working with AI coding assistants ([[cursor|Cursor]], Windsurf, Cline, Roo Code, [[claude-code|Claude Code]]). The throughline: **higher-level markdown files + global rules + MCP servers + a disciplined initial prompt** produce one-shot results that ad-hoc prompting can't match. Cole demonstrated the pattern by one-shotting a Supabase MCP server in a single prompt.

## The Golden Rules

1. **Use higher-level markdown docs** (`PLANNING.md`, `TASK.md`, README, install/docs files) to give the LLM persistent context.
2. **Keep code files under 500 lines** — long files hallucinate.
3. **Start fresh conversations often** — long threads degrade.
4. **One feature per prompt** — don't ask for many things at once.
5. **Always write tests** — ideally after every new feature.
6. **Be specific** in requests — describe technologies, libraries, expected outputs.
7. **Write docs and comments as you go.**
8. **Implement environment variables yourself** — never trust the LLM with secrets, DB security, API keys. Cole cites a viral case of a vibe-coded SaaS getting hacked two days after launch.

## The Five-Step Process

### 1. Planning files
- **`PLANNING.md`** — vision, architecture, constraints, tech stack. The LLM reads this at conversation start (enforced via global rules).
- **`TASK.md`** — granular task list. LLM updates as tasks complete. Acts as a project manager handoff.

Cole creates these *outside* the IDE in Claude Desktop or any chatbot — saves IDE credits. He recommends using **multiple LLMs** (one prompt to several models, combine results) via a hub like Global GPT.

### 2. Global rules (system prompt for the IDE)
Workspace-level rules tell the IDE to:
- Always read `PLANNING.md` at conversation start
- Mark off `TASK.md` items as complete
- Keep files under 500 lines
- Write tests in a dedicated `tests/` dir; mock DB and LLM calls; cover success + failure + edge case
- Maintain README and inline comments
- Follow style guidelines

Set in Windsurf via *Manage Memories → Workspace Rules*; equivalent in Cursor, Cline, Roo.

### 3. MCP servers
Three Cole-recommended core servers for any project:
- **Filesystem** — agent reaches outside the project (other folders, asset libraries, prior projects)
- **Brave Search** — web search for documentation, libraries, frameworks; AI-summarized results
- **Git** — version control for backups; agent commits at known-good states so you can revert when it breaks five prompts later

Optional: Quadrant for long-term agent memory (or use IDE-native memories).

### 4. The initial prompt
- Be **very specific** — golden rule #6 applies most here
- Provide **documentation and examples** three ways:
  1. IDE-native docs ingestion (Windsurf `@docs`, Cursor's @docs)
  2. Brave/web MCP for live search
  3. Manual links to GitHub repos with reference implementations

### 5. Iterate → test → commit → deploy
- **One change at a time** in iteration
- Generate tests with the same global-rules-enforced patterns
- Use the git MCP to commit at known-good states
- Deploy via Docker (LLMs are good at Dockerfiles — abundant training data)

## Why It Works

The pattern enforces **context discipline without constant prompting cost**. Global rules carry the persistent instructions. PLANNING/TASK markdown files carry persistent project state. MCP servers extend tool reach. The actual user prompt can stay short because everything else is already in scope.

## Compared to Other Workflows

- [[bmad-method]] — heavier (six personas, six artifacts) vs. Cole's lighter two-file pattern. Use BMAD for SaaS-scale apps; use Cole's for projects under ~10 stories.
- [[four-prompting-disciplines]] — Cole's pattern is mostly **context engineering** (discipline #2) with light **specification engineering** (#4) in the global rules.
- [[autoresearch-evals]] — adjacent self-improvement pattern from Nick Saraev for skill development.

## See Also

- [[cole-medin]] — author
- [[bmad-method]] — heavier alternative
- [[claude-code]], [[cursor]] — IDEs this pattern targets
- [[mcp]] — protocol enabling step 3
- [[four-prompting-disciplines]] — broader theory
- [[summary-cole-medin-100x-ai-coding|Source: Code 100x Faster with AI]]
