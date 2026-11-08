---
layout: default
lastmod: 2026-11-08
title: "blind-peering"
description: "blind-peering is the client side of availability — registers your Hypercores and Autobases with always-on blind mirrors that replicate in your absence."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > blind-peering

# blind-peering

blind-peering is the **peer-side client** for keeping your data available when you are offline: it registers your Hypercores and Autobases (via RPC) with always-on **blind peers** that replicate and serve them in your absence. It is the *requester* side — you supply the blind peers' keys; it does not run a blind peer itself. Built with a [Corestore](/engineering/third-party-software/p2p/corestore/) + [HyperDHT](/engineering/third-party-software/p2p/hyperdht/).

Upstream now frames it as one of three: **blind-peer** (the server, a library), **blind-peering** (this client) and **blind-peer-cli**; since Pear 3.4.0, `pear blind-peer start` runs a blind peer too. The documented availability picture is `pear seed` plus blind peering. [seeders](/engineering/third-party-software/p2p/seeders/) is an older, separate helper that the current docs do not mention.

---

## Core API

See the [README](https://github.com/holepunchto/blind-peering) and the [docs reference](https://docs.pears.com/p2p/reference/helpers/blind-peering) for exhaustive detail.

- `const bp = new BlindPeering(dht, store, { blindPeers, suspended, wakeup, client, skipConnectionMetadata })` — since **2.6.0** the blind peers are given as `blindPeers: [{ key, group }]`; `group` spreads a core's mirrors across hosting groups. The older form, `keys`, is used only when `blindPeers` is empty.
- `bp.setBlindPeers(...)` — change the list.
- `await bp.addCore(core, [opts])` / `bp.addCoreBackground(core, [opts])` — register a core (the `Background` form is fire-and-forget). Per core, `pick` (default **2**) sets how many blind peers to use (formerly `mirrors`, default 1), and `blindPeers` can override the list.
- `await bp.addAutobase(base, [opts])` / `bp.addAutobaseBackground(base, [opts])` — also accepts an [Autobee](/engineering/third-party-software/p2p/autobee/) (2.9.0).
- `bp.sendNotification(...)` / `bp.sendNotificationBackground(...)` — ask a blind peer to build a `blind-push` notification for its push gateway; rate-limited by default (2.8.0).
- `await bp.suspend()` / `await bp.resume()` / `await bp.close()`.

Mirror selection is by **XOR distance** to a `target` key (`opts.target` lets you pin / load-balance). It interplays with a Wakeup object — `addAutobase` defaults its target to the autobase's `wakeupCapability.key`.

---

## Gotchas

**It is the requester side, not the server.** You provide the blind peers' keys (the always-on hosts); this module talks to them, it does not host data for others. The server side is the `blind-peer` package.

**2.12.0 is breaking against older servers.** Registrations and notifications are now requests the blind peer answers; a blind peer older than **3.16.0** "may leave cores unregistered". Keep client and server in step.

**The blind peer receives the core key.** The client sends each core's full key (and length) on registration. The docs state the blind property — blind peering lets peers "replicate and store Hypercores without being able to read them" — and what makes it hold is block encryption: the blind peer has the core key, not the encryption key. (See the [key model](/engineering/third-party-software/p2p/key-model/) and the [security model](/engineering/third-party-software/p2p/security-model/).)

---

## Version

`blind-peering@2` (2.13.1 in November 2026; very active). The server, `blind-peer`, is at 3.18.1. Package name matches the repo — no trap. Check the npm registry before pinning.

## See Also
- Docs: [docs.pears.com/p2p/reference/helpers/blind-peering](https://docs.pears.com/p2p/reference/helpers/blind-peering), [blind-peer](https://docs.pears.com/p2p/reference/helpers/blind-peer), [explanation](https://docs.pears.com/p2p/explanation/blind-peering)
- Repo: [github.com/holepunchto/blind-peering](https://github.com/holepunchto/blind-peering) (README and source)
- npm: `blind-peering`, `blind-peer`
