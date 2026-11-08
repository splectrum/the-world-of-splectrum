---
layout: default
lastmod: 2026-11-08
title: "Autobase"
description: "Autobase is the Hypercore family's multi-writer primitive — linearises independent input logs into one deterministic, eventually-consistent view."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > Autobase

# Autobase

Autobase is the family's **multi-writer** primitive. Several writers each append to their own Hypercore; Autobase **linearises** those independent input logs into one deterministic, eventually-consistent **view** — an event-sourcing model. You define how the view is built and updated (the `open` and `apply` functions); the view itself is materialised as Hypercore-backed structures (commonly a [Hyperbee](/engineering/third-party-software/p2p/hyperbee/)). Built over a [Corestore](/engineering/third-party-software/p2p/corestore/).

---

## Core API

See the [README](https://github.com/holepunchto/autobase) for exhaustive detail.

### Create

```js
const base = new Autobase(store, bootstrap, options)
```

`store` is a Corestore; `bootstrap` is the key of the bootstrap writer (or `null` to create one). Key options: `open`, `apply`, `valueEncoding`, `ackInterval`, `optimistic`, `fastForward`; also `encryptionKey` / `encrypt` / `encrypted` and `wakeup` (protomux-wakeup).

### The open / apply pattern

This is the mental model.

- `open(store)` — build and return the view object(s).
- `async apply(nodes, view, host)` — apply the linearised `nodes` to the `view`. **Writer management lives here:** call `host.addWriter(key)` / `host.removeWriter(key)` inside `apply`, not as standalone calls.

### Read & write

- `await base.append(value, [opts])` — append to this writer.
- `await base.update()` — fetch and re-linearise.
- `base.view` — the current deterministic view.
- `base.replicate(isInitiator, [opts])`.
- `base.pause()` / `base.resume()`; `host.interrupt(reason)` inside `apply`.

### Ordering state

- `base.signedLength` — the prefix whose ordering is **permanently fixed** (a quorum of indexers has signed it).
- `base.length` — the system core length (whole-autobase progress).

---

## Gotchas

**`apply`/`open` must be deterministic and side-effect-free.** Autobase *reorders* messages as new data arrives — it undoes and reapplies entries internally to converge. Any nondeterminism or external side effect inside `apply` corrupts the view, and corrupts it *differently on each peer*.

**`signedLength` vs `length`.** Only at or below `signedLength` is ordering immutable; above it, entries can still be reordered. Anything you surface as "final" or act on irreversibly must be at or below `signedLength` — optimistic reads above it can flip.

**Fast-forward resets the view.** With `fastForward`, a peer can jump straight to a quorum-signed state instead of replaying — fast catch-up, but local view state may be discarded and rebuilt. Design consumers to tolerate the view resetting under them.

**Optimistic mode** requires you to self-verify writes inside `apply` (reject unauthorised entries yourself), and for an optimistic block to be applied, its writer must also be acknowledged with `host.ackWriter(key)`.

---

## Version & maturity

`autobase@7` (7.28.2, September 2026). The docs now mark it "Status: stable", with a full reference, a how-to and an explanation page; three releases have come since May. The fast-moving multiwriter work has moved to [Autobee](/engineering/third-party-software/p2p/autobee/), which sits alongside Autobase: Autobase opens a view of any shape, Autobee always a Hyperbee. Pin the version and check the registry before depending.

## See Also
- Docs: [docs.pears.com/p2p/reference/building-blocks/autobase](https://docs.pears.com/p2p/reference/building-blocks/autobase/)
- Repo: [github.com/holepunchto/autobase](https://github.com/holepunchto/autobase) (README = the authoritative reference)
- npm: `autobase`
