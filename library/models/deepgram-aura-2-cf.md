---
name: deepgram-aura-2-cf
title: Deepgram Aura-2 (Cloudflare)
summary: "Deepgram Aura-2 TTS on Workers AI: context-aware conversational speech at $0.03 per 1k characters."
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
  homepage: https://developers.cloudflare.com/workers-ai/models/aura-2-en/
source: "user: STT/TTS/live speech stack comparison 2026-09-29"
added: 2026-09-29
---

# Deepgram Aura-2 (Cloudflare)

## What it is

Deepgram **Aura-2** text-to-speech on Cloudflare Workers AI. English (`@cf/deepgram/aura-2-en`) and Spanish (`@cf/deepgram/aura-2-es`) endpoints list at **$0.03 per 1,000 characters**. Context-aware pacing, expressiveness, and fillers based on input text; many named speakers and several output encodings (mp3, opus, wav, and others per model params).

## Why keep

Default Workers AI pick for **customer-facing** generated speech when MeloTTS quality is not enough and you want a simple per-character bill.

## When to reach for it

Voice apps, IVR-style flows, and agent replies after **Flux** or batch STT on the same platform. Pair with modular LLM orchestration. Consider **Gemini Flash/Pro TTS** when the response is already Gemini-native and token-priced audio is acceptable.

## Caveats

Closed Deepgram partner API on Cloudflare. Quality depends on how you write the input text (per Deepgram docs). Not the cheapest TTS on the platform.

## Links

- English model: https://developers.cloudflare.com/workers-ai/models/aura-2-en/
- Spanish model: https://developers.cloudflare.com/workers-ai/models/aura-2-es/
- Pricing: https://developers.cloudflare.com/workers-ai/platform/pricing/
