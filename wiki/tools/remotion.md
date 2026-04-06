---
type: entity
sources: ["A Markdown File Just Replaced Your Most Expensive Design Meeting. (Google Stitch).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [tool, video, react, claude-code, open-source]
---

# Remotion

A React framework that treats video as code. Every element in a video is a React component — text, animations, data visualizations, captions, transitions — and Remotion renders those components into an MP4 file.

## How It Works

Install the Remotion skill into Claude Code with a single terminal command. Then describe the video you want in plain English. Claude writes the React components that define every frame. Remotion renders them locally into a video file — for free (other than your Claude Code subscription).

This is **not** AI-generated video (like Sora or Runway). Those tools generate pixels from prompts — impressive but inconsistent, hard to edit, and expensive to iterate. Remotion generates *code* that renders video. Every element is editable, version-controllable, and parameterizable.

**What that means in practice:**
- Change one variable → rerender 100 localized versions, free
- Update the data source → every chart in the video updates automatically
- Anyone on the team can modify the output — it's just code, not a locked export

## Sweet Spot

Works best for: text animations, data visualizations, product demos, terminal recordings, feature announcements, social clips. Complex overlapping elements or intricate timing may produce imperfect renders.

## Adoption

- Launched Claude Code skill: January 2026
- 6M+ views on launch demo video within 48 hours
- **150,000+ installs** on [[skills.sh]] within 8 weeks
- **#1 skill not made by Vercel, Anthropic, or Microsoft** on skills.sh

## Example Pipeline

Creator Sabrina.dev: one prompt → Claude browses GitHub repos for real screenshots → pulls in headshot → adds background music → full promotional video. Entirely from the command line. No Premiere, no After Effects, no timeline editor.

## Scheduled Pipelines

When combined with cloud scheduling (e.g., Noah's Way Claude Code scheduler), Remotion enables autonomous video production:
- Weekly product-update video generated and rendered automatically
- Daily analytics dashboard video sent to team Slack
- Feature gallery rebuilt every time the changelog updates

## See Also

- [[Google Stitch]] — companion UI design tool
- [[Blender MCP]] — companion 3D tool
- [[skills.sh]] — where the Remotion skill lives
- [[Claude Code]] — the harness Remotion integrates with
- [[Nate B Jones]] — source analysis
- [[summary-nate-b-jones-google-stitch|Source: A Markdown File Just Replaced Your Design Meeting]]
