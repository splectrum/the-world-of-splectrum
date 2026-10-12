---
layout: default
lastmod: 2026-05-03
title: "avsc-rpc — Avro RPC Protocol"
description: "avsc-rpc is the Avro RPC/IPC layer extracted from avsc v5 and maintained as a standalone library for the Bare runtime."
---

[Home](/) > [Engineering](/engineering/) > [Infrastructure](/engineering/infrastructure/) > [bare-for-pear](/engineering/infrastructure/bare-for-pear/) > avsc-rpc

# avsc-rpc — Avro RPC Protocol

Reference for avsc-rpc — the Avro RPC/IPC protocol
layer, extracted from avsc v5 and maintained as a
standalone library for the [Bare](/engineering/infrastructure/bare/) runtime.

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
  it with avsc v6. The bridge handles hash result
  types (Uint8Array to Buffer), restored utility
  functions, and `process.nextTick` polyfill via
  `queueMicrotask`.
- **Peer dependency on avsc** — types and utils are
  imported directly from the avsc sibling. Both
  libraries live together under `lib/`.

## Reference Pages

- [Service Definition](/engineering/infrastructure/bare-for-pear/avsc-rpc/services/) — protocols,
  messages, Service.forProtocol, type resolution
- [Client and Server](/engineering/infrastructure/bare-for-pear/avsc-rpc/client-server/) — creating
  clients and servers, handler registration, options
- [Transports](/engineering/infrastructure/bare-for-pear/avsc-rpc/transports/) — in-memory, TCP,
  HTTP, channel lifecycle, stateful vs stateless
- [Middleware](/engineering/infrastructure/bare-for-pear/avsc-rpc/middleware/) — request/response
  chain, use patterns
- [Wire Protocol](/engineering/infrastructure/bare-for-pear/avsc-rpc/wire-protocol/) — handshake,
  framing, Netty compatibility, protocol negotiation
- [Barification](/engineering/infrastructure/bare-for-pear/avsc-rpc/barification/) — streamx
  adaptation, v5/v6 bridge, platform dependencies

## Library Reference

The library's own reference site:
[bare-for-pear.github.io/avsc-rpc](https://bare-for-pear.github.io/avsc-rpc/)
— complete API documentation including full method
signatures, all options, and wire format details.
