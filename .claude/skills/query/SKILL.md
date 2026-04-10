---
name: query
description: Search the wiki and synthesize an answer with citations. Optionally file the result as an analysis page.
---

Answer the user's question by querying the wiki. Follow this protocol:

1. Read `wiki/hot.md` then `wiki/index.md` to orient.
2. Identify which wiki pages are relevant to the question.
3. Read only those pages — do not load the entire wiki.
4. Synthesize an answer with `[[wikilink]]` citations to the pages you drew from.
5. If the answer is substantial, ask the user if they'd like it filed as a new analysis page in `wiki/analyses/`.
