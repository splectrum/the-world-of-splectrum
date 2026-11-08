---
layout: default
lastmod: 2026-11-08
title: "Corestore"
description: "Corestore is a factory and manager for many Hypercores — deterministic derivation, namespacing, pooled sessions, and single-stream replication."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > Corestore

# Corestore

Corestore is a **factory and manager for many Hypercores**. It derives cores deterministically from a **primary key + a name**, namespaces them, pools sessions, and replicates all of them over a **single replication stream**. It is the storage and identity root the higher structures sit on — both Hyperdrive and Autobase take a Corestore.

---

## Core API

See the [README](https://github.com/holepunchto/corestore) for exhaustive detail.

### Create

```js
const store = new Corestore(storage, [options])
```

`storage` is a directory path or a `hypercore-storage` instance. `options` includes `primaryKey` — but passing it to a root store throws unless `unsafe: true` is also set ("Passing the primary key is unsafe unless you know what you are doing").

```js
const store = new Corestore('./storage')
const main = store.namespace('app-a').get({ name: 'main' })
await main.ready()
```

### Get cores

- `store.get({ name, ...opts })` — a core **derived from the primary key + name**; writable.
- `store.get(key)` — an external core by its public **key**; read-only replica.

### Namespacing

- `store.namespace(name)` — a namespaced session; the **same `name` under different namespaces yields different cores**; chainable.

### Replication, sessions, lifecycle

- `store.replicate(optsOrStream)` — one stream replicates every core **currently loaded and in memory**.
- `store.session([opts])` — a new session sharing the storage and cache.
- `store.list([namespace])` — a stream of the cores' discovery keys.
- `await store.ready()` / `await store.close()`.

---

## Gotchas

**One Corestore per app; namespace within it.** `namespace('app-a').get({name:'main'})` and `namespace('app-b').get({name:'main'})` are *different* cores. This is the intended multi-tenant pattern — don't spin up multiple Corestores per app.

**Name vs key are different access modes.** `{name}` derives a **writable** core from the primary key; a raw `key` gives a **read-only** replica. Lose the primary key and you cannot reproduce the name-derived writable cores — treat it as the thing to back up.

**One replication stream for the loaded cores.** `store.replicate()` carries every core currently loaded, at once. It does not exchange keys: a core whose capability the remote lacks is not replicated ("Corestore replication does not exchange Hypercore keys").

**Added since May 2026.** `alwaysLatestBlock` (7.13.0), `treeCache` (7.11.1), a per-get `manifestVersion` (7.12.6), experimental `notifyGroup(topic)` and the `group-active` event; `suspend()` no longer flushes (7.12.0).

---

## Version

Corestore 7 is the newest major and the RocksDB line, matching Hypercore's `hypercore-storage` line: `latest` is 7.16.1 (November 2026) and is the only dist-tag. The README still carries a note about renumbering the major to 11 "in a few weeks"; no 8 or 11 has been published.

## See Also
- Docs: [docs.pears.com/p2p/reference/helpers/corestore](https://docs.pears.com/p2p/reference/helpers/corestore); how-to: [work with many Hypercores using Corestore](https://docs.pears.com/p2p/how-to/store-and-replicate/work-with-many-hypercores-using-corestore)
- Repo: [github.com/holepunchto/corestore](https://github.com/holepunchto/corestore) (README is authoritative)
- npm: `corestore`
