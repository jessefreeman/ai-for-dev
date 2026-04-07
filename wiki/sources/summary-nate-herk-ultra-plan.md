---
type: source-summary
sources: ["Planning In Claude Code Just Got a Huge Upgrade.md"]
created: 2026-04-07
updated: 2026-04-07
tags: [video, youtube, ai, claude-code, planning, ultra-plan, anthropic]
---

# Planning In Claude Code Just Got a Huge Upgrade (Ultra Plan)

**Channel:** [[nate-herk|Nate Herk | AI Automation]]
**Format:** YouTube video
**Published:** 2026-04-06
**Sponsor:** Skool community (Nate's own AI Automation Society Plus)

## Summary

Nate Herk walks through Claude Code's new **Ultra Plan** feature: a cloud-hosted planning mode that runs **Opus 4.6 with multi-agent exploration** (3 parallel exploration agents + 1 critique agent). Trigger with `/ultra-plan` from the CLI; plan drafts on the web with a doc-style review surface (comments + emoji reactions on individual sections); teleport back to the terminal for local execution or run remotely. Side-by-side dashboard build: Ultra Plan finished in ~10–15 minutes total while regular local plan took ~45 minutes total — and Ultra Plan's execution was faster too because the plan was clearer. Documented in [[claude-code]] with a full Ultra Plan section.

## Key Points

- **Ultra Plan = cloud Opus 4.6 + multi-agent exploration** — 3 parallel exploration agents + 1 critique agent. This is the structural reason it produces better plans than local single-agent linear thinking.
- **Side-by-side benchmark**: same prompt, same dashboard spec, same execution model
  - **Local plan mode**: ~45 minutes total. Planning alone took 12+ minutes; execution upwards of 30 minutes.
  - **Ultra Plan**: ~10–15 minutes total. Plan finished in ~5 minutes, execution in another ~5–10 minutes.
- **Faster execution is the surprise** — Nate expected planning to be faster, didn't expect execution to be faster too. Inferred reason: clearer plans give the local execution agent less to figure out at runtime.
- **Trigger**: `/ultra-plan <prompt>` from the CLI, or just include "ultra plan" anywhere in a prompt and Claude offers to run it. The keyword "ultra plan" lights up like "ultra think."
- **Web review surface**: doc-style plan with sections (context, what exists, new approach, new files, modifications, final verification), sometimes with diagrams. **Comment on individual sections** or **leave emoji reactions**. Send comments → Claude iterates the plan.
- **Review approval**: "Approve plan" button teleports the plan back to the terminal for local execution. Or execute remotely.
- **Terminal stays unblocked**: unlike local plan mode (which blocks the session), Ultra Plan lets you keep working in the terminal while the cloud runs. Nate notes he'd usually spin up a separate session anyway to keep context clean.
- **Requirements**:
  - Project **must be git/GitHub-synced** — Claude reads the codebase from the cloud. Local-only projects refuse with "you can't do this on the web yet."
  - **CLI only** — VS Code extension and desktop app don't trigger Ultra Plan
  - **Pro or Max subscription required** — API billing doesn't work
- **30-minute cloud cap** on planning, but Nate has never hit it
- **Token usage is opaque**: consumed ~1% of his Max 20x plan per run. No explicit counter. Using more tokens upfront is the trade.
- **Skill invocation can miss the first time**: even though Ultra Plan can see the whole project, Nate had to explicitly tell it to use his "visualizations" skill on one run. Plan was good after that correction.
- **Quote**: "Give me 6 hours to chop down a tree and I will spend the first four sharpening the axe." — Abraham Lincoln, quoted re: planning discipline.

## Notable Quotes

> "Not only is ultra plan faster at planning, but for some reason, it's much faster at executing too. And I think it's just because the plan is so clear that the agents have a much easier time locally just executing on it." — Nate Herk

## Sponsorship & Bias Notes

**Sponsor:** Nate's own Skool community (AI Automation Society Plus). **Not added to the wiki** per sponsorship rule. This is self-promo for Nate's paid courses, not third-party paid content.

**Product placement / affiliations:** Nate is a heavy Claude Code user across all his videos — favorable framing of any new Claude Code feature is consistent with his overall position. The benchmark numbers are real and reproducible (same prompt to two sessions, side by side), so the speedup claim is solid even if the framing is enthusiastic.

**Comparison bias:** Only Claude Code Ultra Plan vs Claude Code local plan — no comparison to [[bmad-method]], [[ai-coding-workflow|Cole Medin's PLANNING.md/TASK.md pattern]], or other planning approaches. Worth noting Ultra Plan and the manual planning patterns are complementary, not competing — Ultra Plan automates what Cole and Brian do by hand.

## Connected Pages

- [[claude-code]] — full Ultra Plan section added here
- [[nate-herk]] — author hub
- [[ai-coding-workflow]] — Cole Medin's process pairs naturally with Ultra Plan
- [[bmad-method]] — heavier manual alternative
- [[meta-prompting]] — Ultra Plan is essentially automated meta-prompting for plans
- [[four-prompting-disciplines]] — specification engineering applied at the plan level

## See Also

- [[summary-cole-medin-100x-ai-coding|Cole Medin's AI coding workflow]] — manual version of the same plan-first thesis
- [[summary-bmad-code-aiadd-method|BMAD Method]] — six-persona heavy version of the same idea
- [[summary-nate-b-jones-four-prompting-disciplines|Four Prompting Disciplines]] — the broader theory
