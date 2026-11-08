---
layout: default
lastmod: 2026-11-08
title: "compact-encoding"
description: "compact-encoding is the binary encoding scheme the Holepunch stack writes its wire formats in — preencode, encode, decode over a shared state; with hypercore-crypto, the stack's crypto helpers."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > compact-encoding

# compact-encoding

compact-encoding is "a series of compact encoding schemes for building small and fast parsers and serializers". It is how the stack writes binary messages: [protomux](/engineering/third-party-software/p2p/protomux/) messages are encoded with it (`c.*`), and [Hypercore](/engineering/third-party-software/p2p/hypercore/)'s `valueEncoding` accepts a compact-encoding. The docs list it as a helper. The HAICC platform uses it directly, for its p2p channels.

---

## Core API

See the [README](https://github.com/holepunchto/compact-encoding) for exhaustive detail.

Every encoding has three functions over a shared **state** `{ start, end, buffer }`:

- `enc.preencode(state, val)` — a dry run that only advances `state.end`, to size the buffer;
- `enc.encode(state, val)` — writes `val` at `state.start` and advances it;
- `enc.decode(state)` — reads a value at `state.start` and advances it.

```js
const cenc = require('compact-encoding')
const buf = cenc.encode(cenc.bool, true)
const bool = cenc.decode(cenc.bool, buf)
```

`cenc.encode` / `cenc.decode` are the helpers for a single value; `cenc.state()` gives a blank state. Bundled encodings are primitives to build others on, among them `cenc.raw` and `cenc.uint` (a uint in the smallest fixed size, with a prefix saying which).

---

## Gotchas

**`preencode` does not validate.** "`preencode` is not guaranteed to reject an invalid `val`. `encode` is where a value is checked."

**v3 is recent.** 3.0.0 was released 2026-04-23. What the major changed is not set out in the docs' release overview, which starts later: check the repo before upgrading from 2.x material.

**Not JSON, not AVRO.** Any boundary with another encoding needs a mapping. Upstream's Hyperschema defines encodings on top of it.

---

## hypercore-crypto

The stack's crypto helpers live in a separate small module, [hypercore-crypto](https://github.com/holepunchto/hypercore-crypto): `keyPair`, `discoveryKey` (a keyed BLAKE2b hash of a core key), sign / verify, and namespacing. See the [key model](/engineering/third-party-software/p2p/key-model/) for what the keys are. 3.7.0 is current; the HAICC platform uses it in its node, manager and store modules.

---

## Version

`compact-encoding@3` (3.6.0 in November 2026). `hypercore-crypto@3` (3.7.0). Check the npm registry before pinning.

## See Also
- Docs: [docs.pears.com/p2p/reference](https://docs.pears.com/p2p/reference/) (Helpers)
- Repo: [github.com/holepunchto/compact-encoding](https://github.com/holepunchto/compact-encoding) (README = the authoritative reference)
- Repo: [github.com/holepunchto/hypercore-crypto](https://github.com/holepunchto/hypercore-crypto)
- npm: `compact-encoding`, `hypercore-crypto`
