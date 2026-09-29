---
name: assemblyai-universal-3.5-pro-cf
title: AssemblyAI Universal-3.5 Pro (Cloudflare)
summary: "Batch STT on Workers AI: diarization, keyterms, redaction, and audio intelligence at $0.0035/min base."
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
  homepage: https://developers.cloudflare.com/ai/models/assemblyai/universal-3.5-pro/
source: "user: STT tier comparison and Universal-3.5 Pro brief 2026-09-29"
added: 2026-09-29
---

# AssemblyAI Universal-3.5 Pro (Cloudflare)

## What it is

AssemblyAI **Universal-3.5 Pro** on Cloudflare Workers AI (`assemblyai/universal-3.5-pro`): **asynchronous** transcription from an `audio_url` or data URI (files or URLs, not a live WebSocket agent). Base list price **$0.0035 per audio minute** (~$0.21/hour, ~$21 per 100 hours), with add-ons on the model page (for example speaker diarization, key terms, medical mode). Returns word-level timestamps and confidence, optional speaker-labelled utterances, multichannel mode, language detection, `keyterms_prompt` / custom spelling, punctuation and formatting, optional filler words, PII redaction (text and optional redacted audio), plus optional entities, sentiment, content safety, IAB topics, and highlights.

## Why keep

Middle tier in a practical **three-tier STT policy** on Workers AI: cheaper than **Gemini 3.5 Transcribe** and **Nova-3** batch for many meeting-grade jobs, far more capable than **Whisper Large-v3-Turbo** when the transcript is a deliverable (speakers, domain terms, privacy, metadata).

## When to reach for it

Consulting calls, interviews, multi-speaker meetings, mixed-language recordings (AssemblyAI documents code-switching support), client audio with PII concerns, or corpora where you want speakers, confidence, and word timings for later analysis. Example keyterms for technical calls: Cloudflare, Kubernetes, product names, acronyms. **Not** for live captions; use **Gemini 3.5 Transcribe Live** or **Deepgram Flux** when text must stream while someone is speaking.

## Caveats

Third-party AssemblyAI model on Cloudflare (partner terms). Batch/async only. Add-on features increase per-minute cost beyond the base rate. Vendor WER benchmarks (for example AssemblyAI’s published ~7.84% global WER on their suite) are useful for shortlisting but **not** portable across your own audio; independent evaluations disagree. Validate on your recordings before committing.

## Links

- Model: https://developers.cloudflare.com/ai/models/assemblyai/universal-3.5-pro/
- AssemblyAI pricing: https://www.assemblyai.com/pricing
- AssemblyAI benchmarks: https://www.assemblyai.com/benchmarks
