---
name: gemini-3.5-transcribe
title: Gemini 3.5 Transcribe
summary: "Google batch speech-to-text (gemini-3.5-transcribe): diarization, word timestamps, custom vocabulary, ~$0.005/min blended."
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

# Gemini 3.5 Transcribe

## What it is

Dedicated Gemini API speech-to-text model (`gemini-3.5-transcribe`) for **non-streaming** audio files (up to about one hour per request). Utterance-based language detection across 85+ languages, speaker diarization, word-level timestamps, Smart transcription, and custom vocabulary biasing (up to 1,000 terms). Paid tier list pricing is token-based with an effective blended rate of about **$0.005 per audio minute** (audio in plus text out).

## Why keep

Compare when batch meeting or call transcripts need speaker labels, timestamps, and domain vocabulary without building a separate diarization pipeline.

## When to reach for it

High-value recordings where polished, structured transcripts justify roughly 10× the cost of Cloudflare Whisper Turbo. Compare **AssemblyAI Universal-3.5 Pro (CF)** when batch cost and rich meeting metadata matter and you do not need Gemini-only features. Use **Gemini 3.5 Transcribe Live** for WebSocket streaming captions; use cheap Whisper on CF for bulk archive-only jobs.

## Caveats

Closed Gemini API. Diarization or word timestamps cap unary requests at about 30 minutes. No function calling or caching on this model card. Prefer Interactions API for new Gemini work per Google’s 2026 guidance.

## Links

- Model: https://ai.google.dev/gemini-api/docs/models/gemini-3.5-transcribe
- Audio transcription guide: https://ai.google.dev/gemini-api/docs/audio
- Pricing: https://ai.google.dev/gemini-api/docs/pricing
