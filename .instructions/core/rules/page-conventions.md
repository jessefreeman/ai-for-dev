# Page Conventions

How every wiki page is structured.

## Frontmatter

```yaml
---
type: source-summary | entity | concept | comparison | analysis | overview
sources: ["source-filename.md", ...]
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [tag1, tag2]
---
```

`tags` must be a YAML array (Obsidian compatibility), not a flat string.

## Page types and folders

| Type | Folder | Purpose | Example slug |
|------|--------|---------|--------------|
| `source-summary` | `wiki/sources/` | Summary of a single raw source | `summary-author-keyword` |
| `entity` (person) | `wiki/people/` | A person | `firstname-lastname` |
| `entity` (organization) | `wiki/orgs/` | A company, lab, university group, foundation, or government agency — anything that ships products, publishes papers, or takes positions as a collective | `org-name` |
| `entity` (tool/product) | `wiki/tools/` | Commercial or hosted tool | `tool-name` |
| `entity` (open source) | `wiki/open-source/` | OSS project or library | `project-name` |
| `entity` (article/source) | `wiki/sources/` | A notable article or document | `document-title-slug` |
| `concept` | `wiki/concepts/` | An idea, framework, technique | `concept-name` |
| `business` | `wiki/business/` | Business patterns, ROI frameworks, sales playbooks | `framework-name` |
| `comparison` | `wiki/analyses/` | Side-by-side analysis | `x-vs-y` |
| `analysis` | `wiki/analyses/` | Filed answer to a query | `analysis-topic` |
| `overview` | `wiki/` (root) | High-level KB synthesis | `overview.md` |

**Org pages vs product pages**: products live in `wiki/tools/` (commercial) or `wiki/open-source/` (OSS); the **organizations behind them** live in `wiki/orgs/`. An org page exists when the wiki references the organization itself — its corporate decisions, policy positions, acquisitions, leadership shifts — beyond just its products. Create an org page as soon as the wiki has either (a) a source published *by* the org (a paper, a manifesto, a blog post) or (b) two or more references to the org's products that share an editorial thread (e.g., the same company's products keep showing up in adjacent contexts). Cross-link products to their org page in both directions.

The wiki's specific topic scope is declared in `CLAUDE.md`. These page types and folders are topic-agnostic — the same structure works for any LLM-maintained personal knowledge base.

## Body

```markdown
# Page Title

Content here. Use [[wikilinks]] to link to other wiki pages.
Link to raw sources as relative markdown links: [display name](../../raw/archive/filename.md).

## See Also
- [[Related Page 1]]
- [[Related Page 2]]
```

Every page must link to at least one other wiki page.

## Wikilink rules

- **Wiki-to-wiki**: `[[Page Title]]` or `[[page-slug|Display Name]]`. These resolve in both Obsidian and Quartz.
- **Citations to raw sources**: use a **relative markdown link**, not a wikilink:
  ```markdown
  [Original Transcript](../../raw/archive/filename.md)
  ```
  **Why not wikilinks?** `raw/` lives outside the `wiki/` tree. The wikilink form `[[raw/archive/filename]]` does not resolve in either Obsidian (which only resolves wikilinks within the vault root, and the gitignored `raw/` directory may not be a vault member) or in Quartz (which only renders the `wiki/` subtree). Relative markdown links are the only form that works in both renderers.
  - URL-encode any spaces or apostrophes in the filename (e.g. `Karpathy%20Just%2010x%27d.md`).
  - The path depth is `../../` from any standard wiki page (`wiki/<folder>/<page>.md` → repo root) — adjust if pages are nested deeper.
- **Filenames**: lowercase-kebab-case (`retrieval-augmented-generation.md`)
- **Page titles**: short and clear ("Retrieval-Augmented Generation", not "A Summary of RAG Techniques")

## Frontmatter tag taxonomy

- **Domain tags:** declared per-wiki in `CLAUDE.md`. Use a consistent, finite set.
- **Format tags:** `article`, `paper`, `book-chapter`, `podcast`, `video`, `transcript`, `pdf`, etc. (format-not-topic, so these are reusable across any wiki).

## Quality bar

- Every claim is traceable to a source via a link.
- New info that contradicts existing pages: note the contradiction, update to current best understanding.
- Precise language. No filler, no hedging, no marketing voice.
- Dense summaries: a 5,000-word article → ~500 words.
- The wiki must be browsable in Obsidian without an LLM.
