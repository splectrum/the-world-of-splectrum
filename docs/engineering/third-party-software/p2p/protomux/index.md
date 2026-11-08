---
layout: default
lastmod: 2026-11-08
title: "protomux"
description: "protomux multiplexes several message-oriented protocols over one stream — channels, messages, compact-encoding, cork/uncork batching."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > protomux

# protomux

protomux **multiplexes several message-oriented protocols over one stream** — it is how a single peer connection carries, say, Hypercore replication *and* an app protocol at once without separate sockets. It sits on top of an already-established (encrypted) connection and needs a **framed, message-preserving** stream underneath (a [UDX](/engineering/third-party-software/p2p/udx/) stream with `framed: true`, or a byte stream you have length-prefixed). Message encoding is done with [compact-encoding](/engineering/third-party-software/p2p/compact-encoding/), not JSON/AVRO.

---

## Core API

See the [README](https://github.com/holepunchto/protomux) for exhaustive detail.

- `const mux = new Protomux(stream, [opts])` — `stream` must be framed/message-preserving.
- `Protomux.from(stream | muxer)` — wrap a stream or reuse an existing muxer.
- `const channel = mux.createChannel({ protocol, id, handshake, unique, onopen, onclose, ondestroy })` — **returns `null`** if the channel should not open (duplicate, or remotely closed).
- `const message = channel.addMessage({ encoding, onmessage })`; `message.send(data)`.
- `channel.open([handshake])` / `channel.close()`.
- `mux.cork()` / `mux.uncork()` and `channel.cork()` / `channel.uncork()` — batch frames.
- `mux.watch()` / `mux.unwatch()` / `mux.unwatchAll()` (3.13.0).

---

## Gotchas

**Needs a framed / message-preserving stream.** Message boundaries must be intact — with UDX use `framed: true`; over a raw byte stream you must length-prefix first.

**`createChannel` can return `null`** (duplicate, or the remote already closed it) — always null-check before using the channel.

**Encodings are compact-encoding (`c.*`), not JSON or AVRO.** Any boundary with another encoding needs a mapping; for the HAICC platform, AVRO is a direction, not yet built.

**A rejected async handler after the channel closes** now emits `warning` instead of destroying the stream (3.12.0).

**`cork` / `uncork` batch frames** at both the muxer and channel level — easy to forget, and it costs throughput if you don't use it for bursts.

---

## Version

`protomux@3` (3.13.0, November 2026) — a single `latest` dist-tag, but actively moving. Check the npm registry before pinning. Pairs with [compact-encoding](/engineering/third-party-software/p2p/compact-encoding/), now at v3.

## See Also
- Docs: [docs.pears.com/p2p/reference/helpers/protomux](https://docs.pears.com/p2p/reference/helpers/protomux/)
- Repo: [github.com/holepunchto/protomux](https://github.com/holepunchto/protomux) (README = the authoritative reference)
- npm: `protomux`
