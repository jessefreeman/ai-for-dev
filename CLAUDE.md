# LLM Wiki Schema

This vault is a **personal knowledge base** maintained by an LLM agent. The human curates sources, directs analysis, and asks questions. The LLM does all summarizing, cross-referencing, filing, and maintenance.

## Wiki Scope

This wiki tracks **AI tools, techniques, and workflows for developers** — production agent architecture, the planning-first AI coding stack, the local-AI throughput layer, agent proactivity/memory primitives, the persistent-agent-layer competition between frontier labs (including the lock-in and portability questions it raises), defensive security for AI applications and personal agents (prompt injection, agent quarantine architectures, hardening playbooks for OpenClaw / Managed Agents / Conway-class systems), AI ethics and policy as industry-observability signal, business models in the post-SaaS world, and personal hardware capacity for local inference.

**Adjacent dev tooling is also in scope.** A lot of the AI content here exists to help with coding, so the wiki is *AI for devs* in the broad sense: open-source and self-hostable developer tools belong here even when they're not AI-specific (wikis, project management, CMS, databases, observability, automation). When an ingested source mentions a commercial tool that has a credible self-hostable open-source alternative, capture the alternative as its own entity and cross-link it to the commercial tool via the [[self-hostable-alternatives|Self-Hostable Alternatives]] map. Other adjacent topics in scope when they materially affect the above (e.g., self-hosting infrastructure, defensive network security for self-hosted AI rigs).

> **Important**: this scope statement is the **only** place where the wiki's topic focus lives. Everything in `.instructions/core/` is intentionally topic-agnostic — the same prompts, templates, and rules would work for any LLM-maintained personal knowledge base. When the lint prompt asks "is this page off-topic?", the answer comes from *this section*, not from any rule file.

## Git Rules

- Never add `Co-Authored-By` or any Claude attribution to commit messages.
- Commits should appear under the repo owner's account only.
- Don't auto-close GitHub issues from commit messages — use `Refs #N`, not `Closes #N`. The user closes issues themselves after verification.

## Roles

- **Human**: Adds sources to `raw/`, asks questions, directs analysis, reviews wiki pages, closes issues.
- **LLM**: Reads sources, writes and maintains all files in `wiki/`, updates index and log. After ingesting a source, moves it from `raw/` to `raw/archive/`.

## Directory Structure

```
research/
  CLAUDE.md                           # This file: rules + scope + project declarations
  README.md                           # Repo + template-project documentation
  .instructions/
    core/                             # Data-agnostic methodology — works for any second brain
      prompts/    {ingest,lint,clean-data,orphans}.md
      rules/      {page-conventions,memory-rules,hot-cache-rules,index-rules,pdf-extraction}.md
      templates/  {source-summary,youtube-source,pdf-source,person-page}.md
    projects/                         # Project-specific methodology (this wiki only)
      benchmarks/                     #   project: hardware benchmarks
    tools/                            # ⚠️ GITIGNORED — per-installation helpers
  raw/                                # Source documents (gitignored except memories/)
    archive/                          #   already-ingested sources
    assets/{,/archive/}               #   image/PDF attachments + their archive
    memories/                         #   atomized snippets for RavenBrain MCP (versioned)
    benchmarks/                       #   project: raw Geekbench AI exports
  wiki/                               # LLM-generated and LLM-maintained markdown
    {index,log,overview,hot,tasks}.md # State files (read hot.md first)
    people/   orgs/   tools/   open-source/   # Generic entity folders
    concepts/ analyses/ sources/      # Generic concept/analysis/document folders
    business/                         #   project: AI as business
    benchmarks/                       #   project: hardware benchmarks
```

**Project-specific entries** (marked `# project: ...`) live alongside the generic structure but are declared here in CLAUDE.md, not in `.instructions/core/`. When adding a new project subdirectory, declare it in this tree so the ingest prompt knows to skip it during source listing. Project-specific prompts and templates live under `.instructions/projects/<name>/`.

## Reusable prompts

The user invokes these by name (e.g. *"run the ingest prompt"*). Each one is a complete, self-contained protocol — **read the prompt file when invoked, do not summarize from memory.**

| Scope | Prompt | Path | Purpose |
|---|---|---|---|
| core | Customize Template | `.instructions/core/prompts/customize-template.md` | One-time onboarding for a fresh template clone (sets topic scope) |
| core | Ingest | `.instructions/core/prompts/ingest.md` | Add new sources from `raw/` into the wiki |
| core | Task Review | `.instructions/core/prompts/task-review.md` | Walk through open questions in `wiki/tasks.md` one at a time |
| core | Lint | `.instructions/core/prompts/lint.md` | Quality audit — duplicates, contradictions, stale content |
| core | Orphans | `.instructions/core/prompts/orphans.md` | Link-graph audit — orphaned pages and dangling links |
| core | Clean Data | `.instructions/core/prompts/clean-data.md` | Mechanical hygiene — frontmatter, naming, tags, encoding |
| project: benchmarks | Benchmark Add | `.instructions/projects/benchmarks/add-benchmark.md` | Add or update a Geekbench AI rig benchmark |

## Templates

| Scope | Template | Path |
|---|---|---|
| core | Source summary (base) | `.instructions/core/templates/source-summary.md` |
| core | YouTube source (extends base) | `.instructions/core/templates/youtube-source.md` |
| core | PDF source (extends base) | `.instructions/core/templates/pdf-source.md` |
| core | Person page | `.instructions/core/templates/person-page.md` |
| core | Memory snippet | (no template — see [`memory-rules.md`](.instructions/core/rules/memory-rules.md)) |
| project: benchmarks | Benchmark rig | `.instructions/projects/benchmarks/rig-template.md` |

## Rules

Detailed rules live in `.instructions/core/rules/`. Read on demand, not preemptively.

| File | Covers |
|---|---|
| `page-conventions.md` | Frontmatter, page types & folders, wikilinks, quality bar |
| `memory-rules.md` | RavenBrain memory format, tag taxonomy, what to capture |
| `hot-cache-rules.md` | What goes in `wiki/hot.md` and what doesn't (500-word cap) |
| `overview-rules.md` | What goes in `wiki/overview.md` (1,500-word cap, synthesis only) |
| `index-rules.md` | Format and content of `wiki/index.md` |
| `log-rules.md` | Rolling-window changelog rules for `wiki/log.md` (10-entry cap; git is the historical record) |
| `tasks-rules.md` | What belongs in `wiki/tasks.md` (user-input items only) and how lint/task-review keep it pruned |
| `pdf-extraction.md` | How to detect/install/run a PDF→text tool and inject the result into the clipping MD |

## Querying the wiki

Read `wiki/hot.md` then `wiki/index.md`, then load only the relevant pages. Synthesize with citations. Optionally file the answer as an `analysis` page if the user agrees.

## Session Start Checklist

1. Read `CLAUDE.md` (this file).
2. Read `wiki/hot.md` — fast context, do not skip.
3. Read `wiki/index.md` — full page catalog.
4. Read all of `wiki/log.md` — recent activity (capped at 10 entries per `log-rules.md`).
5. Glance at `wiki/tasks.md` — note any open items relevant to the session.
6. Do **not** read individual wiki pages unless the user's request requires it.
7. Ask the user what they'd like to do: ingest, query, lint, or explore.
