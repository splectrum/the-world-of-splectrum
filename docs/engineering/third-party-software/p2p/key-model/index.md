---
layout: default
lastmod: 2026-11-08
title: "The key model"
description: "Distinct keys with distinct powers — network identity keypair (connect and listen), core key (names and verifies a log), discovery key (find peers), encryption key (content confidentiality)."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > The key model

# The key model

The stack names and secures data with **distinct keys, each with distinct powers** — and the separation between them is the foundation of its privacy model: you can let peers *find* a core without giving them the ability to *read* it, and you can let infrastructure *store and serve* a core without it being able to *decrypt* the contents.

---

## The keys

| Key | Derived from | Grants | What sharing it reveals |
|---|---|---|---|
| **Network identity keypair** (Ed25519, Noise) | random, or a seed | the **connectable address** at the DHT (`listen(keyPair)` / `connect(publicKey)`) | that you can be reached; not any core |
| **Core key** | the hash of the core's auth manifest (signer public keys, quorum, hash) | names the core and verifies its signatures; replicating it | the capability to verify — and to *read*, unless block encryption is on |
| **Discovery key** (keyed BLAKE2b hash of the core key) | the core key (one-way) | find / announce peers on the DHT | network *presence* (who is in a swarm), but **not** the core key or content |
| **Encryption key** (optional, separate) | independent | decrypt block contents (when block encryption is enabled) | content confidentiality |

**Network identity and core key are different keys.** At the DHT you connect to a public key, not an IP — so for a peer, cryptographic identity and network address are the same object. That keypair is not a core's key.

**A core's key is the hash of its manifest.** The manifest names the signers (their public keys), the quorum and the hash. Only a plain `new Hypercore()` with no manifest (compat mode) uses the signer's public key directly as the core key. Cores made through Corestore — so Hyperdrive and Autobase cores too — get a manifest, and their key is its hash.

**Discovery key** is a one-way hash of the core key (`crypto_generichash(digest, HYPERCORE, key)`). You announce and look up peers under it, so the DHT layer learns the *discovery* key (and your IP/port) but not the core key. Holding the discovery key lets you find peers — it does **not** let you verify or decrypt.

**Encryption key** is separate again: with block encryption enabled, holding the core or discovery key still does not grant content decryption.

---

## What the split buys

Because announcement uses the one-way discovery key, the DHT (and anyone watching it) sees the discovery key + IP/port — **not** the core key or the content.

Blind peers are a different case. The blind-peering client sends each core's full key (and its length) to the blind peer, so the blind peer holds the core key. What it does not hold is the **block-encryption key**: its blindness rests on block encryption, not on discovery keys. Upstream describes blind peers as storing cores "without holding the keys that decrypt their content". (See the [security model](/engineering/third-party-software/p2p/security-model/) for the full picture and its limits.)

---

## Gotchas / honest limits

**Block encryption is opt-in and separate.** Without it, a holder of the core key can read the content — confidentiality-at-rest/from-replicators is *not* automatic. This includes a blind peer the core is registered with.

**The discovery key still reveals presence.** It does not leak the core key, but it is a stable, correlatable identifier — an observer near it in the DHT keyspace can see who is announcing/looking up a given topic. (Not anonymity — see the [security model](/engineering/third-party-software/p2p/security-model/).)

## See Also
- Repo: [github.com/holepunchto/hypercore-crypto](https://github.com/holepunchto/hypercore-crypto) (README = the reference for `keyPair`, `discoveryKey`, sign/verify, namespacing)
- [github.com/holepunchto/hypercore](https://github.com/holepunchto/hypercore) README, Manifest section ("key … is a hash of Hypercore's internal auth manifest")
- [github.com/holepunchto/hyperdht](https://github.com/holepunchto/hyperdht) README (public key as address)
- [github.com/holepunchto/blind-peering](https://github.com/holepunchto/blind-peering) source (the core key sent on registration); docs: [docs.pears.com/p2p/reference/helpers/blind-peer](https://docs.pears.com/p2p/reference/helpers/blind-peer)
- npm: `hypercore-crypto`
