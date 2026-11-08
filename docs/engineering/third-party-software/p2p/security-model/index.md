---
layout: default
lastmod: 2026-11-08
title: "The P2P security model"
description: "What the Holepunch stack protects, what it leaves observable, and what it explicitly does not do — transport, content, metadata, and anonymity."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > The P2P security model

# The P2P security model

A faithful account of what the stack protects, what it leaves observable, and what it explicitly does *not* do. The honest summary: **transport encryption is strong and automatic; content-at-rest and network-metadata privacy are opt-in or limited; anonymity is not provided.** Built on the [key model](/engineering/third-party-software/p2p/key-model/).

---

## Two encryption layers

Don't conflate them.

**Transport (always on).** Every HyperDHT/Hyperswarm connection is end-to-end Noise-encrypted by default. HyperDHT runs a Noise **IK** handshake (the caller already knows the server's public key) and hands the result to [secret-stream](https://github.com/holepunchto/hyperswarm-secret-stream) (Ed25519, libsodium secretstream); secret-stream's own default, XX, applies only when it is used standalone. You cannot turn it off; there is no plaintext connection mode.

**Block encryption (opt-in, off by default).** Hypercore content is encrypted at the block level *only* if you set an encryption key (`core.padding` is 0 otherwise). Unencrypted cores are readable by anyone who replicates them and holds the core key — content confidentiality from replicators is **not** automatic.

---

## Identity & access

A peer's network identity is an Ed25519 keypair, which is also its connectable address (you `connect(publicKey)` / `listen(keyPair)`). A core is named by its own key, the hash of its manifest — a different key. The core's discovery key (a hash of the core key) is what is advertised; the core key is not revealed to a peer until it proves it already knows it. (See the [key model](/engineering/third-party-software/p2p/key-model/).)

---

## What an observer can see

A party watching the DHT can collect announcers' **IP:port** and correlate activity by the **32-byte topic / discovery-key** hash (opaque, but a stable identifier anyone who knows the topic can use).

*Nuance:* addresses are not published to a freely-queryable public set; a peer reveals itself on a relayed Noise request, so it leaks its IP less often than a classic DHT would. Frame it as "discoverable to those who know the topic and the relay nodes involved," not "the whole swarm is enumerable by anyone."

---

## Traffic-analysis surface

Even with transport encryption, **block sizes** (padded only when block encryption is on), **timing**, and **connection metadata** remain observable. *This is architectural inference — upstream publishes no traffic-analysis statement either way.*

---

## Mitigations

**Private DHT / custom bootstrap** — run your own bootstrap nodes to limit who participates. Supported via the `bootstrap` option on [HyperDHT](/engineering/third-party-software/p2p/hyperdht/).

**Block encryption** — for content confidentiality + size padding.

**VPN or Tor** — upstream guidance now: "If your IP is sensitive … route your traffic through a VPN or Tor." The same docs page lists what a connected peer can do with your IP (geolocate it, correlate your presence across swarms, log timing) and what it cannot (read your traffic, impersonate you, identify you across IP changes). Holepunch leaves anonymity overlays themselves to user-land.

---

## Known limitations

State these plainly — they are limitations, not features.

**No built-in anonymity / onion routing.** Upstream treats Tor/overlays as out of scope ("user land"), focused on throughput and stability.

**Privacy is an acknowledged open area, not a solved one.** [hyperdht #2](https://github.com/holepunchto/hyperdht/issues/2) ("secure and privacy preserving DHT") has been open since 2018; [#50](https://github.com/holepunchto/hyperdht/issues/50) was closed in 2021 with an explanation but no privacy feature shipped.

**No published formal threat model** for the P2P stack: none appears in the current docs.

**No forward-secrecy or formal-verification claims.** Upstream does not claim either; even where the Noise handshake may provide forward secrecy as a property, it is not claimed.

---

## "Blind" infrastructure

The official docs now state the blind property. A blind relay "moves bytes it cannot read": the relayed bytes are the E2E-encrypted secret-stream. A blind peer "stores and serves Hypercores without decrypting or interpreting their contents", and blind peering lets peers "replicate and store Hypercores without being able to read them". The docs add a qualifier: "Blind peering does not replace end-to-end encryption or capability checks on the cores themselves." The [blind-relay](https://github.com/holepunchto/blind-relay) and [blind-peering](https://github.com/holepunchto/blind-peering) READMEs still don't say it.

How it works matters. A blind peer is not blind by discovery key: the blind-peering client sends it each core's full key. What keeps it blind is **block encryption** — it holds the core key but not the encryption key. (See the [key model](/engineering/third-party-software/p2p/key-model/).)

---

## Key custody

*Our operational note — upstream docs do not give custody guidance.*

Identity and access are the keypair; lose it and you lose the ability to write or control the core. Treat the primary key (and Corestore's primary key, which derives all named cores) as the thing to back up.

## See Also
- Repo: [github.com/holepunchto/hyperdht](https://github.com/holepunchto/hyperdht) (README on `main`; issues [#2](https://github.com/holepunchto/hyperdht/issues/2) open, [#50](https://github.com/holepunchto/hyperdht/issues/50) closed)
- Repo: [github.com/holepunchto/hypercore](https://github.com/holepunchto/hypercore) (README — block `encryption`, `core.padding`)
- Repo: [github.com/holepunchto/hyperswarm-secret-stream](https://github.com/holepunchto/hyperswarm-secret-stream) (README — Noise/secretstream)
- Repo: [github.com/holepunchto/blind-relay](https://github.com/holepunchto/blind-relay) and [github.com/holepunchto/blind-peering](https://github.com/holepunchto/blind-peering) (the "blind" roles)
- Docs: [docs.pears.com/p2p/explanation/peer-to-peer-demystified](https://docs.pears.com/p2p/explanation/peer-to-peer-demystified) (what peers learn from your IP), [docs.pears.com/p2p/explanation/blind-peering](https://docs.pears.com/p2p/explanation/blind-peering)
- npm: `hyperdht`, `hypercore`, `@hyperswarm/secret-stream`
