---
layout: default
lastmod: 2026-11-08
title: "blind-relay"
description: "blind-relay is a TURN-like fallback that forwards UDX stream messages between peers when direct hole-punching fails, without seeing the content."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > blind-relay

# blind-relay

blind-relay is the **TURN-like fallback** for peer connections that cannot be established directly — when hole-punching fails (e.g. a randomizing NAT). A relay host accepts **pairing requests** from two peers and **forwards [UDX](/engineering/third-party-software/p2p/udx/) stream messages** between them over [protomux](/engineering/third-party-software/p2p/protomux/) channels. It carries *live peer traffic*; it does **not** store or pin data. Because the relayed bytes are the peers' already-encrypted UDX stream, the relay is "blind" to content. **Not to be confused with [dht-relay](/engineering/third-party-software/p2p/dht-relay/)** — that bridges the *DHT protocol* over TCP/WebSocket, a different job.

---

## How it works

See the [README](https://github.com/holepunchto/blind-relay) for specifics.

A relay host accepts `pair` requests; two peers that present matching pairing tokens get their UDX stream messages forwarded between them (TURN-style). `unpair` tears it down.

The README documents the **wire protocol** (the `pair` / `unpair` message fields), not a JS Server/Client API. The integration surface is now documented elsewhere: `relayThrough` on HyperDHT `connect` / `createServer` and on [Hyperswarm](/engineering/third-party-software/p2p/hyperswarm/) — HyperDHT uses blind-relay internally — and, since Pear 3.4.0, `pear blind-relay start` and `--relay <key>`. Relaying happens only when a relay is configured this way.

---

## Gotchas

**The use case is now named upstream.** The docs: "A **randomizing NAT** … assigns an unpredictable external port per connection … A **blind relay** is the fallback." The README still frames it only as "similar to TURN".

**"Blind" is now stated in the docs**: the relay "moves bytes it cannot read", because the relayed stream is end-to-end encrypted. The README still does not say it. (See the [security model](/engineering/third-party-software/p2p/security-model/).)

**It relays streams, it does not store data** — distinct from [blind-peering](/engineering/third-party-software/p2p/blind-peering/) / [seeders](/engineering/third-party-software/p2p/seeders/) (availability) and from [dht-relay](/engineering/third-party-software/p2p/dht-relay/) (DHT bridging).

---

## Version

`blind-relay@1` (1.6.1, May 2026). Package name matches the repo — no trap. Check the npm registry before pinning.

## See Also
- Docs: [relay connections through a blind relay](https://docs.pears.com/p2p/how-to/connect-to-peers/relay-connections-through-a-blind-relay)
- Repo: [github.com/holepunchto/blind-relay](https://github.com/holepunchto/blind-relay) (README = the authoritative reference; documents the wire protocol, not a JS API)
- npm: `blind-relay`
