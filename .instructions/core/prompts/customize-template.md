# Prompt: Customize This Template

> Use this prompt by saying *"run the customize-template prompt"* or *"customize this template for my topic"*. Run **once** after cloning the template repo.

This is the **onboarding prompt for a fresh second-brain clone**. It walks the user through scoping their wiki, then tailors `CLAUDE.md`, the wiki state files, and (optionally) any project-specific scaffolding so the rest of the methodology is ready to use.

You should only see this prompt called **immediately after `Use this template`** on GitHub or `gh repo create --template`. If the wiki already has substantive content, **politely refuse**: this prompt overwrites topic-scope and state files, and is not safe to re-run on a populated wiki.

## Detect-fresh-clone preflight

Before doing anything, verify this is a fresh clone:

1. `wiki/log.md` is empty or contains only an init entry
2. `wiki/index.md` has the template default content (or is empty)
3. `wiki/people/`, `wiki/tools/`, `wiki/concepts/` etc. are empty (no `.md` files except `.gitkeep`)
4. `raw/archive/` is empty or absent

If any of those checks fail (the wiki has real content), **stop and tell the user**: *"This wiki already has content — running customize-template would overwrite your topic scope and state files. If you really want to re-customize, delete `wiki/` first or run me with the `--force` flag."* Wait for explicit confirmation before proceeding.

## Phase 1 — Scoping interview (REQUIRED PAUSE)

Ask the user the following questions, **one at a time**, waiting for an answer before moving on:

1. **Topic scope**: *"What's this wiki about? Describe the topic in one paragraph — what kinds of sources you'll add and what kinds of pages you want the wiki to have. (Examples: 'AI tools and workflows for developers,' 'food science and home cooking experiments,' 'home-lab infrastructure and self-hosting,' 'medieval history primary sources.')"*

2. **Domain tags**: *"What are the 5–10 domain tags you'd want to use across the wiki? These get added to source-summary frontmatter alongside format tags. (Example for AI dev wiki: ai, llm, agents, coding, local-ai, knowledge-management. Example for cooking: cooking, baking, fermentation, pastry, ingredients, technique.)"*

3. **Project-specific use cases**: *"Are there any project-specific use cases you already know you'll need beyond standard source ingest? (Examples: hardware benchmark tracking, recipe testing logs, paper reading lists with citations, gym workout tracking.) If yes, give each one a short name. If no, just say 'none' — you can add them later."*

4. **Ownership / branding** (optional, can be skipped): *"What's the wiki's public name, the author's name, the public URL it'll be hosted at, and any social handles (X, GitHub, site)? Skip any you don't want to set right now."*

5. **Confirmation**: read the answers back to the user as a structured proposal and **wait for explicit go-ahead** before writing anything.

## Phase 2 — Apply customizations

After approval, make these changes in a single batch (one commit at the end):

### 2a. CLAUDE.md
- Replace the **Wiki Scope** section with the user's topic-scope paragraph
- Update the inline `# project: <name>` tags in the Directory Structure tree to match their named projects (or remove the project block entirely if they answered "none")
- Update the prompts and templates tables to reflect any project-specific scaffolding from step 2c

### 2b. README.md
- Replace the wiki title, hosted URL, author name, and social links with the user's answers (or generic placeholders if they skipped step 4)
- Keep the "How it works", "Build your own", and template-project documentation sections unchanged — those are generic

### 2c. Project-specific scaffolding (if step 3 returned project names)
For each named project:
- Create `.instructions/projects/<name>/` directory
- Drop a `README.md` in it explaining what the project covers and where its data lives
- Optionally create a starter prompt and template if the user can describe the use case in enough detail right now (otherwise leave the directory with just the README)

### 2d. Wiki state files
Reset all wiki state files to a clean starting point keyed to the new topic:

- **`wiki/index.md`** — clear out the default content; replace with a minimal scaffold with section headers (`## People`, `## Tools`, `## Concepts`, `## Sources`) and a one-line description of the wiki using the user's topic
- **`wiki/hot.md`** — set to "Wiki freshly initialized for {topic}. No sources ingested yet. Run the ingest prompt to add the first source."
- **`wiki/log.md`** — append a single new entry: `## [YYYY-MM-DD] init: customized for {topic}` with bullets listing what was changed
- **`wiki/tasks.md`** — clear out, leave only the type frontmatter and an empty `## To Investigate` section

### 2e. Optional ingest of the customization
The customize action itself becomes the first wiki log entry. The user's answers from Phase 1 are persisted in `CLAUDE.md` (as the Wiki Scope) and `README.md` (as branding) — no separate "first source" needs to be created.

## Phase 3 — Verify and report

After applying changes:

1. Re-run the detect-fresh-clone preflight to confirm everything is consistent (state files updated, no leftover template content)
2. Print a short summary to the user:
   - The new wiki scope (1 sentence)
   - The new domain tags
   - The list of project-specific scaffolding created (or "none")
   - **What to do next**: clip your first source into `raw/`, then run the ingest prompt
3. Stop. Do not start ingesting content. The user will tell you what to do next.

## Phase 4 — Commit

Single commit:
- Message: `init: customize template for <topic>`
- Author: per the user's git config (already set)
- Body: list the files changed (CLAUDE.md, README.md, wiki state files, any project scaffolding)
- Use `Refs` not `Closes` in the body if any tracking issue exists (per Git Rules in CLAUDE.md)

## Don'ts

- Never run this prompt against a populated wiki without explicit `--force` confirmation. The whole point is fresh-clone scoping.
- Never invent answers. If the user skips a question, leave the corresponding section as a placeholder and tell them how to fill it in later.
- Never add the user's topic to any file under `.instructions/core/`. The core methodology is data-agnostic — topic-specific content lives in `CLAUDE.md`, `README.md`, and `wiki/`.
- Never delete `.instructions/core/` files. Even if a particular template (e.g., `youtube-source.md`) doesn't apply to the user's wiki, leave it in place — the user might add YouTube sources later.
- Never run an ingest as part of customization. The user's first source ingest is a separate, deliberate operation.

## Re-running this prompt

If the user wants to revise their topic scope, domain tags, or project list later, they can re-run this prompt with `--force`. It will diff the current CLAUDE.md scope statement against the new one, ask the user to confirm the change, and update only the parts that changed (without resetting the wiki state files).

Re-running is also useful if the user:
- Adds or renames a project after the initial customization
- Decides to expand the topic scope as the wiki matures
- Wants to update branding (author name, URL, social) without touching content

In re-run mode, **never reset `wiki/index.md`, `wiki/hot.md`, `wiki/log.md`, or `wiki/tasks.md`** — those have user content. Only update CLAUDE.md, README.md branding, and the project scaffolding directories.
