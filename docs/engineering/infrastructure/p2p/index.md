---
layout: default
lastmod: 2026-05-31
title: "P2P building blocks"
description: "The Hypercore storage family plus the networking, crypto, and availability primitives of the Holepunch peer-to-peer stack, usable on their own."
---

[Home](/) > [Engineering](/engineering/) > [Infrastructure](/engineering/infrastructure/) > P2P building blocks

# P2P building blocks

The distributed-data and networking primitives at the heart of the stack — the Hypercore family for storage, plus the networking, crypto, and availability layers built around it. These are usable directly, on their own: many projects depend on them without ever touching Pear.

## Storage
- [Hypercore](/engineering/infrastructure/p2p/hypercore/) — append-only, secure log; the core primitive.
- [Hyperbee](/engineering/infrastructure/p2p/hyperbee/) — B-tree key-value store on a Hypercore.
- [Hyperdrive](/engineering/infrastructure/p2p/hyperdrive/) — file system over Hypercores.
- [Corestore](/engineering/infrastructure/p2p/corestore/) — manages many Hypercores under one backend.
- [Autobase](/engineering/infrastructure/p2p/autobase/) — multi-writer log built from many Hypercores.
- [Hyperblobs](/engineering/infrastructure/p2p/hyperblobs/) — blob storage on a Hypercore.

## Networking & transport
- [HyperDHT](/engineering/infrastructure/p2p/hyperdht/) — the distributed hash table peers find each other through.
- [Hyperswarm](/engineering/infrastructure/p2p/hyperswarm/) — topic-based peer discovery and connection.
- [UDX](/engineering/infrastructure/p2p/udx/) — fast UDP-based transport.
- [secret-stream](/engineering/infrastructure/p2p/secret-stream/) — end-to-end encrypted Noise streams.
- [protomux](/engineering/infrastructure/p2p/protomux/) — multiplexed protocol channels over one stream.

## Crypto & security
- [The key model](/engineering/infrastructure/p2p/key-model/) — keypairs, discovery keys, and encryption keys.
- [The P2P security model](/engineering/infrastructure/p2p/security-model/) — how trust and encryption work across the stack.

## Availability & relays
- [blind-peering](/engineering/infrastructure/p2p/blind-peering/) — peers that replicate without reading content.
- [seeders](/engineering/infrastructure/p2p/seeders/) — always-on availability for cores.
- [blind-relay](/engineering/infrastructure/p2p/blind-relay/) — relays connections without seeing payloads.
- [dht-relay](/engineering/infrastructure/p2p/dht-relay/) — reach the DHT from environments that can't speak it directly.

## Sources
- Docs: [docs.pears.com/building-blocks](https://docs.pears.com/building-blocks/)
- Repo: [github.com/holepunchto](https://github.com/holepunchto/)
