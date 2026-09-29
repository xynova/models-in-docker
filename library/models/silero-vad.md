---
name: silero-vad
title: Silero VAD
summary: "MIT ONNX voice-activity detector for local speech/no-speech gating before paid cloud STT."
category: models
does: speech
tags:
  - audio
  - open
  - local
  - quantized
status: reach-for
run: local
license: open
vram_hint: consumer
links:
  homepage: https://github.com/snakers4/silero-vad
  github: https://github.com/snakers4/silero-vad
  weights: https://github.com/snakers4/silero-vad/tree/master/files
source: "user: local VAD options for VAD-gated STT 2026-09-29"
added: 2026-09-29
---

# Silero VAD

## What it is

Small **neural** voice-activity detector (MIT). Runs on-device via PyTorch or **ONNX Runtime** (Python, Go, Rust, C++, browser WASM, mobile). Outputs speech probability on short frames; typical rates **8 kHz or 16 kHz**. No cloud API: mic audio stays local until you choose to open a paid STT WebSocket.

**Browser shortcut:** [`@ricky0123/vad-web`](https://github.com/ricky0123/vad) wraps Silero with ONNX Runtime Web (`MicVAD.new({ onSpeechStart, onSpeechEnd })`).

## Why keep

Default **local VAD** for VAD-gated voice agents: gate Flux, Gemini Transcribe Live, or Nova-3 WebSocket so you do not bill streaming STT through silence or agent TTS. Pair with **Smart Turn v2 (CF)** for turn completion (see `smart-turn-v2-cf`).

## When to reach for it

TypeScript/browser agents (`npm install @ricky0123/vad-web`), Python/Go/desktop services (Silero ONNX directly), or any stack that needs “speech started / stopped” before cloud STT. Prefer **WebRTC VAD** only when the smallest native dependency matters more than noise robustness. Prefer **RNNoise** in very noisy mics; **Picovoice Cobra** for polished commercial SDK integration.

## Role separation

```text
Silero VAD:     speech just started / stopped (local, ~free)
Smart Turn v2:  user has actually finished their thought
Streaming STT:  words during gated user turns only
```

Silero **silence duration** (~400–700 ms) closes an audio chunk, not the conversational turn; do not use it alone as endpointing.

## Starting tuning (browser / Silero)

| Setting | Start | Tune when |
|---------|------:|-----------|
| Speech threshold | 0.5 | Noisy room → raise; soft speakers → lower |
| Min speech duration | 50–150 ms | Clicks/keyboard false triggers → raise |
| Prefix padding | 200–300 ms | First syllable clipped |
| Frame size | 20–32 ms | Defaults unless profiling says otherwise |

## Caveats

Not STT. Cloud provider “endpointing” features do not replace local VAD if the goal is to **stop** sending audio to paid STT. Validate thresholds on real mics and rooms.

## Links

- GitHub: https://github.com/snakers4/silero-vad
- PyPI: https://pypi.org/project/silero-vad/
- Browser wrapper: https://github.com/ricky0123/vad
