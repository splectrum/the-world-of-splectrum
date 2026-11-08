---
layout: default
lastmod: 2026-11-08
title: "P2P building blocks"
description: "The Hypercore storage family plus the networking, crypto, and availability primitives of the Holepunch peer-to-peer stack, usable on their own."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > P2P building blocks

# P2P building blocks

The distributed-data and networking primitives at the heart of the stack — the Hypercore family for storage, plus the networking, crypto, and availability layers built around it. These are usable directly, on their own: many projects depend on them without ever touching Pear. The HAICC platform uses them this way, on Bare.

## Storage
- [Hypercore](/engineering/third-party-software/p2p/hypercore/) — append-only, secure log; the core primitive.
- [Hyperbee](/engineering/third-party-software/p2p/hyperbee/) — B-tree key-value store on a Hypercore.
- [Hyperdrive](/engineering/third-party-software/p2p/hyperdrive/) — file system over Hypercores.
- [Corestore](/engineering/third-party-software/p2p/corestore/) — manages many Hypercores under one backend.
- [Autobase](/engineering/third-party-software/p2p/autobase/) — multi-writer log built from many Hypercores.
- [Autobee](/engineering/third-party-software/p2p/autobee/) — multiwriter Hyperbee; experimental.
- [Hyperblobs](/engineering/third-party-software/p2p/hyperblobs/) — blob storage on a Hypercore.

## Networking & transport
- [HyperDHT](/engineering/third-party-software/p2p/hyperdht/) — the distributed hash table peers find each other through.
- [Hyperswarm](/engineering/third-party-software/p2p/hyperswarm/) — topic-based peer discovery and connection.
- [UDX](/engineering/third-party-software/p2p/udx/) — fast UDP-based transport.
- [secret-stream](/engineering/third-party-software/p2p/secret-stream/) — end-to-end encrypted Noise streams.
- [protomux](/engineering/third-party-software/p2p/protomux/) — multiplexed protocol channels over one stream.

## Encoding & schemas
- [compact-encoding](/engineering/third-party-software/p2p/compact-encoding/) — the binary encoding the stack's wire formats are written in.
- Hyperschema — an upstream helper for defining encodings; its wire format changed in 1.23.0 (bool arrays) and 1.25.0 (`framed`). Reference at [docs.pears.com](https://docs.pears.com/p2p/reference/).
- HRPC — an upstream RPC helper. Reference at [docs.pears.com](https://docs.pears.com/p2p/reference/).

## Crypto & security
- [The key model](/engineering/third-party-software/p2p/key-model/) — network identity keys, core keys, discovery keys, and encryption keys.
- [The P2P security model](/engineering/third-party-software/p2p/security-model/) — how trust and encryption work across the stack.

## Availability & relays

Upstream now documents availability as `pear seed` plus blind peering, and relaying as blind-relay, used when hole-punching fails.

- [blind-peering](/engineering/third-party-software/p2p/blind-peering/) — the client that asks blind peers to store and serve your cores.
- blind-peer — the server side of blind peering (the `blind-peer` library, `blind-peer-cli`, and `pear blind-peer start`); upstream reference at [docs.pears.com](https://docs.pears.com/p2p/reference/helpers/blind-peer).
- [blind-relay](/engineering/third-party-software/p2p/blind-relay/) — relays connections without reading payloads.
- [seeders](/engineering/third-party-software/p2p/seeders/) — an older availability helper, absent from the current docs.
- [dht-relay](/engineering/third-party-software/p2p/dht-relay/) — reach the DHT from environments that can't speak it directly; experimental, absent from the current docs.

## See Also
- Docs: [docs.pears.com/p2p/reference](https://docs.pears.com/p2p/reference/)
- Breaking changes: [docs.pears.com/p2p/release-overview](https://docs.pears.com/p2p/release-overview)
- Repo: [github.com/holepunchto](https://github.com/holepunchto/)
