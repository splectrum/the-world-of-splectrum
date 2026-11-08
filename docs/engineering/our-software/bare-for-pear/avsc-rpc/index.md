---
layout: default
lastmod: 2026-11-08
title: "avsc-rpc — Avro RPC Protocol"
description: "avsc-rpc is the Avro RPC/IPC layer extracted from avsc v5 and maintained as a standalone library for the Bare runtime."
---

[Home](/) > [Engineering](/engineering/) > [Our Software](/engineering/our-software/) > [bare-for-pear](/engineering/our-software/bare-for-pear/) > avsc-rpc

# avsc-rpc — Avro RPC Protocol

Reference for avsc-rpc — the Avro RPC/IPC protocol
layer, extracted from avsc v5 and maintained as a
standalone library for the [Bare](/engineering/third-party-software/bare/) runtime.

---

## What avsc-rpc Is

avsc-rpc is the Avro RPC/IPC implementation extracted
from avsc v5 and maintained as a standalone library for
the Bare runtime. Service definition, client/server
creation, transport channels, middleware, and protocol
negotiation.

The RPC layer was removed from avsc in v6
([PR #428](https://github.com/mtth/avsc/pull/428)).
This module preserves and maintains it independently.
v6 is not released, so the avsc on npm (5.7.9) is still
the v5 line.

Not used by the HAICC platform now.

**Source:** [github.com/bare-for-pear/avsc-rpc](https://github.com/bare-for-pear/avsc-rpc)
**Extracted from:** commit `dd82783` of mtth/avsc

## What avsc-rpc Does

The RPC layer enforces process boundaries through
schema contracts. Two processes communicating through
RPC can only see each other through the schema
contract. No shared objects, no classpath leakage, no
hidden state. Even in local in-memory execution, the
RPC boundary guarantees that only schema-conformant
messages pass.

Transport pluggability is a consequence, not the
motivation. The same schema contract holds whether the
transport is in-memory, TCP, or HTTP. The transport
adapts to context. The boundary is invariant.

Together with avsc, this provides the complete Avro
primitive: types and serialization from avsc, protocol
and boundary from avsc-rpc.

## What the Fork Changes

The extraction adapted the code for standalone use on
Bare:

| Concern | Upstream (avsc v5) | Fork |
|---------|--------------------|------|
| Streams | `stream.Transform` | `streamx.Transform` |
| Buffer | `buffer` | `bare-buffer` |
| Events | `events` | `bare-events` |
| Streams | `stream` | `bare-stream` |

Additional adaptations:

- **streamx transport** — all frame encoder/decoder
  classes use streamx.Transform. Two-parameter
  `_transform(buf, cb)` — no encoding argument.
- **v5/v6 compatibility bridge** (`compat.js`) —
  avsc-rpc was written against avsc v5. The fork pairs
  it with the v6 line of avsc. The bridge handles hash result
  types (Uint8Array to Buffer), restored utility
  functions, and `process.nextTick` polyfill via
  `queueMicrotask`.
- **avsc as a dependency** — types and utils are
  imported directly from the avsc sibling; avsc is
  declared as a dependency, from bare-for-pear/avsc.

## Reference

- [Barification](/engineering/our-software/bare-for-pear/avsc-rpc/barification/): the streamx adaptation, the v5/v6 bridge, platform dependencies.
- The module's [README](https://github.com/bare-for-pear/avsc-rpc#readme) and the repository's [docs](https://github.com/bare-for-pear/avsc-rpc/tree/main/docs) folder: services, clients and servers, transports, middleware and the wire protocol, with the complete [API reference](https://github.com/bare-for-pear/avsc-rpc/blob/main/docs/api.md).
