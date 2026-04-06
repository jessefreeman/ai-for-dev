# AI For Dev Wiki

An Obsidian-based AI research wiki that publishes `wiki/` as a public site at aifor.dev.

## Structure

- `wiki/` — published content (versioned, deployed to aifor.dev)
- `raw/` — private source material (gitignored)
- `CLAUDE.md` — wiki schema and ingest workflow for Claude Code

## Local build

```bash
bash .github/scripts/build.sh          # builds → /tmp/quartz-output
node .github/scripts/serve.js          # serves at http://localhost:8000
```

## Publishing

The workflow at `.github/workflows/publish.yml` triggers on version tags, manual dispatch, and nightly. It clones Quartz v4, builds `wiki/` into a static site, and deploys to GitHub Pages.

```bash
git tag v2026.04.06 && git push --tags
```

## Contributing

Wiki edits go directly into `wiki/` via PR. Describe what changed and why in the PR description.
