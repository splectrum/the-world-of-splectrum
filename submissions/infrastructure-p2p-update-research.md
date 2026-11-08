# P2P building blocks — update research (2026-11-08)

Scope: the eighteen pages under `docs/engineering/infrastructure/p2p/` (all `lastmod: 2026-05-31`), checked against upstream as of 2026-11-08.

Sources used:
- npm registry metadata (dist-tags, publish dates): `https://registry.npmjs.org/<package>`
- READMEs on GitHub `main`/`master` (`https://raw.githubusercontent.com/holepunchto/<repo>/HEAD/README.md`), and READMEs as published per version on unpkg (`https://unpkg.com/<package>@<version>/README.md`). The second lets us diff the late-May version against the current one.
- Published source on unpkg, where a README is silent.
- Official docs, which now live under `https://docs.pears.com/p2p/…`, including the curated changelog `https://docs.pears.com/p2p/release-overview`.

Marks: [C] = checked against the source named; [C, as quoted by X] = second-hand; [U] = unverified.

Versions current on 2026-05-31 vs now (npm `latest`) [C, registry]:

| package | late May | now | note |
|---|---|---|---|
| hypercore | 11.33.1 | 11.40.3 | `next` tag stale at 10.36.1 |
| corestore | 7.10.0 | 7.16.1 | only tag: `latest` |
| hyperbee | 2.27.3 | 2.27.3 | no release since 2026-01-27 |
| hyperdrive | 13.3.2 | 13.3.4 | stale `next` 11.0.1, `tmp` 12.0.0 |
| autobase | 7.28.1 | 7.28.2 | three releases since May |
| hyperblobs | 2.12.0 | 2.13.0 | stale `next` 2.0.0 |
| hyperdht | 6.32.0 | 6.36.0 | |
| hyperswarm | 4.17.0 | 4.17.2 | stale `tmp` 4.13.0 |
| udx-native | (`latest` 1.19.2, `next` 1.20.6) | `latest` 1.22.1, `next` 1.20.6 | dist-tag trap gone |
| @hyperswarm/secret-stream | 6.9.1 | 6.9.2 | |
| protomux | 3.11.0 | 3.13.0 | |
| blind-peering | 2.1.2 | 2.13.1 | very active |
| blind-peer (server) | 3.9.0 | 3.18.1 | very active |
| blind-relay | 1.6.1 | 1.6.1 | |
| hypercore-crypto | 3.7.0 | 3.7.0 | |
| @hyperswarm/seeders | 1.1.6 | 1.1.6 | last publish 2024-02-07 |
| @hyperswarm/dht-relay | 0.4.3 | 0.4.3 | last publish 2023-10-30 |
| hyperbee2 | 2.10.2 | 2.21.4 | "next major" of hyperbee |
| autobee | 1.0.x | 2.13.3 | multiwriter Hyperbee, v2 since Aug 2026 |
| compact-encoding | 3.1.0 | 3.6.0 | v3 major since 2026-04-23 |
| hypercore-storage | 3.0.2 | 3.4.0 | v3 major since 2026-05-21 |

Platform data point (commit c6b73bb of dev-env-2-p2p-cluster; these are observations, not upstream truth): hyperswarm 4.17.2, corestore 7.16.1, hyperbee 2.27.3, hyperdrive 13.3.4, protomux 3.13.0, hypercore-crypto 3.7.0 and @hyperswarm/secret-stream 6.9.2 are all the current `latest`. hyperdht 6.35.0 is one minor behind (6.36.0), and compact-encoding 3.5.2 is one minor behind (3.6.0).

---

## Claims needing change, per page

### index.md (landing)
- "Docs: docs.pears.com/building-blocks" → this URL is now **404**. The docs have moved to `https://docs.pears.com/p2p/reference/`, which sorts modules as Primitives (Hypercore, Hyperbee, Hyperdrive, Autobase, **Autobee**, HyperDHT, Hyperswarm), Helpers (Corestore, Localdrive, Mirrordrive, Secretstream, Compact-encoding, Protomux, HRPC, Hyperschema, **blind-peering, blind-peer**) and Tools. [C] https://docs.pears.com/p2p/reference.md
- The Storage list has no multiwriter-Hyperbee entry. Autobee is now an upstream primitive (marked "experimental"). [C] same page; stability badge seen in the page HTML.
- The "Availability & relays" grouping no longer matches upstream. The documented availability picture is now `pear seed` plus blind peering (blind-peer server + blind-peering client). The relay fallback is blind-relay, wired in through Hyperswarm/HyperDHT `relayThrough` and Pear's `--relay`. seeders and dht-relay appear nowhere in the current docs. [C] https://docs.pears.com/p2p/explanation/blind-peering.md, https://docs.pears.com/pear/explanation/availability-and-blind-peering.md, https://docs.pears.com/llms.txt (full page list)

### hypercore
- "A core is identified by its public **`key`**" → a core's `key` is "a hash of Hypercore's internal auth manifest". The signer's Ed25519 public key is the core key only in compat mode, which is the default for a bare `new Hypercore()` with no manifest. Cores made through Corestore get a manifest (`{ version, signers: [{ publicKey }] }`), so their key is the manifest hash. [C] https://github.com/holepunchto/hypercore README ("key … is a hash of Hypercore's internal auth manifest"); source `lib/core.js` line 178 (`compat = opts.compat === true || (opts.compat !== false && !opts.manifest)`) in https://unpkg.com/hypercore@11.40.3/lib/core.js; Corestore `_auth()` in https://unpkg.com/corestore@7.16.1/index.js
- Version: "Current release is `hypercore@11`" is still true (11.40.3). Caveat worth adding: the README still says "the latest release is Hypercore 10 … considered LTS", which is stale wording upstream. [C] README, npm
- Worth adding as API (all since May): `core.count(start, end)` (v11.38.0); `allowLatestBlock` / `core.setAlwaysLatestBlock()` (v11.36.0); `core.getManifest()` / `Hypercore.parseManifest()` (v11.35.0); manifest `version` 3 accepted (v11.37.0); experimental `core.setGroup(topic)` for grouped structures "(eg. `autobee`)". [C] https://docs.pears.com/p2p/release-overview.md; README diff 11.33.1→11.40.3 on unpkg
- Operational notice: `core.clear()` bugs fixed in v11.37.2 and v11.39.6 ("Upgrading doesn't repair cores that are already affected"). [C] release overview

### corestore
- "**`npm i corestore` installs v7, not the newest major.** … a v11 is planned … no major above 7 has been published" → the framing is wrong. Corestore 7 *is* the newest major and the RocksDB line; `latest` = 7.16.1 and is the only dist-tag. No 8+ or 11 exists. The README note ("This readme reflects Corestore 7, our latest major version … the npm dist-tag for latest is set to latest version of Corestore 7, the previous major … will be updated to 11 in a few weeks") is still there and contradicts itself; it does not describe a real trap. Suggest dropping the trap box. [C] https://registry.npmjs.org/corestore; README
- "`options` includes `primaryKey`" → passing `primaryKey` to a root store now throws `ERR_ASSERTION` unless `unsafe: true` is also set ("Passing the primary key is unsafe unless you know what you are doing"). This was already in 7.10.0, so it predates the page. [C] https://docs.pears.com/p2p/reference/helpers/corestore.md; source lines 272–275 in https://unpkg.com/corestore@7.10.0/index.js and @7.16.1
- "`store.replicate(isInitiatorOrStream, [opts])` — one stream replicates **every** core the store owns" → the signature is `store.replicate(optsOrStream)`. It replicates every core "currently loaded and in memory", and fails for cores whose capability the remote lacks ("Corestore replication does not exchange Hypercore keys"). [C] README; docs reference
- Docs link `docs.pears.com/how-tos/work-with-many-hypercores-using-corestore` → **404**. Now at https://docs.pears.com/p2p/how-to/store-and-replicate/work-with-many-hypercores-using-corestore. The reference page is https://docs.pears.com/p2p/reference/helpers/corestore. [C]
- New since May, optional to mention: `alwaysLatestBlock` (7.13.0), `treeCache` (7.11.1), per-get `manifestVersion` (7.12.6), experimental `notifyGroup(topic)` / `group-active`, and `suspend()` no longer flushes (7.12.0). [C] release overview; README diff 7.10.0→7.16.1

### hyperbee
- "`hyperbee@2` — a stable API" is still true for the package (docs: "Status: stable", documented against v2.27.3). But a successor is in development: **hyperbee2** ("Next major version for hyperbee. Will be merged in there and released a new major when fully done."). It is at 2.21.4 with about 30 releases since May, and **Autobee depends on it** (`hyperbee2 ^2.21.2`). Its API differs: the constructor takes a **Corestore**, not a core; writes go through `db.write()` + `batch.tryPut/tryDelete`; there is no `sub()`/`keyEncoding` in the headings; and a `compat` option writes "blocks compatible with Hyperbee 1". The hyperbee repo has had no commit since 2026-04-14 and no release since 2026-01-27. [C] https://github.com/holepunchto/hyperbee2 README; https://registry.npmjs.org/hyperbee2; https://registry.npmjs.org/autobee; https://github.com/holepunchto/hyperbee/commits/main.atom
- The docs do not mention hyperbee2 at all; the Autobee docs link "Hyperbee" to the classic page while showing hyperbee2's `write()`/`tryPut` API. [C] docs autobee and llms.txt (no match)
- Open question, not resolvable from sources: whether the merged major will ship as `hyperbee@3`, and when. [U]

### autobase
- "This is the **fastest-moving member of the family** … semantics are still evolving and the upstream docs are lighter here" → no longer accurate. The docs now mark Autobase "**Status: stable**" and carry a full reference, a how-to and an explanation page ("A production Autobase-backed chat room"). npm shows three releases since May (7.28.0–7.28.2, the last 2026-09-08). The fast-moving multiwriter work is now **Autobee**. [C] https://docs.pears.com/p2p/reference/building-blocks/autobase.md; https://docs.pears.com/llms.txt; registry
- "**Optimistic mode** requires you to self-verify writes inside `apply`" → correct but incomplete. For an optimistic block to be applied, the writer must also be acknowledged via `host.ackWriter(key)`. [C] README
- Worth adding: `encryptionKey` / `encrypt` / `encrypted` options, `wakeup` (protomux-wakeup), `host.interrupt(reason)`, `pause()` / `resume()`. [C] README
- Docs link `docs.pears.com/building-blocks/autobase` → redirects to `/p2p/reference/building-blocks/autobase/` (works). [C]

### hyperblobs
- Docs link `docs.pears.com/building-blocks/hyperblobs` → **404**. There is no Hyperblobs reference page any more; the module is covered in https://docs.pears.com/p2p/explanation/from-logs-to-files and in how-tos under "Stream and share media". [C]
- "`clear()` removes access but doesn't reclaim the log" → the underlying `core.clear()` "Clear[s] stored blocks … reclaiming storage when possible". Local storage is reclaimed; the log's length and history stay. Suggest rewording. [C] hypercore README; hyperblobs README ("`opts` are the same as `Hypercore.clear`")
- New since May: `blobs.session(opts)` and `blobs.snapshot(opts)` (2.13.0). [C] README diff 2.12.0→2.13.0

### hyperdrive
- "`await drive.mirror(out, [opts])`" → `drive.mirror(out)` returns a MirrorDrive; you then call `await mirror.done()`. "`await drive.download(folder)`" → returns a `Download` object (`download.done()`). [C] README
- Version line ("13.x … transitional `next`/`tmp` dist-tags") still true (13.3.4; `next` 11.0.1, `tmp` 12.0.0). [C] registry
- Operational notice: `dedup: true` entries were mis-downloaded before 13.3.3/13.3.4. [C] release overview

### hyperdht
- "Every connection is Noise-encrypted by default (pattern XX)" → HyperDHT's connection handshake is **IK** (`new NoiseHandshake('IK', …)`), and its result is handed to secret-stream. XX is secret-stream's default only when used standalone. The secret-stream page already says this, so the two pages contradict each other. [C] https://unpkg.com/hyperdht@6.36.0/lib/noise-wrap.js line 18
- "symmetric NAT defeats it … and the system **falls back to relaying**" → relaying happens only if a relay is configured: `relayThrough` on `connect`/`createServer`, or on Hyperswarm, or Pear's `--relay`. The relay protocol is blind-relay, which hyperdht depends on (`require('blind-relay')` in `lib/connect.js`). Upstream's term is "randomizing NAT" ("randomized" DHT node); "symmetric NAT" also appears once in the docs. [C] https://docs.pears.com/p2p/how-to/connect-to-peers/relay-connections-through-a-blind-relay.md; https://docs.pears.com/p2p/reference/building-blocks/hyperdht.md (`relayThrough`); https://unpkg.com/hyperdht@6.36.0/lib/connect.js
- "The exact algorithm is not specified in the README" is still true of the README. The docs now have an explanation page: https://docs.pears.com/p2p/explanation/peer-to-peer-demystified. [C]
- Bootstrap nodes `node1/2/3.hyperdht.org:49737` still true. New wording: the default is `Pear.config.dht.bootstrap` inside a Pear app. [C] README; `lib/constants.js`
- Changes since May: `announce`/`lookup` option `{ lookup: true|false }`; `server.close()` / `node.suspend()` no longer wait for a first announce (6.35.0); `relayRecoveryWait` server option (6.34.1); announce relays picked by lowest RTT (6.35.1). [C] README diff 6.32.0→6.36.0; release overview

### hyperswarm
- Version and API still correct (4.17.2; stale `tmp` tag 4.13.0). Worth adding: `relayThrough` (a key or a function `(force, swarm) => key`; used when hole-punching fails with `HOLEPUNCH_ABORTED`, `HOLEPUNCH_DOUBLE_RANDOMIZED_NATS`, `REMOTE_NOT_HOLEPUNCHABLE` or, from 4.17.1, `CANNOT_HOLEPUNCH`), `maxClientConnections`, `maxServerConnections`, `maxParallel`, and `swarm.listen()`. `firewall` semantics: returning **true rejects**. [C] https://docs.pears.com/p2p/reference/building-blocks/hyperswarm.md; README

### udx
- The whole "**Version / dist-tag trap**" box and the Version section ("`latest` = 1.19.2 — the older line … Pin `@next`") are **obsolete**. `latest` is now 1.22.1, and `next` is a stale 1.20.6. Following the page's advice ("Use `@next`") would now install an *older* version. [C] https://registry.npmjs.org/udx-native
- "the repo README documents *that* newer API (`changeRemote`, `relayTo`, `framed`) — so the README and a default install **mismatch**" → this was not right even at the time. The README published with 1.19.2 already documents `changeRemote`, `relayTo`, `framed`, `remote-changed` and `mtu-exceeded`, and is identical to the current README. [C] https://unpkg.com/udx-native@1.19.2/README.md vs @1.22.1
- UDX has no docs.pears.com reference page; the docs name `libudx` as a native foundation. [C] https://docs.pears.com/p2p/explanation/how-the-stack-fits-together.md

### secret-stream
- Still correct (6.9.2; XX default; `handshakeHash`; `remotePublicKey` after `connect`). New: `filterZeroByteMessages` option (6.9.2). The docs URL moved (`docs.pears.com/helpers/secretstream` redirects to `/p2p/reference/helpers/secretstream/`); the README itself changed its docs link from docs.holepunch.to to docs.pears.com. [C] README diff; release overview

### protomux
- Still correct. New (3.13.0): `mux.watch()` / `unwatch()` / `unwatchAll()`. Also: a rejected async handler after channel close now emits `warning` instead of destroying the stream (3.12.0). Docs link redirects (works). [C] README diff 3.11.0→3.13.0; release overview
- "Pairs with the `compact-encoding` helper" — note compact-encoding is now **v3** (3.0.0 released 2026-04-23; current 3.6.0). The contents of the v3 break are not checked here. [C] for dates (registry); [U] for what v3 changed

### key-model
- Table row "Keypair / public key (Ed25519) … identity + the connectable address … verification of the log's signatures" and "**Public key = identity = address** … The public key also verifies the append-only log's signatures" → these conflate two different keys:
  - the **network identity keypair** (HyperDHT/Hyperswarm Noise keypair: what you `listen()` with and `connect()` to);
  - a **core's key**, which is the hash of its auth manifest (signer public keys, quorum, hash), and equals the signer's public key only in compat mode. Corestore-made cores (so Hyperdrive and Autobase too) are manifest-keyed.
  
  The discovery key is derived from the *core key*: a keyed BLAKE2b, `crypto_generichash(digest, HYPERCORE, key)`. [C] hypercore README (Manifest section); `lib/core.js`; Corestore `_auth()`; https://unpkg.com/hypercore-crypto@3.7.0/index.js lines 142–147
- "relays, seeders, and blind-peers operate on discovery keys and ciphertext, never on capability keys" → **wrong for blind peers**. blind-peering sends each core's full `key` (and `length`) to the blind peer (`batch.cores.push({ key, length })`). The blind peer holds the capability key; what it lacks is the **block-encryption key**. So its blindness rests on block encryption; on our reading, an unencrypted core registered with a blind peer is readable by it. [C] for the key being sent: https://unpkg.com/blind-peering@2.13.1/index.js (`_flushCore` → `addCore(batch, core.key, core.length)`, `function addCore`). [C] for the docs' wording ("without holding the keys that decrypt their content"): https://docs.pears.com/p2p/reference/helpers/blind-peer.md. The readability consequence is our inference from these two plus the hypercore README on unencrypted cores.

### security-model
- "Transport … secret-stream — Noise XX" → for HyperDHT/Hyperswarm connections the handshake is IK (see hyperdht). [C] `lib/noise-wrap.js`
- "*Our suggestion, not upstream guidance:* a VPN or overlay network" → this is **now upstream guidance**: "If your IP is sensitive … route your traffic through a VPN or Tor." The same page lists what a connected peer can do with your IP (geolocate, correlate presence across swarms, log timing), and what it cannot do (read traffic, impersonate you, identify you across IP changes). [C] https://docs.pears.com/p2p/explanation/peer-to-peer-demystified.md ("What peers learn from your IP")
- "Blind" infrastructure: "*This is architectural inference, not a verbatim upstream guarantee* … Do not quote it as a guarantee" → the official docs now state it. Blind peer: "stores and serves Hypercores **without decrypting or interpreting** their contents"; blind-peering: "replicate and store Hypercores without being able to read them"; blind relay: "it moves bytes it cannot read". The docs add one qualifier: "Blind peering does not replace end-to-end encryption or capability checks on the cores themselves". The READMEs still don't say it. Also correct "blind-peers replicate … by discovery key without the capability key" (see key-model: the key is sent). [C] https://docs.pears.com/p2p/explanation/blind-peering.md; https://docs.pears.com/p2p/reference/helpers/blind-peering.md; https://docs.pears.com/p2p/how-to/connect-to-peers/relay-connections-through-a-blind-relay.md
- Issues still as stated: hyperdht #2 open, #50 closed. [C] issue pages
- "No published formal threat model" — none found in the docs' page list. [C] for absence in https://docs.pears.com/llms.txt; [U] beyond that

### blind-peering
- "`new BlindPeering(dht, store, { keys, suspended, wakeup })` — `keys` is the list of blind-peer (mirror) keys" → since **2.6.0** (2026-08-04) the option is `blindPeers: [{ key, group }]`. `group` spreads a core's mirrors across hosting groups. `keys` survives as the "Older form of `blindPeers` … used only when `blindPeers` is empty". [C] README; https://unpkg.com/blind-peering@2.5.3/README.md vs @2.6.0; docs reference
- The per-core option `mirrors` (default 1) is now `pick` (default **2**). [C] README diff 2.1.2→2.13.1
- New API: `setBlindPeers()`; `sendNotification()` / `sendNotificationBackground()`, which asks a blind peer to build a `blind-push` notification for its push gateway, rate-limited by default (2.8.0); `client` and `skipConnectionMetadata` options; per-core `blindPeers`; `addAutobase()` accepts an **Autobee** (2.9.0). [C] README; release overview
- **Breaking (2.12.0):** registrations and notifications are now requests the blind peer answers. A blind peer older than **3.16.0** "may leave cores unregistered". [C] https://docs.pears.com/p2p/reference/helpers/blind-peering.md; release overview
- "it does not run a mirror itself" is still true. The server side is the **blind-peer** package (3.18.1; library) plus `blind-peer-cli`, and since Pear 3.4.0 `pear blind-peer start`. Upstream frames the trio as blind-peer / blind-peering / blind-peer-cli. [C] https://docs.pears.com/p2p/explanation/blind-peering.md
- "The 'blind' property … is architectural inference, not a documented guarantee … the README does not state it" → the README still doesn't, but the official docs do (see security-model), and the mechanism is the encryption key, not the discovery key (see key-model). [C]
- Upstream docs now exist (reference + explanation + two how-tos); the page lists only the repo. [C]

### blind-relay
- "The hole-punch-failure / symmetric-NAT use case is *implied*, not named" → the official docs now name it: "A **randomizing NAT** … assigns an unpredictable external port per connection … A **blind relay** is the fallback". The README is unchanged. [C] relay how-to (URL above)
- "'Blind = can't read content' is architectural inference" → the docs now say "it moves bytes it cannot read". [C] same
- "the integration surface is the relay role rather than a documented class" → the integration surface is now documented: `relayThrough` on HyperDHT `connect`/`createServer` and on Hyperswarm. Pear 3.4.0+ adds `pear blind-relay start` and `--relay <key>`. hyperdht uses blind-relay internally. [C] docs hyperdht/hyperswarm references; relay how-to; `lib/connect.js`
- Version line "`blind-relay@1` (1.x)" is still true (1.6.1, last publish 2026-05-06). [C]

### seeders
- The API description still matches the README. The status line ("stable and functional, but not actively iterated") is still literally true: last commit and publish 2024-02-07, not archived. [C] registry; https://github.com/holepunchto/hyperswarm-seeders/commits/master.atom
- Positioning change: it is **absent from the current docs**, and the availability tier upstream now documents is `pear seed` + blind peering. The page's "sibling to blind-peering" framing overstates its current role. Not deprecated anywhere we found. [C] for absence (docs page list); [U] whether Pear still uses it internally

### dht-relay
- No change: npm 0.4.3 (2023-10-30), last repo commit 2025-11-01, README still says "experimental. Do not use it in production". [C] registry; https://github.com/holepunchto/hyperswarm-dht-relay/commits/main.atom; README

---

## Claims confirmed still correct (brief)

[C] against README/npm unless noted:
- Hypercore: v11 storage notes (`random-access-storage` unsupported, `db.columnFamily` TypeError, auto-migration, `sparse` removed, `indexedLength` → `signedLength`, `encryptionKey` → `encryption`; UPGRADE.md); `core.padding` is 0 unless block encryption is on.
- Corestore: namespaces chainable, name-derived writable vs key-loaded cores.
- Hyperbee: API surface and gotchas.
- Hyperdrive: `get()` returns `null` for symlinks; `findingPeers()`.
- Autobase: open/apply determinism warning; `signedLength` vs `length`; fast-forward; `host.addWriter` inside `apply`.
- HyperDHT: options and defaults (`connectionKeepAlive` 5000, `randomPunchInterval` 20000), announce with up to 3 relay addresses, BEP44-style records, `DHT.bootstrapper`.
- Hyperswarm: `flush()` vs `discovery.flushed()`; `ban()` does not close connections.
- protomux: `createChannel` can return `null`; framed stream required; cork/uncork.
- secret-stream: options; `keyPair` Ed25519.
- UDX: no encryption at this layer.
- seeders: README; dht-relay: README.
- Name traps (secret-stream, seeders `master`, dht-relay) still hold.
- All GitHub repo links resolve; none archived.

## Proposed new material (options)

1. **Autobee** — new upstream primitive: "Unstoppable, scalable multiwriter Hyperbee", "Still experimental and under heavy development. Expect breaking changes." Docs say it "sits alongside Autobase rather than replacing it"; Autobase opens a view of any shape, Autobee always a Hyperbee. v2.0.0-rc from 2026-08-04, now 2.13.3; v2.13.0 had a breaking remap. Strong case for a page or a section on the Autobase page. [C] https://github.com/holepunchto/autobee; https://docs.pears.com/p2p/reference/building-blocks/autobee.md; release overview
2. **hyperbee2** — a note on the Hyperbee page (successor in progress; Autobee's engine) rather than its own page until it merges. [C] above
3. **blind-peer** (server) — page or section; the counterpart the blind-peering page assumes. Includes `pear blind-peer start` and `blind-peer-cli`. [C] https://docs.pears.com/p2p/reference/helpers/blind-peer.md
4. Re-sort "Availability & relays" around the upstream picture: blind peering (client + server) and `pear seed` for availability; blind-relay via `relayThrough` / `--relay` for connectivity; seeders and dht-relay as legacy or experimental side entries.
5. Optionally list the upstream helpers we don't cover: **compact-encoding**, **Hyperschema**, **HRPC** (all reference pages upstream). Hyperschema had wire-format-breaking changes (1.23.0 bool arrays; 1.25.0 `framed`), relevant since our side maps encodings. [C] release overview
6. Cite **https://docs.pears.com/p2p/release-overview** as the curated breaking-changes record in each page's Sources.

## Broken or moved links

| page | link | status | replacement |
|---|---|---|---|
| index | https://docs.pears.com/building-blocks/ | 404 | https://docs.pears.com/p2p/reference/ |
| hyperblobs | https://docs.pears.com/building-blocks/hyperblobs | 404 | https://docs.pears.com/p2p/explanation/from-logs-to-files |
| corestore | https://docs.pears.com/how-tos/work-with-many-hypercores-using-corestore | 404 | https://docs.pears.com/p2p/how-to/store-and-replicate/work-with-many-hypercores-using-corestore |
| hypercore, hyperbee, hyperdrive, autobase, hyperdht, hyperswarm | https://docs.pears.com/building-blocks/<x> | 301 → works | https://docs.pears.com/p2p/reference/building-blocks/<x>/ |
| protomux, secret-stream | https://docs.pears.com/helpers/<x> | 301 → works | https://docs.pears.com/p2p/reference/helpers/<x>/ |

All GitHub and issue links return 200. [C] curl, 2026-11-08

## Open checks

- Whether the hyperbee2 merge will ship as `hyperbee@3`, and on what timeline. [U]
- What changed in compact-encoding 3.0.0 and hypercore-storage 3.0.0 (format or API). Not covered by the docs' release overview, which starts at 2026-07-30. [U]
- Whether Pear or Keet still use @hyperswarm/seeders internally. [U]
- "No plaintext connection mode" for HyperDHT/Hyperswarm: not contradicted, not re-checked in source. [U]

## Blocked sources

None. registry.npmjs.org, raw.githubusercontent.com, github.com (HTML and atom feeds), unpkg.com and docs.pears.com (HTML and `.md`) were all reachable. A few large npm metadata fetches were truncated on the first try and succeeded on retry.
