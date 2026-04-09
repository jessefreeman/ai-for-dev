---
title: .cnw.zip — Conway's proprietary extension format on top of MCP
summary: Conway extensions ship as .cnw.zip packages that sit on MCP but only work inside Conway. The Google Play Services / iPhone App Store pattern applied to AI agents.
tags: [tool_conway, tool_mcp, concept_proprietary_layer, concept_platform_strategy, source_nate_b_jones_conway_leak]
---

# .cnw.zip — Conway's proprietary extension format

## Context

From [[summary-nate-b-jones-conway-leak|I Analyzed 512,000 Lines of Leaked Code]]. See also [[conway]], [[mcp]], [[behavioral-lock-in]].

## Content

Conway extensions ship as `.cnw.zip` packages containing custom interface panels, information handlers, and tools. **They sit on top of MCP but are not portable MCP tools** — they only work inside Conway.

**The pattern**: MCP is the open foundation; `.cnw.zip` is the proprietary distribution layer on top. Anthropic gets the credibility of publishing an open standard *and* the commercial advantage of building the valuable tooling in a format that runs only in their environment.

**The historical parallel** (Nate B Jones's framing): this is the **Google Play Services / iPhone App Store** pattern applied to AI agents.
- Linux/AOSP is open; Google Play Services (Maps, Payments, Push, Play Store) is the proprietary layer that makes Android commercially viable
- Web standards are open; the iOS App Store is the proprietary layer where the money is
- MCP is open; `.cnw.zip` extensions inside Conway are the proprietary layer

**The developer choice**: build a portable MCP tool (works everywhere, no built-in distribution) or build a `.cnw.zip` extension (locked in to Conway, but featured placement inside the environment millions of Claude subscribers use). Same choice mobile devs faced in 2008–9; the App Store side won every time.

The wiki tracks this as the **proprietary-layer-on-top risk** for any open AI-agent standard.
