# Plan: Obsidian Wiki → aifor.dev Public Site

## Context
Turn the personal Obsidian Research vault into a public wiki at aifor.dev. The existing jessefreeman/ai-for-dev Jekyll repo gets archived. The vault structure stays as-is — a GitHub Action handles Quartz v4 conversion at build time. The site should be forkable so anyone can clone it, use CLAUDE.md with Claude Code, and build their own wiki.

## Architecture

```
ai-for-dev/                ← repo root (= Obsidian vault root)
  CLAUDE.md                ← LLM Wiki schema (stays as-is)
  README.md                ← project description, fork/contribution guide
  quartz.config.ts         ← minimal Quartz config (title, baseUrl, plugins)
  .gitignore               ← excludes raw/, .obsidian/workspace.json, .claude/, .instructions/
  .github/
    workflows/
      publish.yml          ← Quartz build → GitHub Pages
    PULL_REQUEST_TEMPLATE.md
  wiki/                    ← published content (12 pages currently)
  raw/                     ← .gitignored (private sources)
  raw-public/              ← (optional) community-contributed sources
```

The GitHub Action clones Quartz at build time, runs `npx quartz build -d wiki/`, and deploys to GitHub Pages. No Quartz source code lives in the repo.

## Key Decisions
- **Domain**: aifor.dev replaced entirely (not a subdomain)
- **Build triggers**: tag push (`v*`) + manual dispatch + nightly cron — NOT on every push
- **Hosting**: GitHub Pages (free unlimited minutes for public repos)
- **Contributions**: Standard PR review. PR template has two paths: add source vs edit wiki page
- **raw/**: gitignored (private). Contributors use raw-public/ for source submissions
- **Forkable**: Anyone can fork, clone, open in Obsidian, use CLAUDE.md with Claude Code

## Step 1: Prepare the existing ai-for-dev repo
```bash
# Confirm gh CLI is authenticated
gh auth status

# Clone the existing repo
gh repo clone jessefreeman/ai-for-dev
cd ai-for-dev

# Archive current main to a branch
git branch archive/jekyll-guide main
git push origin archive/jekyll-guide

# Create fresh orphan main (empty)
git checkout --orphan new-main
git rm -rf .
git commit --allow-empty -m "Initialize new main branch"
git branch -M new-main main
git push origin main --force
```

## Step 2: Create new files in the vault

### .gitignore
```
raw/
.obsidian/workspace.json
.claude/
.instructions/
.DS_Store
node_modules/
public/
```

### quartz.config.ts
Minimal Quartz v4 config:
- pageTitle: "AI For Dev"
- baseUrl: "aifor.dev"
- Default Quartz plugin set (transformers, filters, emitters)
- enableSPA: true
- Theme: default Quartz theme or light customization

### .github/workflows/publish.yml
```yaml
name: Publish to GitHub Pages

on:
  push:
    tags: ['v*']
  workflow_dispatch:
  schedule:
    - cron: '0 0 * * *'  # nightly at midnight UTC

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: "pages"
  cancel-in-progress: false

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout wiki repo
        uses: actions/checkout@v4

      - name: Clone Quartz
        run: |
          git clone --depth 1 --branch v4 https://github.com/jackyzha0/quartz.git /tmp/quartz

      - name: Setup Node
        uses: actions/setup-node@v4
        with:
          node-version: 20
          cache: 'npm'
          cache-dependency-path: /tmp/quartz/package-lock.json

      - name: Install Quartz dependencies
        run: cd /tmp/quartz && npm ci

      - name: Copy config
        run: cp quartz.config.ts /tmp/quartz/quartz.config.ts

      - name: Build site
        run: cd /tmp/quartz && npx quartz build -d $GITHUB_WORKSPACE/wiki/ -o $GITHUB_WORKSPACE/public

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: public/

  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

### .github/PULL_REQUEST_TEMPLATE.md
Two paths:
- **Adding a new source**: Contributor drops markdown in raw-public/, fills checklist (what is it, why relevant, what topics). Maintainer ingests with Claude Code.
- **Editing a wiki page**: Standard edit with description of what changed and why.

### README.md
Sections:
- What this is (LLM-maintained AI research wiki)
- How it works (CLAUDE.md schema, ingest/query/lint operations)
- Browse the wiki at aifor.dev
- Fork & build your own (clone, open in Obsidian, use Claude Code)
- Contributing (PR process, two paths)
- How the build works (Quartz, GitHub Action, tag-based publishing)

## Step 3: Initialize git and push
```bash
cd /path/to/Research/vault
git init
git add .
git commit -m "Initial commit: LLM Wiki for aifor.dev"
git remote add origin git@github.com:jessefreeman/ai-for-dev.git
git push origin main --force
```

## Step 4: Configure GitHub Pages
```bash
# Enable Pages to deploy from Actions
gh api repos/jessefreeman/ai-for-dev/pages -X PUT -f build_type=workflow

# Set custom domain
gh api repos/jessefreeman/ai-for-dev/pages -X PUT -f cname=aifor.dev
```

DNS: Ensure aifor.dev points to GitHub Pages IPs (185.199.108-111.153) or has a CNAME to jessefreeman.github.io. This may already be configured from the Jekyll site.

## Step 5: First build & verify
```bash
# Tag and push to trigger first build
git tag v2026.04.06
git push --tags

# Or trigger manually
gh workflow run publish.yml
```

Verify:
- Action completes successfully
- Site loads at aifor.dev
- Wikilinks work (click through pages)
- Index, overview, entity pages all render
- Graph view works (if Quartz default plugins include it)

## Step 6: (Later) Audit and fold in ai-for-dev guide content
- Review pages from the archived Jekyll guide
- Ingest relevant ones as raw sources through the normal CLAUDE.md workflow
- Old guide content becomes wiki pages with proper cross-references

## Quartz v4 Reference
- Build: `npx quartz build -d wiki/ -o public/`
- Wikilinks: supported natively via ObsidianFlavoredMarkdown plugin
- Config: quartz.config.ts (pageTitle, baseUrl, plugins)
- Output: static HTML in public/
- No documented build cache — node_modules caching is sufficient
