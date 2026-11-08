---
layout: default
lastmod: 2026-11-08
title: "secret-stream"
description: "secret-stream is the end-to-end encryption layer — a Noise-encrypted Duplex wrapping any raw stream, embedded by HyperDHT for automatic encryption."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [P2P building blocks](/engineering/third-party-software/p2p/) > secret-stream

# secret-stream

secret-stream is the **end-to-end encryption layer**: a Noise-encrypted Duplex that wraps any raw duplex stream (a [UDX](/engineering/third-party-software/p2p/udx/) stream, or a TCP socket). The key thing for an integrator: **in the Holepunch stack you rarely instantiate it yourself** — [HyperDHT](/engineering/third-party-software/p2p/hyperdht/) embeds it, so Hyperswarm/HyperDHT connections are *already* secret-streams. You reach for it standalone only to encrypt a **transport you brought yourself** (e.g. TCP). Backed by Noise + libsodium's secretstream.

---

## Core API

See the [README](https://github.com/holepunchto/hyperswarm-secret-stream) for exhaustive detail.

- `const s = new SecretStream(isInitiator, [rawStream], [opts])` — `opts`: `pattern` (Noise pattern, default `'XX'`), `keyPair`, `remotePublicKey`, `handshake` (a pre-computed handshake), `autoStart`, `enableSend`, `filterZeroByteMessages` (6.9.2).
- `const keyPair = SecretStream.keyPair([seed])` — static, **Ed25519**.
- `s.on('connect', () => { ... })` — handshake complete.
- `s.publicKey` / `s.remotePublicKey` — the latter is valid **only after** `'connect'`.
- `s.handshakeHash` — a per-session value, **identical on both ends**.
- `s.start(rawStream, [opts])`, `s.setTimeout(ms)`, `s.setKeepAlive(ms)`.

---

## Gotchas

**You usually don't `new` it yourself.** HyperDHT/Hyperswarm `connection` sockets are already secret-streams — don't wrap them again. Standalone use is for a BYO transport.

**Default pattern is `XX`** — mutual authentication with *no* prior knowledge of the remote key; identity is exchanged *during* the handshake. (HyperDHT's connect-by-key path uses an IK-style handshake instead, because there you already know the remote public key.)

**`remotePublicKey` is not trustworthy until `'connect'` fires** — don't act on it before then.

**`handshakeHash` is the channel-binding primitive** — identical on both sides, so it is how you verify "we're both on the same session."

**Identity keys are Ed25519** — the same key type that *is* the connectable address at the DHT layer.

---

## Version

`@hyperswarm/secret-stream@6` (6.9.2, November 2026) — a single `latest` dist-tag, stable. Check the npm registry before pinning.

## See Also
- Docs: [docs.pears.com/p2p/reference/helpers/secretstream](https://docs.pears.com/p2p/reference/helpers/secretstream/)
- Repo: [github.com/holepunchto/hyperswarm-secret-stream](https://github.com/holepunchto/hyperswarm-secret-stream) (README = the authoritative reference; repo name differs from the package name)
- npm: `@hyperswarm/secret-stream`
