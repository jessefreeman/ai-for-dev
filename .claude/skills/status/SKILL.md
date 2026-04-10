---
name: status
description: Quick wiki briefing — what's new, what's pending, current state at a glance.
---

Run the session-start checklist and give the user a concise briefing:

1. Read `wiki/hot.md` — summarize current state and most active pages in 2-3 sentences.
2. Read `wiki/log.md` — note the most recent activity.
3. Read `wiki/tasks.md` — count open items and flag any that are urgent or overdue.
4. Run `git log --oneline -5` — show what the last few commits were.
5. Check `raw/` for any unprocessed source files (not in `raw/archive/`).

Present the briefing in a compact format. If there are sources waiting to be ingested, remind the user they can run `/ingest`.
