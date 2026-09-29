---
name: deepgram-nova-3-cf-batch
title: Deepgram Nova-3 (Cloudflare, batch)
summary: "Deepgram Nova-3 on Workers AI via HTTP: meeting/call STT with diarization, redaction, and analytics knobs at $0.0052/audio min."
category: models
does: speech
tags:
  - audio
  - api
  - closed
status: reach-for
run: api
license: closed
vram_hint: unknown
links:
  homepage: https://developers.cloudflare.com/workers-ai/models/nova-3/
source: "user: STT/TTS/live speech stack comparison 2026-09-29"
added: 2026-09-29
---

# Deepgram Nova-3 (Cloudflare, batch)

## What it is

Deepgram Nova-3 speech-to-text on Cloudflare Workers AI as `@cf/deepgram/nova-3`. **Batch HTTP** transport is **$0.0052 per audio minute** (~$0.31/hour). Supports diarization, language detection, smart formatting, punctuation, profanity filter, redaction, sentiment/topics/intents, custom vocabulary, and multichannel audio.

## Why keep

Compare against **Gemini 3.5 Transcribe** when you want enterprise-style meeting and call transcripts on the same Workers AI account as Whisper and Flux.

## When to reach for it

Recorded calls, meetings, or compliance-sensitive audio where speaker attribution, redaction, or Deepgram-specific analytics matter. Use the **WebSocket** price tier on the same model page for live streaming STT; use **Whisper Large-v3-Turbo (CF)** when you only need cheap plain text.

## Caveats

Closed Deepgram model via Cloudflare (partner terms apply). WebSocket billing is higher ($0.0092/min). Not a conversational agent; pair with your own LLM and TTS for voice assistants.

## Links

- Model: https://developers.cloudflare.com/workers-ai/models/nova-3/
- Pricing: https://developers.cloudflare.com/workers-ai/platform/pricing/
