---
name: deepgram-nova-3-cf-websocket
title: Deepgram Nova-3 (Cloudflare, WebSocket)
summary: "Deepgram Nova-3 streaming STT on Workers AI: WebSocket at $0.0092/audio min with interim results and endpointing."
category: models
does: speech
tags:
  - audio
  - api
  - closed
status: watch
run: api
license: closed
vram_hint: unknown
links:
  homepage: https://developers.cloudflare.com/workers-ai/models/nova-3/
source: "user: STT/TTS/live speech stack comparison 2026-09-29"
added: 2026-09-29
---

# Deepgram Nova-3 (Cloudflare, WebSocket)

## What it is

Real-time Nova-3 transcription on Cloudflare Workers AI over **WebSocket** (`@cf/deepgram/nova-3`). List price **$0.0092 per audio minute** (~$0.55/hour), higher than the HTTP batch tier on the same model. Supports streaming-oriented options such as interim results, endpointing, speech-started events, and utterance-end signaling (see model parameters on the docs page).

## Why keep

Compare when building a **modular** live voice stack on Workers AI: stream transcripts and metadata, then run your own LLM and TTS.

## When to reach for it

Live voice apps that need Deepgram’s rich STT controls and meeting-style features on the stream. Prefer **Deepgram Flux (CF)** when turn-boundary detection is the main job; prefer **Gemini 3.5 Transcribe Live** for Google-native streaming captions without Deepgram’s control surface.

## Caveats

Closed Deepgram via Cloudflare partner terms. Transport price applies only to WebSocket usage. Still not a conversational agent.

## Links

- Model: https://developers.cloudflare.com/workers-ai/models/nova-3/
- Pricing: https://developers.cloudflare.com/workers-ai/platform/pricing/
