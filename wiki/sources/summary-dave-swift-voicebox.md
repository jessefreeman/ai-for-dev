---
type: source-summary
sources: ["This Open-Source TTS App Sounds Scary Good (And It's Free).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [source, video, tts, audio, open-source, local-ai]
---

# This Open-Source TTS App Sounds Scary Good (And It's Free)

**Source**: YouTube — [[Dave Swift]], published 2026-03-20
**Link**: https://www.youtube.com/watch?v=kqxqjRsdD5E

## Summary

Dave Swift demos VoiceBox, a free and open-source text-to-speech application running entirely locally. No cloud, no subscriptions, no email signup. Runs on Mac, Windows, and Linux with an API for automation integration. Positioned as the open-source alternative to ElevenLabs.

## Key Features

- **Multiple TTS models**: Qwen-3 (higher audio quality, best overall) and Chatterbox (lower quality but supports slash-command effects: laugh, chuckle, gasp, cough, sigh, groan, sniff, shush, clear throat)
- **Voice cloning**: Record ~30 seconds of audio → VoiceBox creates a voice profile that generates speech in your voice. Requires reference text paired with recording.
- **Sound effects/presets**: Built-in presets (robotic, radio, echo chamber, deep voice). Effects are combinations of filters: chorus/flanger, EQ, compression, reverb, delay, pitch shifter. Custom preset saving is currently bugged.
- **Stories**: Organizational feature for longer-form content — folder-like system for grouping and managing generated audio.
- **API**: Local server with network access option. Enables automation integration.

## Hardware Considerations

Runs on Apple Silicon (M4 Max demonstrated), but speed depends on local hardware. Models in 7B range run well on capable machines.

## Security Note

Dave raises the voice cloning security concern: current quality isn't good enough to fool family members, but give it a year. Recommends setting up verbal passwords with loved ones as a precaution against voice spoofing.

## Rough Edges (as of March 2026)

- Chatterbox audio quality noticeably lower than Qwen-3
- Custom effect presets can't be saved (bug)
- Voice cloning is sensitive to audio clipping — needs good gain staging
- No input device selector (uses system default)

## Pages Created or Updated

- [[Dave Swift]] — new
- [[VoiceBox]] — new

## See Also

- [[llama.cpp]] — the inference engine likely powering local TTS models
- [[Open-Source Model Integration]] — broader context on local AI
