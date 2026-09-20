---
name: dream-rsi
title: Dream-RSI
summary: "Google/DeepMind orchestration that improves an agent's exploration policy by replaying discovery trees offline, without changing model weights."
category: training-research
does: research
tags:
  - agentic
  - closed
  - api
status: watch
run: api
license: closed
vram_hint: unknown
links:
  homepage: https://www.dream-rsi.com/
  github: https://github.com/zhengkid/Dream-RSI
source: "youtube:hygMRgnDD7w"
added: 2026-09-20
---

# Dream-RSI

## What it is

Google/DeepMind orchestration that improves an agent's exploration policy by replaying discovery trees offline, without changing model weights.

## Why keep

Compare when designing long-horizon discovery loops (kernels, math, algorithm search) where exploration branching and stopping dominate cost.

## When to reach for it

You already run coding agents on expensive search trees and want a meta-layer that scores alternate exploration policies against recorded history before paying for another online round.

## Caveats

Weights and evaluator stay fixed; only exploration-policy code evolves. Paper/site cite Gemini as the discovery agent. GitHub has no clear OSS license in the API listing; PDF carries Google copyright. Treat as closed until a license file appears.

## Links

- Homepage: https://www.dream-rsi.com/
- GitHub: https://github.com/zhengkid/Dream-RSI
- Paper: https://arxiv.org/abs/2609.14858
