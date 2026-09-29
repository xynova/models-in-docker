---
name: gemini-3.5-transcribe-live
title: Gemini 3.5 Transcribe Live
summary: "Gemini Live API streaming STT (gemini-3.5-transcribe-live): interim/final transcripts, Smart mode, ~$0.009/min blended."
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
  homepage: https://ai.google.dev/gemini-api/docs/models/gemini-3.5-transcribe
source: "user: STT/TTS/live speech stack comparison 2026-09-29"
added: 2026-09-29
---

# Gemini 3.5 Transcribe Live

## What it is

Real-time speech-to-text over WebSockets via `gemini-3.5-transcribe-live` on the Gemini Live API. Delivers interim and finalized transcription events, Smart transcription (formatting and filler handling), custom vocabulary biasing (up to 1,000 terms), and multiple VAD strategies. Paid tier effective blended rate is about **$0.009 per audio minute** (token-priced audio in plus text out).

## Why keep

Compare when you need live captions or streaming transcripts without paying for a full duplex voice agent (Gemini Live).

## When to reach for it

Live meetings, broadcasts, or apps that show rolling text. Pair with your own LLM and TTS if you want a modular voice stack. Use unary **Gemini 3.5 Transcribe** for file batch jobs with diarization and word timestamps; use Cloudflare Whisper Turbo for cheapest offline transcription.

## Caveats

Closed Gemini API. Live endpoint does not support speaker diarization or word-level timestamps (those are unary-only). About **10 minutes max per Live session**. Not the same product as **Gemini 3.8 Live** (integrated multimodal agent).

## Links

- Model (Live + unary): https://ai.google.dev/gemini-api/docs/models/gemini-3.5-transcribe
- Live transcription: https://ai.google.dev/gemini-api/docs/live-guide
- Pricing: https://ai.google.dev/gemini-api/docs/pricing
