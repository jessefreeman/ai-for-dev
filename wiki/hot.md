---
type: hot-cache
created: 2026-04-06
updated: 2026-04-09
---

# Hot Cache

## Current State

**111 sources ingested.** Today's structural addition: **the wiki now has a canonical [[agent-plugins]] index** — anything you have to install to extend an AI coding agent (Claude skills, MCPs, skill packs, sandboxing, parallel runners). Anchored by the [[summary-dubibubii-claude-skills-2026|Dubibubii 33-plugin walkthrough]]: 26 new plugin entity pages created in one ingest, each with its own page so the user can flesh them out with hands-on notes when they actually run them. Status flags (`tracked` / `try` / `tried` / `recommended` / `skip`) on the index drive a single rolling [[tasks|"review agent plugins"]] nudge.

## Most Active Pages

- [[agent-plugins]] — **new load-bearing index page** (concept tier; sibling to [[llm-design-patterns]])
- [[promptfoo]] / [[container-use]] — new defensive plugins; first install-grade tooling for [[ai-personal-agent-hardening]] rule 1 (human-in-loop quarantine)
- [[firecrawl]] / [[langflow]] / [[claude-squad]] — new flagship OSS entries (97K / 146K / 65K stars)
- [[autoresearch]] — new Karpathy repo entry; 50K stars in one week
- [[obsidian-skills-pack]] — only `try`-flagged plugin from the Dubibubii batch (overlaps with this wiki's own operating model)
- [[aimock]] — yesterday morning's ingest; still load-bearing for shadow-factory infra thread
- [[llm-design-patterns]] — pillar concept; sibling to the new plugins index

## New methodology beat (today)

**Plugin promotion rule** (codified in the [[agent-plugins]] page footer): every plugin gets its own page even when thin, because pages exist as containers for *hands-on notes when the user runs the plugin*, not as summaries derived from training data. This is a deliberate carve-out from the general "no stub pages from training data" rule, scoped to the plugin category.

## Defensive cluster grew

The hardening discipline now has **two install-grade tooling answers** in the wiki:

| Surface | Plugin | Role |
|---|---|---|
| Pre-ship | [[promptfoo]] | Red-teaming + injection testing for your own LLM apps |
| Post-ship | [[container-use]] | Per-agent containerized sandbox; the human-in-loop quarantine primitive |

Both are referenced from [[ai-personal-agent-hardening]] now.

## Open Gaps

- **Lint reminder due** — log ingest count crossed the 5-multiple from the Dubibubii ingest. Recommend running lint next session (also covers the duplicate `skills-sh` page issue surfaced today).
- **Plugin-page stub follow-up** — 26 new plugin pages all start in `tracked` status with empty hands-on notes. The "review agent plugins" task is the rolling nudge to convert them to `tried` / `recommended` / `skip`.
- **Long-standing primary sources**: Karpathy gist, AI 2027, Dan Shapiro, StrongDM, METR study
- **Boris Cherny / GSD framework / Ralph loop / claude-agent-sdk** — name-checked, deferred
- **Shadow-factory company Nate B Jones referenced** — open task to find the specific video
- **Obsidian skills pack maintainer attribution** — verify against repo before treating as Obsidian-official

## Architectural Threads to Watch

- **Agent plugin ecosystem** (new): the [[agent-plugins]] index is where future plugin sources accrete. Status flags drive the user-facing nudge system.
- **Shadow-factory enabling infrastructure**: [[aimock]] + [[trigger-dev]] + [[supabase]] + [[mcp]] + [[a2a-protocol]] + [[ag-ui]]
- **LLM Design Patterns library** (user-flagged pillar): [[llm-design-patterns]]
- **Defensive AI security as a discipline**: [[ai-personal-agent-hardening]] + [[kali-linux]] + [[promptfoo]] + [[container-use]] + [[bjorn]] + [[parseltongue]]
- **Anthropic surface expansion (load-bearing)**: [[anthropic-surface-expansion]] + [[persistent-agent-layer-wars]]
- **Behavioral lock-in vs intelligence portability**
- **Three eras of AI competition**: models → interfaces → persistence/memory
