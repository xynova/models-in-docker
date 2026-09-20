---
name: qwen-3.8-livetranslate
title: Qwen3.8-LiveTranslate
summary: "Alibaba real-time A/V interpreter: 60 input languages, 29 spoken outputs, optional voice clone over Model Studio WebSocket."
category: models
does: speech
tags:
  - audio
  - closed
  - api
status: watch
run: api
license: closed
vram_hint: unknown
links:
  homepage: https://www.alibabacloud.com/help/en/model-studio/qwen3-8-livetranslate-flash-realtime
source: "youtube:hygMRgnDD7w"
added: 2026-09-20
---

# Qwen3.8-LiveTranslate

## What it is

Alibaba real-time A/V interpreter: 60 input languages, 29 spoken outputs, optional voice clone over Model Studio WebSocket.

## Why keep

Compare when building live interpretation, meeting captioning, or dubbed streams that need same-voice translation plus optional visual context.

## When to reach for it

Need WebSocket streaming translate (`qwen3.8-livetranslate-flash-realtime`) with audio (and optional image) in and text/audio out, including once/always/pre-cloned voice modes.

## Caveats

Closed Model Studio API only. International list price is about $7.50 / $0.55 / $20 / $30 per million tokens for audio in / image in / text out / audio out (Beijing lower; promos vary). Low rate limits (about 10 RPM / 100k TPM on the docs page). No function calling.

## Links

- Homepage: https://www.alibabacloud.com/help/en/model-studio/qwen3-8-livetranslate-flash-realtime
- Realtime translation guide: https://docs.qwencloud.com/developer-guides/speech/realtime-translation
