---
title: Remotion — Programmable Video vs Generative Video
summary: Remotion generates React code that renders video — not AI-generated pixels — making output editable, version-controllable, and free to iterate.
tags: [tool_remotion, tool_claude_code, topic_video, topic_creative_tools, source_nate_b_jones_google_stitch]
---

# Remotion — Programmable Video vs Generative Video

## Context

From [[summary-nate-b-jones-google-stitch|Nate B Jones's Google Stitch video]]. See also [[Remotion]], [[skills.sh]].

## Content

Remotion is a React framework where every video element is a React component. Claude Code writes the components; Remotion renders them to MP4.

**The critical distinction**: This is NOT the same as Sora, Runway, or other generative video tools.

| | Generative Video (Sora, Runway) | Remotion |
|---|---|---|
| Output | Pixels generated from prompts | React code that renders video |
| Editability | Hard to edit, requires regenerating | Edit any component, rerender |
| Cost to iterate | Per-generation cost | Free (just Claude Code subscription) |
| Version control | Not possible | Standard git |
| Parameterization | Not possible | Change one var → rerender 100 variants |

**Practical example**: Update the data source → every chart in the video updates automatically. Rerender 100 localized versions → free. Change one variable → instant rerender.

**Sweet spot**: Text animations, data visualizations, product demos, terminal recordings, social clips. Complex overlapping animations may produce imperfect renders.

**Adoption signal**: 150k+ installs on skills.sh in 8 weeks from January 2026. #1 non-corporate skill on the platform.
