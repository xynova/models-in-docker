---
name: minimax-code-cli
title: MiniMax Code CLI
summary: "MIT-licensed MiniMax coding-agent harness (`mcode`): TUI, headless CI, and ACP; pair with MiniMax or BYOK models."
category: training-research
does: research
tags:
  - agentic
  - open
  - local
  - api
status: watch
run: local
license: open
vram_hint: unknown
links:
  homepage: https://agent.minimax.io/docs/cli/quick-start
  weights: https://www.npmjs.com/package/@minimax-ai/code
source: "youtube:hygMRgnDD7w"
added: 2026-09-20
---

# MiniMax Code CLI

## What it is

MIT-licensed MiniMax coding-agent harness (`mcode`): TUI, headless CI, and ACP; pair with MiniMax or BYOK models.

## Why keep

Compare coding harnesses when the model is held fixed (permissions, plan mode, subagents, session recovery) or run headless evals with `mcode exec`.

## When to reach for it

Terminal-first agent work: `npm i -g @minimax-ai/code` or the official installer, then MiniMax login or OpenAI/Anthropic-compatible providers.

## Caveats

npm `@minimax-ai/code@0.4.12` is MIT; the published package has no GitHub `repository` field, and `MiniMax-AI/minimax-code` is currently a desktop issue tracker. Desktop app source is not open. Vendor FrontierHarness-style claims are not on the frozen public v1.0 leaderboard. Alpine/musl installers unsupported.

## Links

- Homepage: https://agent.minimax.io/docs/cli/quick-start
- npm: https://www.npmjs.com/package/@minimax-ai/code
- Features: https://agent.minimax.io/docs/cli/features
