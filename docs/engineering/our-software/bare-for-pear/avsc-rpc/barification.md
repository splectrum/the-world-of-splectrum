---
layout: default
lastmod: 2026-11-08
title: "avsc-rpc Barification"
description: "Extracting the avsc v5 RPC layer into a standalone module and replacing Node.js dependencies with Bare equivalents, including the v5/v6 bridge."
---

[Home](/) > [Engineering](/engineering/) > [Our Software](/engineering/our-software/) > [bare-for-pear](/engineering/our-software/bare-for-pear/) > [avsc-rpc](/engineering/our-software/bare-for-pear/avsc-rpc/) > Barification

# avsc-rpc Barification

What was changed from the upstream avsc v5 services
code to run as a standalone module on Bare.

---

## Two Operations

avsc-rpc required two distinct adaptations:

1. **Extraction** — separating the RPC layer from
   the avsc monolith into a standalone module
2. **Barification** — replacing Node.js dependencies
   with Bare equivalents

Both happened together. The result is a standalone
module that depends on avsc as a peer for types and
utils, and on Bare platform modules for runtime
primitives.

## Extraction from avsc

The upstream `services.js` lived inside avsc and
imported its siblings with relative paths:

```javascript
// upstream (inside avsc)
let types = require('./types')
let utils = require('./utils')
let platform = require('./platform')
```

The fork imports from the avsc sibling:

```javascript
// fork (standalone)
let types = require('../avsc/lib/types')
let utils = require('../avsc/lib/utils')
let avscPlatform = require('../avsc/lib/platform')
```

The relative path was written for the earlier
codebase, where both libraries sat side by side under
`lib/`. avsc is now declared as a dependency, from
bare-for-pear/avsc.

## Stream Adaptation

The most significant change. Upstream used Node.js
`stream.Transform`. The fork uses streamx.Transform.

### API Differences

| Concern | Node stream.Transform | streamx.Transform |
|---------|----------------------|-------------------|
| Constructor | `{ readableObjectMode: true }` | `{ ... }` |
| Transform | `_transform(buf, encoding, cb)` | `_transform(buf, cb)` |
| Unpipe | `.unpipe()` available | Not available |
| Error on close | Emits error | Suppressed |

### Affected Classes

Four internal stream classes were changed:

- `FrameDecoder` — standard Avro frame decoder
- `FrameEncoder` — standard Avro frame encoder
- `NettyDecoder` — Netty-compatible frame decoder
- `NettyEncoder` — Netty-compatible frame encoder

All extend `streamx.Transform` instead of
`stream.Transform`.

### Error Handling

Node streams emit errors on unexpected close. streamx
does not. The fork adds `decoder.on('error', () => {})`
to suppress expected errors when connections close
during frame decoding. This is not error swallowing —
channel-level error handling still operates.

## The v5/v6 Bridge

avsc-rpc was written against avsc v5. The fork pairs
it with the v6 line of avsc (the barified fork, from
upstream's unreleased master). The compatibility
module (`compat.js`) bridges the differences.

### Hash Results

avsc v6's `platform.getHash()` returns Uint8Array.
The services code calls `.toString('binary')` and
`.readInt16BE()` on hash results — methods that exist
on Buffer but not Uint8Array.

```javascript
function wrapGetHash (originalGetHash) {
  return function getHash (str, algorithm) {
    let arr = originalGetHash(str, algorithm)
    return Buffer.from(arr.buffer, arr.byteOffset, arr.length)
  }
}
```

### Removed Utilities

avsc v6 removed several utility functions that
services code still references:

| Function | Purpose | Shim |
|----------|---------|------|
| `newBuffer(size)` | Allocate buffer | `Buffer.alloc(size)` |
| `bufferFrom(data, enc)` | Create buffer from data | `Buffer.from(data, enc)` |
| `addDeprecatedGetters` | Attach deprecated properties | No-op |
| `debuglog` | Debug logger factory | Returns no-op |
| `deprecate` | Mark function deprecated | Identity (returns fn) |

### process.nextTick

Bare does not provide a global `process`. The services
code uses `process.nextTick` for deferred execution.

```javascript
function ensureProcess () {
  if (typeof process === 'undefined') {
    globalThis.process = { nextTick: queueMicrotask }
  } else if (!process.nextTick) {
    process.nextTick = queueMicrotask
  }
}
```

Called once at module load.

## Module Dependencies

### From avsc (constitutive)

- `types` — Avro type system, schema resolution
- `utils` — buffer operations, Tap, helpers
- `platform` — hash computation

### From Bare (platform)

| Module | Purpose |
|--------|---------|
| bare-buffer | Buffer API for hash wrapping, message framing |
| bare-events | EventEmitter for Service, Client, Server |
| bare-stream | Stream base classes |
| streamx | Transform streams for frame encoding/decoding |

## Module Structure

```
services.js   — about 2,470 lines. Service, Client, Server,
                channels (stateful/stateless, client/server),
                message framing, handshake, multiplexing,
                middleware chain, protocol negotiation.

compat.js     — 55 lines. v5/v6 bridge: hash wrapping,
                removed utils, process.nextTick polyfill,
                debug/deprecation no-ops.
```

One large module — same structure as upstream. The
extraction preserved the original file organisation.
Internal classes (channels, adapters, registries) are
not factored out because the upstream kept them
together and the coupling is deliberate — channels
depend intimately on the handshake and framing logic.

See the
[API Reference](https://github.com/bare-for-pear/avsc-rpc/blob/main/docs/api.md)
for the complete method and option documentation.

