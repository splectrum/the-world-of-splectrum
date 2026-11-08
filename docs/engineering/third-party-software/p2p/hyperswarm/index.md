---
layout: default
lastmod: 2026-11-08
title: "Hyperswarm"
description: "Hyperswarm is topic-based peer discovery plus connection lifecycle management on top of HyperDHT — the layer most apps actually import."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > Hyperswarm

# Hyperswarm

Hyperswarm is the layer most apps actually import: **topic-based discovery plus connection lifecycle management** on top of [HyperDHT](/engineering/third-party-software/p2p/hyperdht/). You `join` 32-byte topics; it finds peers, dedups and reconnects, lets you ban misbehavers, and hands you **Noise-encrypted** connections. HyperDHT is the engine underneath; Hyperswarm is the ergonomic wrapper.

---

## Core API

See the [README](https://github.com/holepunchto/hyperswarm) for exhaustive detail.

### Create

- `const swarm = new Hyperswarm([options])` — `options`: `keyPair`, `seed`, `maxPeers`, `maxClientConnections`, `maxServerConnections`, `maxParallel`, `firewall`, `dht`, `relayThrough`.
- `relayThrough` — a blind-relay key, or a function `(force, swarm) => key`; used when hole-punching fails with `HOLEPUNCH_ABORTED`, `HOLEPUNCH_DOUBLE_RANDOMIZED_NATS`, `REMOTE_NOT_HOLEPUNCHABLE` or (from 4.17.1) `CANNOT_HOLEPUNCH`.

### Join / leave

- `const discovery = swarm.join(topic, { server: true, client: true })` — join a 32-byte topic (defaults to both modes).
- `await swarm.leave(topic)`.
- `swarm.joinPeer(noisePublicKey)` / `swarm.leavePeer(noisePublicKey)` — target a specific peer.
- `await swarm.listen()` — start listening without joining a topic.

### Connections

- `swarm.on('connection', (socket, peerInfo) => { ... })` — `socket` is a Noise-encrypted Duplex; `peerInfo` is a PeerInfo.
- `swarm.connections` (Set) / `swarm.peers` (Map: hex key → PeerInfo).

### Lifecycle

- `await swarm.flush()` — wait for in-flight DHT ops + connection attempts to settle.
- `await swarm.suspend()` / `await swarm.resume()` — mobile lifecycle.
- `swarm.status(topic)`.

### PeerDiscovery (returned by `join`)

- `await discovery.flushed()` — resolves once the topic is **announced on the DHT** (server mode).
- `await discovery.refresh({ client, server })` / `await discovery.destroy()`.

### PeerInfo

- `peerInfo.publicKey`, `peerInfo.topics`, `peerInfo.prioritized`, `peerInfo.ban(true)`.

---

## Gotchas

**`topic` is a 32-byte Buffer** (typically `hash(name)`), not an arbitrary string — pass the wrong shape and discovery silently does nothing useful.

**`swarm.flush()` and `discovery.flushed()` are different things, and confusing them is the classic "no peers found" bug.** `swarm.flush()` waits for in-flight operations to settle; `discovery.flushed()` waits until you are actually *announced* on the DHT (server mode), which is what a remote peer needs before it can find you.

**`join` defaults to both client and server.** For a pure dialer, pass `{ client: true, server: false }`.

**`ban()` / `leavePeer()` stop reconnection but do not close existing connections.**

**`firewall` is a *synchronous* `remotePublicKey => boolean`, and returning `true` rejects the connection.** The `connection` socket is already encrypted — don't wrap it again.

---

## Version

`hyperswarm@4` (current `latest` 4.17.2, November 2026). A stray `tmp` dist-tag exists upstream — ignore it; `latest` is the install target. Check the npm registry before pinning.

## See Also
- Docs: [docs.pears.com/p2p/reference/building-blocks/hyperswarm](https://docs.pears.com/p2p/reference/building-blocks/hyperswarm/)
- Repo: [github.com/holepunchto/hyperswarm](https://github.com/holepunchto/hyperswarm) (README = the authoritative API reference)
- npm: `hyperswarm`
