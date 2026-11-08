---
layout: default
lastmod: 2026-11-08
title: "HyperDHT"
description: "HyperDHT is the Kademlia DHT powering Holepunch networking — topic-based discovery, distributed UDP hole-punching, and Noise-encrypted connections by key."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > HyperDHT

# HyperDHT

HyperDHT is the **Kademlia DHT** that powers Holepunch networking: peer **discovery** by topic plus **distributed UDP hole-punching**, running its transport over [UDX](/engineering/third-party-software/p2p/udx/). The crucial idea: **you connect to an Ed25519 public key, not an IP address** — the DHT locates the peer and punches through. Connections it hands you are **already Noise-encrypted**. [Hyperswarm](/engineering/third-party-software/p2p/hyperswarm/) wraps HyperDHT with a friendlier topic/connection API; reach for HyperDHT directly when you want the lower-level control.

---

## Core API

See the [README](https://github.com/holepunchto/hyperdht) for exhaustive detail.

### Create + identity

- `const node = new DHT([options])` — `options`: `bootstrap`, `keyPair`, `seed`, `connectionKeepAlive`, `randomPunchInterval`.
- `const keyPair = DHT.keyPair([seed])` — `{ publicKey, secretKey }` (Ed25519).

### Server (accept connections)

- `const server = node.createServer([opts], [onconnection])`.
- `await server.listen(keyPair)` — the key pair **is** your connectable address.
- `server.on('connection', socket => { ... })` — `socket` is Noise-encrypted.
- `server.address()` → `{ host, port, publicKey }`.

### Client (dial)

- `const socket = node.connect(remotePublicKey, [opts])` — connect by key; the DHT does the locating + hole-punch. `opts.relayThrough` names a blind relay to fall back on (also on `createServer`).

### Discovery

- `node.lookup(topic)` — find announcers of a 32-byte topic (a stream).
- `node.announce(topic, keyPair, [relayAddresses], [opts])` / `node.unannounce(topic, keyPair)`; `announce` and `lookup` take `{ lookup: true|false }`. Announce relays are picked by lowest round-trip time (6.35.1).

### DHT records (BEP44-style)

- `await node.immutablePut(value)` → `{ hash }` / `await node.immutableGet(hash)`.
- `await node.mutablePut(keyPair, value)` / `await node.mutableGet(publicKey, [opts])`.

### Run your own bootstrap

- `DHT.bootstrapper(port, host, [opts])`.

---

## How it works

**Topic-based discovery.** A topic is a **32-byte buffer** (commonly a hash of an app name or a core's key). `announce` stores your connectable info under the topic in the DHT; `lookup` queries for announcers and you dial each. Many peers on one topic form a swarm.

**UDP hole-punching.** Peers rarely have public addresses, so a DHT node acts as a **rendezvous**: it observes each peer's external IP:port (its NAT mapping), then both peers fire UDP packets at each other simultaneously so each opens its own NAT mapping for the other's inbound packet. Works for cone NATs; a **randomizing NAT** (upstream's term; "symmetric NAT" elsewhere) defeats it, because the external port changes per connection. Relaying then happens **only if a relay is configured** — `relayThrough` on `connect` / `createServer` or on Hyperswarm, or Pear's `--relay` — through [blind-relay](/engineering/third-party-software/p2p/blind-relay/), which HyperDHT uses internally. The README does not specify the algorithm; the docs now have an explanation page, [Peer-to-peer demystified](https://docs.pears.com/p2p/explanation/peer-to-peer-demystified).

**Public vs private DHT.** By default a node joins the public network via Holepunch's bootstrap nodes (`node1/2/3.hyperdht.org:49737`; inside a Pear app, `Pear.config.dht.bootstrap`). Pass `bootstrap: [...]` to point at your own, and run one with `DHT.bootstrapper(...)`. A **private DHT** suits closed/enterprise deployments, deterministic test environments, or not depending on third-party infra.

**Noise encryption.** Every connection is Noise-encrypted by default, with an **IK** handshake (the caller already knows the server's public key); the result is handed to [secret-stream](/engineering/third-party-software/p2p/secret-stream/). Because the **Ed25519 key is both identity and address**, cryptographic identity and network address are the same object — you `connect(remotePublicKey)` and `listen(keyPair)`.

---

## Gotchas

**You connect to a key, not an address** — no IP/port in `connect()`; the DHT resolves and punches. Connections are Noise-encrypted by default — don't wrap them again.

**`remotePublicKey` isn't trustworthy until the connection opens.**

**Hole-punch is best-effort** — a randomizing NAT fails over to a relay only if one is configured; tune `randomPunchInterval` / `connectionKeepAlive` for mobile/aggressive NATs (defaults govern NAT-mapping survival).

---

## Version

`hyperdht@6` (6.36.0 in November 2026; single `latest` dist-tag). Since May: `server.close()` and `node.suspend()` no longer wait for a first announce (6.35.0); a `relayRecoveryWait` server option (6.34.1). Check the npm registry before pinning.

## See Also
- Docs: [docs.pears.com/p2p/reference/building-blocks/hyperdht](https://docs.pears.com/p2p/reference/building-blocks/hyperdht/); [relay connections through a blind relay](https://docs.pears.com/p2p/how-to/connect-to-peers/relay-connections-through-a-blind-relay)
- Repo: [github.com/holepunchto/hyperdht](https://github.com/holepunchto/hyperdht) (README on `main` = the authoritative API reference)
- npm: `hyperdht`
