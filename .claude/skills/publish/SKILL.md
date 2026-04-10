---
name: publish
description: Commit all wiki changes, tag a release, and push to GitHub to trigger the Quartz build.
allowed-tools: Bash(git status *) Bash(git add *) Bash(git commit *) Bash(git tag *) Bash(git push *) Bash(git log *) Bash(git diff *)
---

Publish the wiki to GitHub Pages. Follow these steps exactly:

## 1. Check for changes

Run `git status` and `git diff --stat`. If there are no changes, tell the user there's nothing to publish and stop.

## 2. Commit

- Stage all changed and new files under `wiki/` (and any other tracked paths that have changes).
- Do NOT stage files in `raw/` (except `raw/memories/`), `.instructions/`, or other non-wiki paths unless the user explicitly asks.
- Write a concise commit message summarizing what changed. Follow the repo's commit style (see recent `git log --oneline -10`).
- **Never** add `Co-Authored-By` or Claude attribution to the commit message.
- Use `Refs #N` (not `Closes #N`) if referencing issues.

## 3. Tag

- If the user provided a tag, use it.
- If not, auto-generate one using the repo's date-based convention: `vYYYY.MM.DD` for the first publish of the day, `vYYYY.MM.DD.N` (incrementing N) if a tag for today already exists.
- Check existing tags with `git tag --sort=-v:refname | head -5` to determine the next suffix.

## 4. Push

- Push the commit and tag to origin: `git push origin main --tags`.
- Report the tag name and confirm that the push succeeded.
- Remind the user that the GitHub Actions build will deploy to Pages automatically.
