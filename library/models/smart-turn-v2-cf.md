---
name: smart-turn-v2-cf
title: Pipecat Smart Turn v2 (Cloudflare)
summary: "Turn-end classifier on Workers AI (~$0.000338/audio min); pair with local VAD and VAD-gated streaming STT to avoid idle WebSocket cost."
category: models
does: speech
tags:
  - audio
  - api
  - open
  - agentic
  - local
status: reach-for
run: api
license: open
vram_hint: unknown
links:
  homepage: https://developers.cloudflare.com/workers-ai/models/smart-turn-v2/
  weights: https://huggingface.co/pipecat-ai/smart-turn-v2
source: "user: STT/TTS/live speech stack comparison 2026-09-29"
added: 2026-09-29
---

# Pipecat Smart Turn v2 (Cloudflare)

## What it is

**Pipecat Smart Turn v2** on Cloudflare Workers AI (`@cf/pipecat-ai/smart-turn-v2`): analyzes **recent raw audio** (not a transcript) and returns a **turn-completion probability**. Default threshold **0.5** means “user is done.” It targets conversational endpointing beyond simple VAD: genuine sentence ends vs thinking pauses, breaths, and resumed speech after the assistant starts preparing a reply.

**Not** speech-to-text and **not** TTS. Pair with a separate streaming STT (Flux, Nova-3 WebSocket, Gemini Transcribe Live, local ASR, etc.) plus optional VAD.

List price **$0.000338 per audio minute** (~**$0.02/hour**). Open weights; self-hostable (Pipecat cites ~12 ms on L40S to ~410 ms on 16-core CPU for an 8 s window, model-only).

## Why keep

Cheap, vendor-neutral **“has the user finished?”** layer for modular voice agents. Can replace the *turn-detection* role of integrated STT endpointing (for example Flux’s turn events) without locking timing logic to one STT vendor.

## When to reach for it

- **Modular stack:** streaming STT → VAD → Smart Turn v2 → LLM → TTS (Aura-2, Inworld, local).
- **Local/private agent:** local STT + local or hosted Smart Turn v2 for endpointing.
- **Gemini-centric transcript path:** Gemini 3.5 Transcribe Live for text, Smart Turn v2 if you want custom turn logic separate from Google’s Smart mode.

Prefer **Deepgram Flux** when you want one WebSocket service for live transcript **and** agent turn events (~$0.0077/min, ~23× Smart Turn list price) with fewer moving parts.

## VAD-gated STT (production)

To avoid paying for streaming STT during silence or while the agent speaks, keep only a **cheap local VAD** (default: **Silero VAD** / `@ricky0123/vad-web` in the browser; see `silero-vad`) while idle or during TTS. Open the paid cloud STT WebSocket only for active user turns; after Smart Turn confirms end-of-turn, finalise the transcript and **close or pause** the STT socket before LLM + TTS.

```text
Idle / agent speaking
  → local VAD listens for speech only
Speech starts → open cloud STT WebSocket
User finishes → Smart Turn confirms end of turn
  → finalise transcript → close/pause cloud STT
  → LLM + TTS respond
User interrupts (VAD) → stop TTS → reopen STT (+ short ring buffer)
```

Smart Turn does **not** detect initial speech (VAD does). It decides whether a pause is a **real endpoint** so you can stop forwarding mic audio to Flux, Gemini Transcribe Live, Nova-3 WebSocket, or similar without guessing.

| Mode | Active while idle | Cost | Best for |
|------|-------------------|------|----------|
| Persistent cloud STT | STT WebSocket on all audio | Highest (silence + agent speech) | Prototypes |
| **VAD-gated STT** | Local VAD only | **Lowest** paid STT minutes | Production voice agent |
| Wake-word + VAD | Local wake word + VAD | Lowest idle; stronger privacy | Always-on device |

**Barge-in:** while the assistant speaks, do not keep cloud STT open for interrupts. Use local VAD → stop TTS → open/resume STT → send a buffered first ~200–500 ms of mic audio so the first word is not lost → stream until Smart Turn completes the new turn.

| Job | Component |
|-----|-----------|
| Speech has begun | Local VAD |
| Silence ends the user's thought | **Smart Turn v2** |
| Words during user turn | Gated streaming STT |
| Answer | Your LLM |
| Spoken reply | Aura-2, Inworld TTS-2 Flash, etc. |
| User interrupts agent | Local VAD (not cloud STT) |
| Cancel playback / generation | App state machine |

Local VAD adds negligible marginal cost; it reduces streaming-STT minutes, egress, silence transcription, and TTS feedback into STT.

## Smart Turn vs Flux (skim)

| Dimension | Smart Turn v2 | Deepgram Flux |
|-----------|---------------|---------------|
| Role | Turn-completion classifier | Streaming STT for voice agents |
| Output | Completion probability | Partials/finals + turn events |
| Transcript | No | Yes |
| CF list cost | $0.000338/min | $0.0077/min |
| Open / self-host | Yes | No |

Do **not** treat Flux endpointing and Smart Turn as two equal controllers; pick one source of truth for “user finished,” use the other only for telemetry or A/B.

## Caveats

Published accuracy (~99% held-out English human data; ~87–97% across 14 synthetic languages) is **project-reported**, not a neutral bake-off vs Flux or Gemini. Real quality depends on mic, accent, compression, interruption policy, and threshold tuning. Multilingual evaluation coverage differs from Flux’s English-first agent story.

## Links

- Model: https://developers.cloudflare.com/workers-ai/models/smart-turn-v2/
- Pricing: https://developers.cloudflare.com/workers-ai/platform/pricing/
- Weights: https://huggingface.co/pipecat-ai/smart-turn-v2
- Pipecat overview: https://docs.pipecat.ai/api-reference/server/utilities/turn-detection/smart-turn-overview
