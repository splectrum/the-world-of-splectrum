---
layout: default
lastmod: 2026-11-08
title: "Hyperbee"
description: "Hyperbee is an append-only B-tree on a single Hypercore — sorted key-value storage with range queries, atomic batches, sub-databases, and diff streams."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > Hyperbee

# Hyperbee

Hyperbee is an **append-only B-tree** — a sorted key/value store running on a **single Hypercore**. It gives sorted iteration, range queries, atomic batches, and history/diff streams, plus cheap sub-namespaces. It is the index and metadata layer of the family: **Hyperdrive uses a Hyperbee** for its file metadata, and it is the common materialised-view type for **Autobase**.

---

## Core API

See the [README](https://github.com/holepunchto/hyperbee) for exhaustive detail.

### Create

```js
const db = new Hyperbee(core, [options])
```

`core` is a Hypercore. `options` includes `keyEncoding` and `valueEncoding` (`'binary'` | `'utf-8'` | `'ascii'` | `'json'` | an abstract-encoding; default binary).

```js
const db = new Hyperbee(core, { keyEncoding: 'utf-8', valueEncoding: 'json' })
await db.put('a', { hello: 'world' })
const { value } = await db.get('a')
```

### Read & write

- `await db.put(key, [value], [opts])` / `await db.del(key, [opts])`.
- `const node = await db.get(key)` — `{ seq, key, value }`, or `null`.
- `await db.peek([range], [opts])` — first entry in a range.

### Streams

- `db.createReadStream([range], [opts])` — `gt` / `gte` / `lt` / `lte`, `limit`, `reverse`.
- `db.createHistoryStream([opts])` — every put/del in insertion order.
- `db.createDiffStream(otherVersion, [opts])` — changes between two versions.

### Sub-databases, versions, batches

- `const sub = db.sub('prefix', [opts])` — a namespaced sub-database.
- `db.checkout(version)` / `db.snapshot()` — read-only view at a version / at the current `db.version`.
- `db.version` — a monotonically increasing modification counter.
- `const batch = db.batch()` … `await batch.flush()` — atomic multi-op.
- `await db.getAndWatch(key)` / `db.watch([range])` — reactive watchers.

---

## Gotchas

**`sub()` is byte-prefix namespacing, not isolation.** Sibling sub-DBs share the one underlying core and the one `version` counter, and a `createDiffStream` reflects changes across all of them. Good for organising keys; not an access-control boundary.

**`db.version` is Hyperbee's own counter**, and it is the point-in-time handle you pass to `checkout()` / `createDiffStream()`. Don't conflate it with the underlying core's `length`.

**Long-lived read streams hold a checkout implicitly**, which pins storage — close them when done.

---

## Version

`hyperbee@2` — a stable API; the docs mark it "Status: stable", documented against 2.27.3, which is still the current release (no release since January 2026). Check the npm registry before pinning.

## hyperbee2: the next major, in progress

A successor is in development as a separate package, **[hyperbee2](https://github.com/holepunchto/hyperbee2)**: "Next major version for hyperbee. Will be merged in there and released a new major when fully done." It is very active (2.21.4 in November 2026), and [Autobee](/engineering/third-party-software/p2p/autobee/) is built on it. Its API differs from Hyperbee's:

- the constructor takes a **Corestore**, not a core;
- writes go through `db.write()` and a batch's `tryPut` / `tryDelete`;
- a `compat` option writes "blocks compatible with Hyperbee 1".

The docs do not cover hyperbee2 yet. When and under what version the merge ships is not stated upstream.

## See Also
- Docs: [docs.pears.com/p2p/reference/building-blocks/hyperbee](https://docs.pears.com/p2p/reference/building-blocks/hyperbee/)
- Repo: [github.com/holepunchto/hyperbee](https://github.com/holepunchto/hyperbee) (README = the authoritative API reference)
- Repo: [github.com/holepunchto/hyperbee2](https://github.com/holepunchto/hyperbee2) (README)
- npm: `hyperbee`, `hyperbee2`
