---
layout: default
lastmod: 2026-11-08
title: "Hypercore"
description: "Hypercore is a secure, distributed, append-only log — the foundational storage primitive of the Holepunch stack. Orientation, core API, and gotchas."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > Hypercore

# Hypercore

Hypercore is a secure, distributed, **append-only log** — the foundational primitive the whole Hypercore family is built on. Blocks are cryptographically verifiable (a Merkle tree over blake2b hashes), replication is **sparse** (peers fetch only the blocks they need) and realtime.

A core is identified by its **`key`**, which is "a hash of Hypercore's internal auth manifest" (the signers' public keys, quorum and hash). Only a core created with no manifest (compat mode, the default for a bare `new Hypercore()`) uses the signer's public key directly as its key; cores made through Corestore get a manifest. Peers find and announce each other on the **`discoveryKey`** (a hash of the key) — so you can locate a swarm without leaking the key itself.

Everything else in the family builds on Hypercore: Hyperbee and Hyperblobs each run on a single core; Corestore manages many; Hyperdrive and Autobase build on Corestore.

---

## Core API

The load-bearing surface. See the [README](https://github.com/holepunchto/hypercore) for exhaustive detail.

### Create

```js
const core = new Hypercore(storage, [key], [options])
```

`storage` is a directory path or a `hypercore-storage` instance.

```js
const core = new Hypercore('./storage')
await core.append(Buffer.from('hello'))
const block = await core.get(0)
```

### Read & write

- `await core.append(block)` — append block(s).
- `await core.get(index, [opts])` — read a block (waits for download if sparse).
- `await core.has(start, [end])` — is a block range present locally.
- `await core.count(start, end)` — count the blocks present locally in a range (v11.38.0).
- `await core.update([opts])` — wait for proof of a new length from peers.
- `await core.truncate(newLength, [opts])` — shrink / fork the log.

### Replication & sessions

- `const stream = core.replicate(isInitiatorOrStream, [opts])` — replication.
- `core.session([opts])` — shared session over the same core.
- `core.snapshot()` — read-only point-in-time view.

### Properties

`key`, `discoveryKey`, `length`, `byteLength`, `fork`, `writable`, `readable`, `signedLength`.

### Events

`append`, `truncate`, `peer-add`, `peer-remove`, `upload`, `download`.

### Options worth knowing

`valueEncoding` (`'binary'` | `'json'` | `'utf-8'` | compact-encoding), `encryption`, `keyPair`, `writable`, `createIfMissing`.

### Added since May 2026

- `allowLatestBlock` / `core.setAlwaysLatestBlock()` (v11.36.0).
- `core.getManifest()` / `Hypercore.parseManifest()` (v11.35.0); manifest `version` 3 accepted (v11.37.0).
- `core.setGroup(topic)`, experimental, for grouped structures (upstream's example: Autobee).

---

## Gotchas

**Storage is RocksDB-backed now.** As of v11, the old `random-access-storage` abstraction is no longer accepted — passing `random-access-memory` or `random-access-file` fails with `TypeError: db.columnFamily is not a function`. Storage is now `hypercore-storage`. Path-based storage auto-migrates to the new backend on open.

**All cores are sparse.** The `sparse` option was removed in v11; sparse is the only mode. "I have the length but not all the blocks" is a normal state.

**`signedLength`** (renamed from `indexedLength` in v11) is the length verified by the core's signer(s). Multi-signer **manifests** (signers, quorum, hash algo) are what make multi-writer trust and `signedLength` meaningful.

**Two encryption layers, distinct.** Replication is *always* Noise-encrypted on the wire; **block** encryption (at-rest, content-private) is separate and opt-in via the `encryption` option (`encryptionKey` is deprecated in v11).

**`discoveryKey` vs `key`.** Announce and look up on the `discoveryKey` (a hash); the capability `key` is not exposed to the DHT.

**`core.clear()` bugs.** Fixed in v11.37.2 and v11.39.6; upstream notes that "upgrading doesn't repair cores that are already affected".

---

## Version

Current release is `hypercore@11` (11.40.3 in November 2026; the RocksDB / `hypercore-storage` line). The README still calls Hypercore 10 the LTS release, which is stale wording upstream; the `next` dist-tag sits on an old 10.36.1. Across the Hypercore family the npm `dist-tags` are not a uniform "latest = newest major" — pin deliberately and check the registry before depending.

## See Also
- Docs: [docs.pears.com/p2p/reference/building-blocks/hypercore](https://docs.pears.com/p2p/reference/building-blocks/hypercore/)
- Breaking changes: [docs.pears.com/p2p/release-overview](https://docs.pears.com/p2p/release-overview)
- Repo: [github.com/holepunchto/hypercore](https://github.com/holepunchto/hypercore) (README + UPGRADE.md = the authoritative API reference)
- npm: `hypercore`
