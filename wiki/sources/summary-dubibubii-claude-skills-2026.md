---
type: source-summary
sources: ["The Only Claude Skills You Need in 2026.md"]
created: 2026-04-09
updated: 2026-04-09
tags: [video, youtube, claude-code, plugins, skills, mcp, ecosystem]
---

# The Only Claude Skills You Need in 2026

**Channel:** [[dubibubii|Dubibubii]]
**Format:** YouTube video
**URL:** https://www.youtube.com/watch?v=2BFN2DtcQMw
**Length:** ~17 minutes
**Published:** 2026-04-08
**Sponsor:** none disclosed (creator promotes own Discord community)

## Summary

Rapid-fire walkthrough of 33 Claude Code skills, MCP servers, and OSS repos the creator considers worth installing out of "500,000+" available in the broader skills marketplace. Mix of Anthropic-official skills, community skill packs, MCP servers, and standalone OSS projects. The source's structural value is not its individual recommendations but the **sheer scale of the plugin ecosystem it surfaces**: the wiki has been tracking individual plugins one source at a time, and this is the first source to treat the plugin layer as a category in its own right. Anchors the new [[agent-plugins]] index page.

## Key Points

- **Skills vs MCPs vs repos** — the creator's framing: *"Skills improve Claude, MCPs connect Claude, repos host the tools."* This is the cleanest one-line distinction the wiki has captured.
- **Frontend Design skill is the most-installed Claude skill** at 277,000 installs. Bans Inter / Roboto / Arial fonts and forces Claude to commit to a design direction before writing code.
- **Superpowers** ([[superpowers]]) was accepted into the Anthropic marketplace in January 2026 and is now at 100K+ stars. Will *delete* code written before tests exist (not archive — delete).
- **Karpathy's autoresearch** hit 50K stars in a single week. Research-loop pattern: give it a goal, it runs experiments overnight.
- **Context7** ([[context7]]) is "the #1 MCP server by a mile" — 50K stars, 240K weekly NPM downloads. Creator's universal recommendation: *"if you install one MCP server from this entire video, make this the one."*
- **Garry Tan's gstack** ([[gstack]]) at 40K stars; TechCrunch covered it; "god mode" CTO quote went viral. 15 opinionated prompts structuring Claude into different roles (CEO, designer, EM, release manager).
- **Taskmaster** ([[task-master-ai]]) exposes 36 MCP tools, ingests a PRD and breaks it into tasks-with-dependencies. Works in Cursor, Claude Code, Codex, "anything."
- **Three Anthropic-official skills**: [[pdf-processing-skill|PDF Processing]], [[xlsx-skill|XLSX]], [[pptx-skill|PPTX]]. Plus the meta [[skill-creator-skill|Skill Creator]] that generates skill files from plain-English descriptions.
- **Promptfoo** is the wiki's first dedicated prompt-security tool — red-teaming, edge-case testing, vulnerability scanning. Connects to [[ai-personal-agent-hardening]] as an offensive-tooling-for-defenders entry.
- **Container-Use by Dagger** (Solomon Hykes / Docker creator) — agent sandboxing. Each agent gets a containerized environment that physically can't break the host system. Direct support for the [[ai-personal-agent-hardening]] human-in-loop quarantine rule.
- **Claude Squad** runs multiple Claude Code agents in parallel terminal sessions. Also supports Codex and Aider. 65K stars.
- **Firecrawl** ([[firecrawl]]) at 97K stars (YC-backed) — passed Scrapy's star count, the long-time default web scraper. *"If your agent needs to read the internet, this is the standard."*
- **LangFlow** at 146K stars — visual drag-and-drop AI agent pipeline builder, DataStax-backed. Sibling to [[n8n]], [[dify]], [[sim-ai]] in the visual-builder cluster.
- **Awesome Claude Skills** (Travis Vian, 95K stars) and the **official Anthropic skills repo** (100K+ stars) are the canonical curated lists. Plus three marketplaces: SkillsMP (500K+ skills, largest catalog), SkillHub (30K AI-rated for quality), and the Maggie archive (daily fresh repo feed).
- **Install pattern**: paste the GitHub link or skill URL into Claude Code; it figures out the rest.

## Sponsorship & Bias Notes

**Sponsor:** none disclosed. The creator promotes their own Discord ("vibebuilders," 1,800+ members) and a personal "vibe coding to $100K" challenge. The video is a creator-driven recommendation reel, not a paid placement.

**Product placement / affiliations:** none observed as paid, but the source is **inherently editorial-opinion-driven**. The creator self-identifies as a former marketer who "went through thousands" of skills and surveyed his community. Star counts and install numbers are claims-from-source, not independently verified by the wiki. Treat all numerical claims as approximate.

**Comparison bias:** the video does not compare competing plugins head-to-head; it presents each as a standalone recommendation. The lack of comparison means the wiki cannot file any "X beats Y" claims from this source.

## Notable Quotes

> *"Skills improve Claude, MCPs connect Claude, repos host the tools."*
> — the cleanest distinction in the source

> *"It will literally delete your code if you write it before the tests exist. Not archive it, delete it."*
> — on [[superpowers]]

> *"If you install one MCP server from this entire video, make sure it is this one."*
> — on [[context7]]

## Connected Pages

- **Concept**: [[agent-plugins]] — load-bearing; this source seeds the index
- **People**: [[dubibubii]] (author), [[andrej-karpathy]] (autoresearch), [[corey-haines|Corey Haines]] (marketing skills, name-checked only)
- **Already in wiki**: [[superpowers]], [[context7]], [[task-master-ai]], [[gstack]], [[n8n]], [[remotion]], [[skills-sh]], [[obsidian]], [[claude-code]], [[mcp]]
- **New plugin pages** (28): [[frontend-design-skill]], [[autoresearch]], [[playwright-mcp]], [[tavily]], [[codebase-memory-mcp]], [[pdf-processing-skill]], [[xlsx-skill]], [[pptx-skill]], [[doc-co-authoring-skill]], [[canvas-design-skill]], [[web-artifacts-builder-skill]], [[marketing-skills-pack]], [[claude-seo-skill]], [[brand-guidelines-skill]], [[deep-research-skill]], [[gpt-researcher]], [[obsidian-skills-pack]], [[context-optimization-skill]], [[promptfoo]], [[skill-creator-skill]], [[firecrawl]], [[langflow]], [[claude-squad]], [[container-use]], [[ghost-os]], [[awesome-claude-skills]]
- **Hardening connections**: [[ai-personal-agent-hardening]] (promptfoo, container-use), [[multi-agent-orchestration]] (claude-squad)

## See Also

- [[agent-plugins]] — the canonical index this source anchors
- [Original Transcript](../../raw/archive/The%20Only%20Claude%20Skills%20You%20Need%20in%202026.md)
