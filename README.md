# AI for Developers — Jesse Freeman's Second Brain

A personal AI research wiki by **[Jesse Freeman](https://jessefreeman.com)**, founder of **[BFreeLabs](https://bfreelabs.ai)**. Browse it live at **[aifor.dev](https://aifor.dev)**.

This is a living knowledge base focused on AI tools, techniques, and workflows for developers. Inspired by [Nate Herk's video](https://www.youtube.com/watch?v=sboNwYmH3AY) on [Andrej Karpathy's LLM Wiki idea](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f). Content is written and maintained by Claude Code — I add sources, the LLM summarizes, cross-references, and files everything. The site rebuilds automatically as new content is added.

## How it works

```
raw/              ← I drop articles, transcripts, and notes here (gitignored)
wiki/             ← Claude Code reads raw/ and writes structured wiki pages here
CLAUDE.md         ← The schema: page types, operations, and conventions
quartz.config.ts  ← Quartz v4 build config
.github/          ← GitHub Actions workflow that builds and deploys the site
```

1. Clip an article with Obsidian Web Clipper into `raw/`
2. Tell Claude Code to ingest it
3. Claude reads the source, creates or updates entity and concept pages in `wiki/`, cross-references everything, and updates the index
4. Push — the GitHub Action builds `wiki/` with Quartz v4 and deploys to aifor.dev

## Contributing

Wiki edits and source suggestions are welcome.

- **Edit a page** — open a PR with your change and a note on what you updated and why
- **Suggest a source** — open a PR adding a markdown file to `raw-public/` with the article and why it's relevant; it will be ingested and become part of the wiki

## Build your own

This repo is designed to be forked. To start your own LLM wiki:

1. **Fork or clone this repo**
2. **Delete `wiki/` and `raw/`** — that's my content, not yours
3. **Open the folder in [Obsidian](https://obsidian.md)** (optional but recommended)
4. **Open [Claude Code](https://claude.ai/code)** in the repo root
5. **Tell Claude:** *"I've deleted the wiki. Read CLAUDE.md and set up the folder structure so I can start adding my own content."*
6. **Start adding sources** — drop articles into `raw/`, tell Claude to ingest them
7. **Update `quartz.config.ts`** with your own `pageTitle` and `baseUrl`
8. **Push and deploy** — the GitHub Action handles the rest

Everything Claude needs to run the wiki is in `CLAUDE.md`. You can customize it for your own domain and topic area.

## Local build

```bash
bash .github/scripts/build.sh     # builds wiki/ → /tmp/quartz-output
node .github/scripts/serve.js     # serves at http://localhost:8000
```

## Publishing

The workflow triggers on version tags, manual dispatch, and nightly at midnight UTC:

```bash
git tag v2026.04.06 && git push --tags
```
