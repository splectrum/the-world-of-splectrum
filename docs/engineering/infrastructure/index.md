---
layout: default
lastmod: 2026-05-29
title: "Infrastructure"
description: "Reference hub for the Bare + P2P + Pear stack — the third-party runtimes, modules, and platforms the SPLectrum Platform is built on."
---

[Home](/) > [Engineering](/engineering/) > Infrastructure

# Infrastructure

The Infrastructure layer is the software the SPLectrum Platform is built on. This section documents that stack as a reference: what each piece is, where it lives upstream, and how the parts fit together.

## Holepunch
- [Bare](/engineering/infrastructure/bare/) — the minimal JavaScript runtime the stack targets, its module ecosystem, and how you port code to it.
- [P2P building blocks](/engineering/infrastructure/p2p/) — the Hypercore family plus the networking, crypto, and availability layers. Usable directly, independent of Pear.
- [Pear](/engineering/infrastructure/pear/) — the peer-to-peer application runtime and deployment platform, now an embeddable library.

## In House

- [bare-for-pear](/engineering/infrastructure/bare-for-pear/) — modules we adapted to run on Bare, and what we learned doing it.

## Wider P2P & Pear Ecosystem

**Flagship:** [Keet](https://keet.io/) — Holepunch's P2P chat, the marquee app built on the stack.

- [Browse the ecosystem](/engineering/infrastructure/ecosystem/) — projects built on the stack, graded established / active / further.
