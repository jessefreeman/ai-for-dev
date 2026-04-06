---
type: entity
sources: ["This Open-Source TTS App Sounds Scary Good (And It's Free).md"]
created: 2026-04-06
updated: 2026-04-06
tags: [open-source, tts, audio, voice, local-ai]
---

# VoiceBox

A free, open-source text-to-speech application running entirely on local hardware. No cloud, no subscriptions, no email signup. Available on Mac, Windows, and Linux. Positioned as the open-source alternative to ElevenLabs.

## Models

- **Qwen-3** (0.7B parameters): Higher audio quality, best overall model for voice generation
- **Chatterbox**: Lower audio quality but supports slash-command effects: `/laugh`, `/chuckle`, `/gasp`, `/cough`, `/sigh`, `/groan`, `/sniff`, `/shush`, `/clear_throat`

## Key Features

- **Voice cloning**: Record ~30 seconds of audio with reference text → creates a voice profile. Sensitive to audio quality — needs good mic and gain staging.
- **Sound effects**: Built-in presets (robotic, radio, echo chamber, deep voice). Effects are combinations of: low pass, high pass, chorus, reverb, delay, compressor, pitch shifter.
- **Stories**: Folder system for organizing and generating longer-form audio content.
- **API**: Local server with optional network access for automation integration.
- **Multi-language**: Depends on the TTS model selected (Chatterbox Turbo is English-only).

## Hardware

Runs on Apple Silicon (M4 Max demonstrated) and other capable machines. Speed depends on local hardware. Models in the 7B range run well.

## Rough Edges (as of March 2026)

- Custom effect presets can't be saved (bug)
- Voice cloning fails on clipped audio
- No input device selector (uses system default)
- Chatterbox audio quality noticeably lower than Qwen-3

## Security Note

Voice cloning quality is not yet good enough to fool family members, but improving rapidly. [[Dave Swift]] recommends setting up verbal passwords with loved ones as a precaution against voice spoofing attacks.

## See Also

- [[Dave Swift]] — source
- [[llama.cpp]] — inference engine likely powering the local models
- [[summary-dave-swift-voicebox|Source: VoiceBox TTS]]
