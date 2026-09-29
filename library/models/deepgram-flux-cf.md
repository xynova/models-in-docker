---
name: deepgram-flux-cf
title: Deepgram Flux (Cloudflare)
summary: "Deepgram Flux on Workers AI: WebSocket STT with turn events for voice agents at $0.0077/audio min."
category: models
does: speech
tags:
  - audio
  - api
  - closed
  - agentic
status: reach-for
run: api
license: closed
vram_hint: unknown
links:
  homepage: https://developers.cloudflare.com/workers-ai/models/flux/
source: "user: STT/TTS/live speech stack comparison 2026-09-29"
added: 2026-09-29
---

# Deepgram Flux (Cloudflare)

## What it is

Deepgram **Flux** on Cloudflare Workers AI (`@cf/deepgram/flux`): conversational speech recognition over **WebSocket** at **$0.0077 per audio minute** (~$0.46/hour). Emits turn-oriented events (for example StartOfTurn, EndOfTurn, EagerEndOfTurn, TurnResumed) plus per-turn transcripts, with tunable end-of-turn thresholds and timeouts.

## Why keep

Anchor for a **cost-controlled, vendor-modular** live voice agent on Workers AI: Flux handles streaming audio and when the user finished speaking; you choose the LLM and TTS.

## When to reach for it

Building voice agents that need reliable turn boundaries without buying an integrated multimodal Live model. Stack with your LLM plus **Aura-2** or **MeloTTS** on CF. Prefer **Gemini 3.8 Live** when one Google stack should own audio in, reasoning, tools, and speech out.

## Caveats

WebSocket-only; not batch file transcription. Closed Deepgram partner model on Cloudflare. Flux is not the reasoning layer.

## Links

- Model: https://developers.cloudflare.com/workers-ai/models/flux/
- Pricing: https://developers.cloudflare.com/workers-ai/platform/pricing/
