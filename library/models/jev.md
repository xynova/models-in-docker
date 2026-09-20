---
name: jev
title: Jev
summary: "TypeSafe System One API: state in, schema-bound probabilistic decisions out in 70–500 ms (not a chat model)."
category: models
does: llm
tags:
  - llm
  - closed
  - api
  - agentic
status: watch
run: api
license: closed
vram_hint: unknown
links:
  homepage: https://typesafe.ai/
  weights: https://jevapi.dev/
media:
  cover: models/jev/media/cover.jpg
  gallery:
    - models/jev/media/g01.jpg
    - models/jev/media/g02.jpg
source: "youtube:hygMRgnDD7w"
added: 2026-09-20
---

# Jev

## What it is

TypeSafe System One API: state in, schema-bound probabilistic decisions out in 70–500 ms (not a chat model).

| | |
|:---:|:---:|
| ![jev 1](jev/media/thumb-cover.jpg) | ![jev 2](jev/media/thumb-g01.jpg) |
| ![jev 3](jev/media/thumb-g02.jpg) | |

## Why keep

Wire as a middle layer for routing, triage, guardrails, and agent tool-choice when you need calibrated confidence and cannot tolerate off-schema outputs.

## When to reach for it

High-frequency structured decisions (`POST /v1/systemone`, Noul/Choice/Score) where chat LLMs are too slow or too loose, and empty/wrong-but-valid options are handled with thresholds.

## Caveats

Early-access waitlist (also via Vercel/Cloudflare gateways). About $0.042 / MTok input, output free; ~64k context for state + questions. “0% hallucination” is structural schema safety, not perfect accuracy. No free-form generation.

## Links

- Homepage: https://typesafe.ai/
- Intro post: https://typesafe.ai/blog/introducing-system-one-models-and-jev
- API reference: https://jevapi.dev/
