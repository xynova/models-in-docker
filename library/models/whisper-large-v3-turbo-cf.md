---
name: whisper-large-v3-turbo-cf
title: Whisper Large-v3-Turbo (Cloudflare)
summary: "OpenAI Whisper Large-v3-Turbo on Workers AI: batch ASR and speech translation at about $0.00051 per audio minute."
category: models
does: speech
tags:
  - audio
  - api
  - open
status: reach-for
run: api
license: open
vram_hint: unknown
links:
  homepage: https://developers.cloudflare.com/workers-ai/models/whisper-large-v3-turbo/
  weights: https://huggingface.co/openai/whisper-large-v3-turbo
source: "user: STT/TTS/live speech stack comparison 2026-09-29"
added: 2026-09-29
---

# Whisper Large-v3-Turbo (Cloudflare)

## What it is

Batch automatic speech recognition and optional speech-to-English translation via `@cf/openai/whisper-large-v3-turbo` on Cloudflare Workers AI. List price is about **$0.00051 per audio minute** (~$0.031/hour). Supports VAD filtering, language hint, and Whisper decode knobs (beam size, hallucination thresholds).

## Why keep

Default cheap batch transcription for recordings, captions, podcasts, and personal archive ingestion when speaker labels and meeting polish are not required.

## When to reach for it

You want the lowest practical Workers AI STT bill and quality is enough for general technical speech. Upgrade to **AssemblyAI Universal-3.5 Pro (CF)** for serious meeting transcripts (often cheaper than Gemini/Nova batch), or to Gemini Transcribe / Nova-3 when you need their specific Google or Deepgram controls.

## Caveats

Batch HTTP only (not a live duplex agent). No native speaker diarization on this endpoint. Cloudflare API billing; open weights exist elsewhere if you later self-host.

## Links

- Homepage: https://developers.cloudflare.com/workers-ai/models/whisper-large-v3-turbo/
- Pricing: https://developers.cloudflare.com/workers-ai/platform/pricing/
- Weights: https://huggingface.co/openai/whisper-large-v3-turbo
