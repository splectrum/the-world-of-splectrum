---
layout: default
lastmod: 2026-11-08
title: "UDX"
description: "UDX is the bottom transport layer — reliable, multiplexed, congestion-controlled streams over raw UDP, with no handshake and no encryption by design."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > UDX

# UDX

UDX is the **bottom transport layer**: reliable, multiplexed, congestion-controlled streams over raw UDP — with **no handshake and no encryption**, by design. It is pure transport for peer-to-peer use; everything above rides on it. Encryption is added by [secret-stream](/engineering/third-party-software/p2p/secret-stream/) / [HyperDHT](/engineering/third-party-software/p2p/hyperdht/), not here. Packaged as a native addon (`libudx`) with a JS API.

---

## Core API

See the [README](https://github.com/holepunchto/udx-native) for exhaustive detail.

### Create

- `const udx = new UDX()`.

### Sockets

- `const socket = udx.createSocket([opts])`.
- `socket.bind([port], [host])`.
- `await socket.send(buffer, port, [host])`.
- `socket.on('message', (msg, from) => { ... })`.

### Streams

- `const stream = udx.createStream(id, [opts])` — `opts` include `firewall`, **`framed`**, `seq`.
- `stream.connect(socket, remoteId, port, [host])`.
- `await stream.changeRemote(remoteId, port, [host])` — migrate the path (mobility / NAT rebinding).
- `stream.relayTo(destination)` — relay path (the relay-fallback case).
- Events: `connect`, `data`, `end`, `close`, `remote-changed`, `mtu-exceeded`.
- Telemetry: `stream.mtu`, `stream.rtt`, `stream.cwnd`, `stream.inflight`.

### Utilities

- `udx.networkInterfaces()` / `udx.watchNetworkInterfaces(cb)` / `await udx.lookup(host)`.

---

## Gotchas

**No encryption at this layer.** Confidentiality is entirely the job of the layers above (secret-stream / HyperDHT). Don't send anything sensitive over a raw UDX stream.

**`framed: true` makes a stream message-boundary-preserving** — that is what lets [protomux](/engineering/third-party-software/p2p/protomux/) run over UDX without an extra length-prefix layer.

**Native build.** It is a native addon, so it needs the platform prebuild — relevant when targeting Bare/Pear. (Bare's own `bare-dgram` no longer uses UDX: since 1.1.0 it runs on libuv UDP directly.)

---

## Version

`udx-native` — `latest` is **1.22.1** (November 2026), the install target. The `next` dist-tag is a stale 1.20.6: installing `@next` now gets an *older* version. Check the npm registry before pinning. UDX has no reference page in the docs, which name `libudx` as one of the stack's native foundations ([How the stack fits together](https://docs.pears.com/p2p/explanation/how-the-stack-fits-together)).

## See Also
- Repo: [github.com/holepunchto/udx-native](https://github.com/holepunchto/udx-native) (README on `main` = the authoritative reference)
- npm: `udx-native`
