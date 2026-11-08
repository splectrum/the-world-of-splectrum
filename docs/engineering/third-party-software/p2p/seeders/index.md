---
layout: default
lastmod: 2026-11-08
title: "seeders"
description: "seeders is the authorised-seeder availability tier — a swarm joined only with seed nodes named in a signed, spoof-proof mutable DHT record."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > seeders

# seeders

seeders is the **authorised-seeder** availability tier: a swarm you join only with seed nodes named in a **signed, spoof-proof list**. The list is a **signed mutable DHT record keyed by the first seed's public key**, so it cannot be forged and only its owner can update it; seeders advertise the seeded core's metadata (`length`, `fork`). It keeps data available through a curated, signed seed list, where [blind-peering](/engineering/third-party-software/p2p/blind-peering/) uses blind-peer RPC.

**Absent from the current docs.** The availability picture upstream now documents is `pear seed` plus blind peering; seeders appears nowhere in docs.pears.com. It is not deprecated, and the repo is not archived.

---

## Core API

See the [README](https://github.com/holepunchto/hyperswarm-seeders) for exhaustive detail.

- `const swarm = new Seeders(firstSeedPublicKey, [options])` — the first seed's public key keys the record.
- `swarm.on('connection', (conn) => { ... })`.
- `await swarm.join([record])` — the **owner** passes the seed-list record; non-owners join without it (read-only).
- `swarm.owner` — are you the record owner (i.e. hold the first-seed key)?

---

## Gotchas

**Ownership is key-bound.** Only the holder of the first-seed key can mutate the seed list; everyone else is a read-only joiner.

**Name trap.** Repo `holepunchto/hyperswarm-seeders` (branch `master`), package `@hyperswarm/seeders` — they don't match.

---

## Version

`@hyperswarm/seeders@1` — `latest` is 1.1.6, last commit and publish 2024-02-07; stable and functional, but not actively iterated. Check the npm registry before pinning.

## See Also
- Repo: [github.com/holepunchto/hyperswarm-seeders](https://github.com/holepunchto/hyperswarm-seeders) (README = the authoritative reference; branch `master`)
- npm: `@hyperswarm/seeders`
