---
name: whisper-cf
title: Whisper (Cloudflare)
summary: "OpenAI Whisper on Workers AI: batch ASR at about $0.000453 per audio minute, lowest list STT on the platform."
category: models
does: speech
tags:
  - audio
  - api
  - open
status: watch
run: api
license: open
vram_hint: unknown
links:
  homepage: https://developers.cloudflare.com/workers-ai/models/whisper/
  weights: https://huggingface.co/openai/whisper-large-v3
source: "user: STT/TTS/live speech stack comparison 2026-09-29"
added: 2026-09-29
---

# Whisper (Cloudflare)

## What it is

General-purpose batch speech recognition via `@cf/openai/whisper` on Cloudflare Workers AI. Multilingual ASR, speech-to-English translation, and language ID. List price is about **$0.000453 per audio minute** (~$0.027/hour), slightly below Whisper Large-v3-Turbo on the same platform.

## Why keep

Baseline for absolute minimum Workers AI batch transcription when you are optimizing cents per hour and can accept the non-Turbo Whisper cut.

## When to reach for it

Bulk archive or caption jobs where cost dominates and you do not need Turbo’s speed or the extra decode controls on the Turbo model page. Prefer **Whisper Large-v3-Turbo (CF)** as the default when quality and tuning matter slightly more for a small price step up.

## Caveats

Batch HTTP only. No speaker diarization. For meeting-grade metadata, use Gemini Transcribe or Deepgram Nova-3 instead.

## Links

- Homepage: https://developers.cloudflare.com/workers-ai/models/whisper/
- Pricing: https://developers.cloudflare.com/workers-ai/platform/pricing/
- Weights (family): https://huggingface.co/openai/whisper-large-v3
