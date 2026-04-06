---
title: VoiceBox — Free Local TTS That Rivals ElevenLabs
summary: VoiceBox is a free open-source TTS app running locally with voice cloning, sound effects, and API access — positioned as the ElevenLabs alternative.
tags: [tool_voicebox, topic_tts, topic_audio, topic_local_ai, source_dave_swift_voicebox]
---

# VoiceBox — Free Local TTS That Rivals ElevenLabs

## Context

From [[summary-dave-swift-voicebox|Dave Swift's VoiceBox video]]. See also [[VoiceBox]].

## Content

VoiceBox is a free, open-source text-to-speech app that runs entirely on local hardware. No cloud, no subscriptions, no email signup. Mac, Windows, Linux.

**Best model**: Qwen-3 (0.7B) — higher audio quality. Chatterbox has lower quality but supports slash-command effects (laugh, cough, sigh, etc.).

**Voice cloning**: ~30 seconds of recorded audio + reference text = a voice profile. Quality depends on microphone quality and gain staging.

**API**: Local server with optional network access for automation pipelines.

**Compared to ElevenLabs**: Free and local vs paid and cloud. Not yet matching ElevenLabs' best quality, but for many use cases (content creation, automation, prototyping) it's sufficient — and costs nothing beyond hardware.

**Security concern**: Voice cloning quality is improving rapidly. Not yet good enough to fool family members, but give it a year. Dave Swift recommends verbal passwords with loved ones.
