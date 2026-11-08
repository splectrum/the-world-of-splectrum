---
layout: default
lastmod: 2026-11-08
title: "Autobee"
description: "Autobee is a multiwriter Hyperbee — several writers' logs merged by a deterministic apply into one shared Hyperbee view. Experimental; sits alongside Autobase."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > Autobee

# Autobee

Autobee is an "unstoppable, scalable **multiwriter Hyperbee**". Several peers each write to their own local Hypercore; an `apply` function you provide merges those writes into a **shared Hyperbee view**, deterministically, and the view is consistent across all peers once they replicate. Built over a [Corestore](/engineering/third-party-software/p2p/corestore/), on [hyperbee2](/engineering/third-party-software/p2p/hyperbee/), the next major of Hyperbee.

The docs list it as a core module, and say it "sits alongside Autobase rather than replacing it": [Autobase](/engineering/third-party-software/p2p/autobase/) opens a view of any shape, Autobee always a Hyperbee.

> **Experimental.** The README: "Still experimental and under heavy development. Expect breaking changes." 2.13.0 had a breaking remap.

---

## Core API

See the [README](https://github.com/holepunchto/autobee) and the [docs reference](https://docs.pears.com/p2p/reference/building-blocks/autobee) for exhaustive detail.

### Create

```js
const db = new Autobee(store, [key], [options])
```

`store` is a Corestore; `key` is the key of an existing Autobee to join (omit or `null` to create one). Options include `apply`, `open`, `close`, `update`, `encryptionKey` / `encrypted`, `keyPair`.

### The apply pattern

As with Autobase, writer management happens inside `apply`. Writes to the view go through hyperbee2's write batch:

```js
async function apply (nodes, view, host) {
  for (const node of nodes) {
    const op = JSON.parse(node.value)
    if (op.addWriter) host.addWriter(op.addWriter)
    const w = view.write()
    w.tryPut(Buffer.from('latest'), node.value)
    await w.flush()
  }
}
```

### Read, write, replicate

- `await db.append(value)` — append to this writer.
- `await db.view.get(key)` — read from the shared view.
- `db.replicate(isInitiator)` — replicate over any stream.
- `db.local.id` — this writer's id, passed to `addWriter` by an existing writer.

---

## Gotchas

**The view API is hyperbee2's, not Hyperbee's.** `view.write()` and `tryPut` / `tryDelete`, not `put` / `batch`. The docs link to the classic Hyperbee page while showing the hyperbee2 API.

**`apply` must be deterministic**, as with Autobase: the view is rebuilt as writes from other peers arrive.

**Availability.** [blind-peering](/engineering/third-party-software/p2p/blind-peering/)'s `addAutobase()` accepts an Autobee (2.9.0).

---

## Version

`autobee@2` — 2.0.0 release candidates from August 2026, 2.13.3 in November 2026, with frequent releases. Pin exactly and check the release overview before upgrading.

## See Also
- Docs: [docs.pears.com/p2p/reference/building-blocks/autobee](https://docs.pears.com/p2p/reference/building-blocks/autobee); breaking changes: [release overview](https://docs.pears.com/p2p/release-overview)
- Repo: [github.com/holepunchto/autobee](https://github.com/holepunchto/autobee) (README = the authoritative reference)
- npm: `autobee`
