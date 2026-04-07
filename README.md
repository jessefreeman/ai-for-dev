# AI for Developers — Jesse Freeman's Second Brain

A personal AI research wiki by **[Jesse Freeman](https://jessefreeman.com)**, founder of **[BFreeLabs](https://bfreelabs.ai)**. Browse it live at **[aifor.dev](https://aifor.dev)**.

This is a living knowledge base focused on **AI tools, techniques, and workflows for developers** — but the *methodology* underneath it is **topic-agnostic**. Anyone can use this repo as a GitHub template starter for their own LLM-maintained second brain on any topic. See [Use this repo as a template](#use-this-repo-as-a-template) below.

Inspired by [Nate Herk's video](https://www.youtube.com/watch?v=sboNwYmH3AY) on [Andrej Karpathy's LLM Wiki idea](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f). Content is written and maintained by Claude Code — the human adds sources, the LLM summarizes, cross-references, and files everything. The site rebuilds automatically as new content is added.

---

## What's in this repo

```
ai-for-dev/
  CLAUDE.md          ← the topic scope + project declarations + how-to-call prompts
  README.md          ← this file
  .instructions/
    core/            ← data-agnostic methodology — copy this into a new second brain unchanged
      prompts/       ← callable prompts: customize-template, ingest, lint, clean-data, orphans
      rules/         ← protocols: page-conventions, memory-rules, hot-cache-rules, pdf-extraction…
      templates/     ← page templates: source-summary (base), youtube-source, pdf-source, person-page
    projects/        ← project-specific methodology (this wiki only — hardware benchmarks)
    tools/           ← gitignored, per-installation helpers (PDF extractors, etc.)
  raw/               ← source documents waiting for ingest (gitignored except memories/)
    archive/         ← already-ingested sources
    assets/          ← attachments (PDFs, images)
    memories/        ← atomized snippets for RavenBrain MCP (versioned)
  wiki/              ← LLM-generated and LLM-maintained markdown (the published site)
    {hot,index,log,overview,tasks}.md  ← state files
    people/ tools/ open-source/ concepts/ analyses/ sources/ business/ benchmarks/
  quartz.config.ts   ← Quartz v4 build config
  .github/           ← GitHub Actions workflow that builds and deploys the site
```

**The key separation**: `.instructions/core/` is generic — it works for any second brain. `.instructions/projects/` and `wiki/business/` and `wiki/benchmarks/` are this wiki's specific use cases. `CLAUDE.md` declares the topic scope and which projects belong to this wiki. Copy `.instructions/core/` into a new vault and you have a working methodology starter for any topic.

---

## Daily workflow

1. Clip an article with Obsidian Web Clipper (or save a PDF/transcript) into `raw/`
2. Tell Claude Code: *"run the ingest prompt"*
3. Claude reads the source, proposes a Phase 1 plan, waits for your approval, then writes the source summary, creates or updates entity/concept pages, cross-references, updates `index.md` and `hot.md`, generates memories, archives the source, and commits
4. Push — the GitHub Action builds `wiki/` with Quartz v4 and deploys to aifor.dev

Every operation runs through one of the prompts in `.instructions/core/prompts/`. The full list lives in [`CLAUDE.md`](CLAUDE.md#reusable-prompts).

---

## Use this repo as a template

This repo is designed as a **GitHub template** for building your own LLM-maintained second brain on any topic. The methodology in `.instructions/core/` is data-agnostic and reusable; only `CLAUDE.md`, `wiki/`, `raw/`, and `.instructions/projects/` are specific to this wiki.

### Quick start

1. **Use the template** — click the green "Use this template" button at the top of [this repo on GitHub](https://github.com/jessefreeman/ai-for-dev), or run:
   ```bash
   gh repo create my-second-brain --template jessefreeman/ai-for-dev --public
   ```
2. **Clone your new repo locally**
3. **Delete the example content** — `wiki/` and `raw/archive/` in this repo are Jesse's personal content, not yours:
   ```bash
   rm -rf wiki/ raw/archive/ raw/memories/ raw/assets/archive/ raw/benchmarks/
   ```
   (Keep `raw/`, `raw/assets/`, `.instructions/`, `CLAUDE.md`, `README.md`, `quartz.config.ts`, `.github/`.)
4. **Open the folder in [Claude Code](https://claude.ai/code)** (and optionally [Obsidian](https://obsidian.md))
5. **Run the customize-template prompt** — tell Claude:
   > *"run the customize-template prompt"*
   Claude will read [`.instructions/core/prompts/customize-template.md`](.instructions/core/prompts/customize-template.md) and walk you through 4 questions:
   - **Topic scope** — what's this wiki about?
   - **Domain tags** — your 5–10 reusable tags
   - **Project-specific use cases** — anything beyond standard ingest? (e.g., recipe tests, hardware benchmarks, paper reading lists)
   - **Branding** — name, URL, social handles (optional)
   It pauses for your approval, then updates `CLAUDE.md`, `README.md`, the wiki state files, and any project-specific scaffolding in a single commit.
6. **Start adding sources** — clip your first article into `raw/` and run the ingest prompt
7. **Set up publishing** (optional) — update `quartz.config.ts` with your own `pageTitle` and `baseUrl`, then push. The GitHub Action handles the rest.

### What "customizing" does

After the customize-template prompt runs, you'll have:

- `CLAUDE.md` with **your** topic scope, **your** domain tags, **your** project list
- `README.md` with **your** wiki name, author, URL, and social handles (or generic placeholders if you skipped that question)
- `wiki/index.md`, `wiki/hot.md`, `wiki/overview.md`, `wiki/log.md`, `wiki/tasks.md` initialized as empty scaffolds keyed to your topic
- `.instructions/projects/<your-project>/` directories scaffolded for any project-specific use cases you named
- The full `.instructions/core/` methodology unchanged — same prompts, same rules, same templates

The **same prompts** that this wiki uses (`ingest`, `lint`, `clean-data`, `orphans`) work in your customized vault. The methodology evolves over time as bugs are fixed and improvements land in this upstream repo — see [Pulling upstream methodology improvements](#pulling-upstream-methodology-improvements) below.

### Example customizations

Three examples of the same template, customized for very different topics:

| Topic | Domain tags | Project-specific use cases |
|---|---|---|
| **AI tools for developers** *(this repo)* | ai, llm, agents, coding, local-ai, knowledge-management | hardware benchmarks |
| **Home cooking and food science** | cooking, baking, fermentation, pastry, ingredients, technique | recipe testing logs, ingredient inventory |
| **Medieval history primary sources** | manuscripts, charters, chronicles, latin-paleography, prosopography | manuscript catalog, citation tracking |

The core methodology works for all three. Only `CLAUDE.md`, `wiki/`, `raw/`, and the `.instructions/projects/<name>/` scaffolds are different.

### Pulling upstream methodology improvements

The methodology in `.instructions/core/` evolves over time. To pull improvements into a customized template clone without losing your wiki content:

```bash
# Add the template repo as a remote (one time)
git remote add template https://github.com/jessefreeman/ai-for-dev.git
git fetch template

# Pull only the .instructions/core/ subtree
git checkout template/main -- .instructions/core/
git status     # review what changed
git commit -m "chore: pull upstream .instructions/core/ improvements"
```

This **only** touches `.instructions/core/`. Your `CLAUDE.md`, `wiki/`, `raw/`, and `.instructions/projects/` are untouched. If a methodology change requires a corresponding update to your `CLAUDE.md` (e.g., a new prompt was added that needs a row in the prompts table), the upstream commit message will say so.

To **contribute methodology improvements back upstream**, open a pull request on [jessefreeman/ai-for-dev](https://github.com/jessefreeman/ai-for-dev) touching only files under `.instructions/core/`. Topic-specific or this-wiki-only changes will be rejected — that's the whole point of the `core/` boundary.

---

## Contributing to this wiki specifically

Wiki edits and source suggestions for **this specific wiki** (Jesse's AI-for-developers second brain) are welcome.

- **Edit a page** — open a PR with your change and a note on what you updated and why. PRs should touch `wiki/` files.
- **Suggest a source** — open an issue with the URL and a one-sentence reason it's relevant. If approved, Jesse will ingest it.
- **Methodology improvements** — PRs touching `.instructions/core/` are welcome from anyone using the template, since they benefit every downstream second brain. See [Pulling upstream methodology improvements](#pulling-upstream-methodology-improvements).

---

## Local build

```bash
bash .github/scripts/build.sh     # builds wiki/ → /tmp/quartz-output
node .github/scripts/serve.js     # serves at http://localhost:8000
```

## Publishing

The workflow triggers on version tags, manual dispatch, and nightly at midnight UTC:

```bash
git tag v2026.04.07 && git push --tags
```

---

## Credits

- **Pattern**: [Andrej Karpathy's LLM Wiki idea](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f), demonstrated by [Nate Herk](https://www.youtube.com/watch?v=sboNwYmH3AY)
- **Build system**: [Quartz v4](https://quartz.jzhao.xyz/)
- **Content tool**: [Claude Code](https://claude.ai/code)
- **Editor**: [Obsidian](https://obsidian.md) (optional but recommended)
- **PDF extraction**: [pypdf](https://github.com/py-pdf/pypdf)
