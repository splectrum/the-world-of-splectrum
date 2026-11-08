---
layout: default
lastmod: 2026-11-08
title: "avsc — Avro Type System"
description: "avsc is a complete pure JavaScript implementation of the Apache Avro specification, forked and adapted for the Bare runtime."
---

[Home](/) > [Engineering](/engineering/) > [Our Software](/engineering/our-software/) > [bare-for-pear](/engineering/our-software/bare-for-pear/) > avsc

# avsc — Avro Type System

Reference for avsc — a complete pure JavaScript
implementation of the Apache Avro specification,
forked and adapted for the [Bare](/engineering/third-party-software/bare/) runtime.

---

## What avsc Is

avsc is a complete implementation of the
[Apache Avro specification](https://avro.apache.org/docs/1.12.0/specification/)
in pure JavaScript. Types, serialization, schema
evolution, container files, IDL parsing — the full
specification surface in a single library.

Forked from [mtth/avsc](https://github.com/mtth/avsc)
and barified for the Bare runtime. The fork is taken
from upstream's `master`: the v6 line, which upstream
has not released (npm's latest is 5.7.9) and which has
not moved since April 2025. Where these pages say v6,
they mean that line.

Not used by the HAICC platform now: Avro is a direction
for SPLectrum's language layer.

**Source:** [github.com/bare-for-pear/avsc](https://github.com/bare-for-pear/avsc)
**Upstream:** [github.com/mtth/avsc](https://github.com/mtth/avsc)

## What the Fork Changes

The fork replaces Node.js built-in modules with Bare
equivalents. The Avro API is unchanged.

| Concern | Upstream | Fork |
|---------|----------|------|
| Crypto | `crypto` | `bare-crypto` |
| Filesystem | `fs` | `bare-fs` |
| Path | `path` | `bare-path` |
| Streams | `stream` | `bare-stream` |

Additional adaptations:

- **TextEncoder/TextDecoder polyfill** — Bare's
  text-decoder uses a streaming API. avsc expects the
  WHATWG standard `.decode()` and `.encodeInto()`.
  The polyfill bridges this.
- **Buffer/Uint8Array bridging** — conditional
  handling where Bare's buffer semantics differ from
  Node's global Buffer.
- **Bare-only targeting** — the upstream dual-runtime
  support (Node.js + browser) is removed. One runtime,
  no conditional resolution.

The public API surface is identical to upstream. All
[upstream documentation](https://github.com/mtth/avsc/wiki)
applies.

## Reference

- [Barification](/engineering/our-software/bare-for-pear/avsc/barification/): what was changed from upstream, platform dependencies, polyfills.
- The module's [README](https://github.com/bare-for-pear/avsc#readme) and the repository's [docs](https://github.com/bare-for-pear/avsc/tree/master/docs) folder: the type system, serialization, container files and schema parsing.
- The upstream [avsc wiki](https://github.com/mtth/avsc/wiki).
