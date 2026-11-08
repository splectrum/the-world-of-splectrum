# Bare reference pages: update research (2026-11-08)

Pages checked: `docs/engineering/infrastructure/bare/` — index, dual-runtime,
global-api, module-system, modules, platforms, sources (all `lastmod:
2026-05-29`, "Checked against bare 1.28.5").

Marks: **[C]** checked against the source itself (named); **[C, as quoted
by X]** second-hand; **[U]** unverified. "Then" = state at 2026-05-29, read
from npm publish dates or the git tag of that date. Where a page claim was
already wrong in May, that is said, so the fix is not mistaken for a change.

Main sources used:
- Bare repo `main` and tag `v1.28.5`: README.md, src/bare.js, src/bare.d.ts,
  bin/bare.js, bin/builtins.json, npm/package.json —
  https://github.com/holepunchto/bare
- Bare release notes v1.28.6–v1.36.2 —
  https://github.com/holepunchto/bare/releases
- npm registry (`registry.npmjs.org/<pkg>`), versions and publish dates.
- Pear docs, Bare section (new location): https://docs.pears.com/bare/ —
  modules catalog https://docs.pears.com/bare/reference/bare/modules/,
  runtime API https://docs.pears.com/bare/reference/bare/runtime/, CLI
  https://docs.pears.com/bare/reference/bare/cli/, Inside Bare
  https://docs.pears.com/bare/explanation/bare-runtime/, Migrating from
  Node.js https://docs.pears.com/bare/explanation/migrating-from-nodejs/,
  per-module references `https://docs.pears.com/bare/reference/bare/modules/<module>/`.

---

## Headline changes since late May

1. **Bare 1.28.5 → 1.36.2** (8 minor releases, 2026-06-17 to 2026-10-30).
   Notable: TypeScript modules (1.30.0), `new Addon(url)` and deprecation of
   `Addon.cache/load/resolve` (1.31.0), `Addon.seal()` and a threat model
   (1.32.0), **bare-module v7** — the module system no longer has its own
   file-system read capability (1.33.0), `bare_attach/detach/poll` (1.34.0),
   minimum macOS 13 / iOS 15 (1.34.1), API docs moved from README to
   `src/bare.d.ts`, `Addon.loaded()`, WASM targets, `BARE_ENGINE_SHARED`,
   thread `mount` (1.35.0), WebAssembly addons sandboxed through WASI and
   deprecation of thread callbacks (1.36.0). [C] release notes.
2. **Docs moved.** All three docs.pears.com links on the pages now land on
   other pages: `/reference/bare-overview` and `/reference/node-compat` both
   go to the Pear page "Runtime and languages"; `/reference/api` goes to the
   *Pear* API. Bare docs now live under `https://docs.pears.com/bare/`.
   Module READMEs are now stubs that point to the per-module references
   there. [C] curl of each URL (final URL and canonical link).
3. **Node.js compatibility: three routes, officially documented.**
   bare-node-runtime (globals + import map), **bare-node alias wrappers**
   (`fs@npm:bare-node-fs`), direct bare-* swaps; plus package `imports` maps
   for libraries. The pages document only the first and the imports field.
   [C] docs "Migrating from Node.js", bare-node README.
4. **Several page claims were wrong even in May** (Buffer global; Bare.suspended /
   Bare.exiting; Windows arm64 minimum; CLI flags; bare-tls API;
   `stream/consumers`; bare-https version; bare-node-runtime 1.2.0 vs 1.4.0;
   bare-module 6.1.3 vs 6.2.0; sqlite listed unsupported).

---

## index.md — claims needing change

| Current text | True now | Source | Mark |
|---|---|---|---|
| "Checked against bare 1.28.5" | Latest `bare` 1.36.2 (2026-10-30); `bare-runtime` 1.36.0 (2026-10-21; no 1.36.1/1.36.2 runtime published). | registry.npmjs.org/bare, /bare-runtime | [C] |
| "`npm i -g bare` … Prebuilt binaries included for Tier 1 platforms" | Still the install line, but the `bare` package is a launcher: "a Node.js script that starts the Bare binary as a child process"; the binary is in `bare-runtime-<platform>-<arch>`, pulled via the `bare-runtime` peer dependency (which has optional deps for darwin/ios/linux x64+arm64/android/win32 = Tier 1). `bare-runtime` can be installed directly (`npm i [-g] bare-runtime`; `bare-runtime/spawn`). Worth saying, since our platform pins `bare-runtime` 1.36.0, not `bare`. | docs CLI page (Inspector section); npm `bare@1.36.2` peerDependencies; npm `bare-runtime@1.36.0` optionalDependencies; bare-runtime README | [C] |
| "libjs — … abstracts over V8, JavaScriptCore, and QuickJS" | libjs is "Simple and ABI stable C bindings to V8"; QuickJS and JavaScriptCore come through separate libraries implementing the same libjs ABI (libqjs, libjsc). Bare README: libjs "provides low-level bindings to V8 in an engine independent manner". | libjs README; Bare README; docs "Inside Bare" | [C] |
| Table: "`Buffer` global — Not present. Require explicitly." | Wrong (also in May). Bare installs `queueMicrotask`, `Buffer`, timers, `structuredClone`, `URL`, `console` as globals at startup ("to stay somewhat compatible with other environments"). Not ambient: `process`, `fetch`, `TextEncoder/Decoder`, `AbortController`, `performance`. | src/bare.js step 7 (main and v1.28.5); docs "Migrating from Node.js" § Fewer globals are ambient | [C] |
| Table: "Module system — CJS or ESM (one-way)" for Node.js | Contestable (Node now has `require(esm)`); docs say only that Bare's interop is "bidirectional by default … without the ceremony Node sometimes demands". Soften. | docs "Migrating from Node.js" | [C] for docs wording; Node status [U] |
| Table: "Mobile support … Android/iOS Tier 1" | Still true; mobile embedding is now via **bare-kit** / react-native-bare-kit (docs "Native development kits"). | docs modules catalog | [C] |
| CLI flags table (5 flags) | Missing `--inspect-port <port>` (default 9229) and `--expose-gc` — both present in v1.28.5 too. Also: SIGUSR1 starts the inspector; `BARE_CHANNEL_FD` + `BARE_CHANNEL_SERIALIZATION_MODE=binary` sets `Bare.IPC` (>=1.28.7); `--version` prints with a leading `v`. | bin/bare.js (main, v1.28.5); docs CLI page | [C] |
| Architecture: runtime provides "three things" | Still the README's list. New since May: a **Security** section — `Bare.Addon.seal()` and `docs/threat-model.md`. | Bare README | [C] |

## dual-runtime.md — claims needing change

| Current text | True now | Source | Mark |
|---|---|---|---|
| "Third-Party Node.js Packages … The `bare-node-runtime` package provides this" (sole route) | Docs now set out three routes "in decreasing order of how much they hide": (1) bare-node-runtime — "reinstates Node's globals … and supplies an import map"; (2) **bare-node alias wrappers** — "npm i bare-fs fs@npm:bare-node-fs", each wrapper "a one-line re-export" at version `*`, so npm dedupes; "there's no bare-node package to install"; (3) direct bare-* swaps. A library that must run on both uses an `imports` map, which "applies to that package only, not its dependencies". Our platform uses route (2) (`fs`, `path`, `os`, `process`, `url`, `util`, `crypto`, `child_process` aliased to bare-node-*). | docs "Migrating from Node.js" § Choosing a porting strategy; bare-node README; dev-env-2-p2p-cluster package.json at c6b73bb | [C] |
| `node:` prefix not mentioned | `node:x` is resolved as the package `x` (bare-module-resolve: "If `url.protocol` equals `node:` … Return `package(specifier …)`"), so `node:fs` reaches an `fs` alias or import-map entry. Present before May (README v1.12.2, 2026-04-30). bare-node-runtime's import map carries both `fs` and `node:fs` keys. Matches the platform's note "Bare 1.36 resolves `node:` imports itself". | bare-module-resolve README (main, v1.12.2); bare-node-runtime imports.json | [C] |
| `bare-node-runtime/global` "Set up Node.js globals (Buffer, process, etc.)" | It installs abort-controller, crypto, encoding, events, fetch, performance, process, stream, worker, ws globals, and since 1.5.0 sets `process.versions.node` to the current Node LTS (now '26.13.0'): "Bare validates this value against the `engines.node` range of every package it resolves". Buffer is already global in Bare. | bare-node-runtime global.js and README (v1.5.4) | [C] |
| Compatibility map "Unsupported: … sqlite …" | `sqlite` → `bare-sqlite` since bare-node-runtime 1.4.0 (2026-05-26, before the page). Map otherwise unchanged since 1.4.0. Still mapped to `bare-node-runtime/unsupported`: cluster, constants, domain, http2, sea, sys, test, test/reporters, trace_events, wasi. `util` → `bare-utils`, `v8` → `bare-v8`, `perf_hooks` → `bare-performance`. | bare-node-runtime imports.json (main vs v1.4.0); commit "Add `bare-sqlite` (#4)" 2026-05-26 | [C] |
| (same) | Upstream disagree on `wasi`: docs table maps `wasi` → `bare-wasi` ("preopens take directory objects rather than host paths"); bare-node-runtime maps it to unsupported; bare-node README lists it "None / Unsupported". Docs list the gaps as "cluster, domain, trace_events, or Node's built-in test runner". | docs modules catalog § Node.js compatibility; imports.json; bare-node README | [C] |
| "Supported … means the common subset" | bare-node README grades each builtin: only os, querystring, string_decoder, timers "Fully Supported"; async_hooks "Unsupported"; constants, sys, trace_events "Obsolete"; domain, punycode "Deprecated"; the rest "Partially Supported". | bare-node README | [C] |
| "bare-crypto … not asymmetric (public-key) crypto: no sign/verify, key-pair generation …" | Out of date: bare-crypto has `generateKeyPair` (Ed25519), `sign`/`verify` (Ed25519), `timingSafeEqual`, `randomUUID`, a `webcrypto` subset (HMAC, Ed25519, PBKDF2, SHA family). Still absent: scrypt, Diffie-Hellman, X509, RSA/ECDSA. First in the README at v1.15.0 (2026-06-03). | docs bare-crypto reference ("Documented against v1.15.4"); bare-crypto README v1.14.0 vs v1.15.0 | [C] |
| "Native addons … must be rebuilt as Bare addons. This is a hard blocker" | Docs now offer a second path: **bare-compat-napi**, "Node-API-compatible headers so many existing addons build against Bare with little to no source change". Still needs a rebuild. | docs "Migrating from Node.js" § Native addons | [C] |
| Code example `if (typeof Bare !== 'undefined') require('bare-node-runtime/global')` | Still works per README usage. | bare-node-runtime README | [C] |

## global-api.md — claims needing change

| Current text | True now | Source | Mark |
|---|---|---|---|
| "There is no `process` or `Buffer` global" | `Buffer` is global (see index); `process` is not. | src/bare.js | [C] |
| `Bare.suspended`, `Bare.exiting` | Do not exist — not in src/bare.js at v1.28.5 or main, nor in bare.d.ts. Remove. | src/bare.js, src/bare.d.ts | [C] |
| `Bare.simulator` — boolean | Marked `@deprecated` (bare.js and bare.d.ts); the docs reference omits it. | src/bare.d.ts | [C] |
| `Bare.platform` list | Docs: android, darwin, ios, linux, win32 (as page). bare.d.ts also types `freertos`; `bare/target.h` knows `wasi` from 1.35.0, which docs say is not in the types or support table. | bare.d.ts; docs runtime reference | [C] |
| `Bare.arch` list | Docs list as page. bare.d.ts also types `armv8m`, `riscv32`; target.h knows `wasm32` from 1.35.0. | same | [C] |
| `Bare.version` — "version string" | With a leading `v` (e.g. `v1.35.1`). `exitCode` truncated to 8 bits. | src/bare.js; docs runtime reference | [C] |
| `Bare.suspend([linger])`, `Bare.wakeup([deadline])` | From 1.36.0 values above 2147483647 throw `RangeError`. | v1.36.0 notes; docs | [C] |
| `Bare.Thread`: `new Bare.Thread(filename[, options])` | Only non-deprecated form now: `new Thread(filename, source[, options])` (new in 1.32.0). Callback forms deprecated 1.36.0, `Thread.create` 1.31.0, `options.source` 1.32.0. New `mount` option (1.35.0). A thread "is loaded through a protocol that reaches nothing": it cannot read `filename` from disk; module graphs must be passed as a bare-bundle, which **bare-thread** does. Also `thread.wakeup()`, `thread.joined`, `Thread.self.data`. | bare.d.ts; docs runtime reference § Bare.Thread | [C]; when the no-disk-read behaviour started [U] (likely 1.33.0 with bare-module 7) |
| `Bare.Addon.resolve()`, `.load()`, `.cache` | Deprecated in 1.31.0 for `new Addon(url)`. New: `Addon.seal()`, `Addon.sealed` (1.32.0), `Addon.loaded(url)` (1.35.0). `Addon.host` unchanged. | v1.31.0/v1.32.0 notes; bare.d.ts | [C] |
| "Source: … docs.pears.com/reference/api" | That URL now serves the **Pear** API (`/pear/reference/pear/api/`). Bare global API: https://docs.pears.com/bare/reference/bare/runtime/ ; upstream: `src/bare.d.ts` ("Move API documentation to type declarations", 1.35.0). | curl; v1.35.0 notes | [C] |

## module-system.md — claims needing change

| Current text | True now | Source | Mark |
|---|---|---|---|
| (version implied 6.x; catalog says 6.1.3) | bare-module **7.5.0** (7.0.0 on 2026-09-10; in Bare from 1.33.0). Then: 6.2.0. bare-module now "requires Bare >=1.35.0". | npm; docs bare-module reference | [C] |
| Supported types list | Same set, now named: script, module, json, bundle, addon, binary, text (`Module.constants`); plus assets. Bare 1.30.0: "Support TypeScript modules"; `bare-type-stripper` is a builtin addon. The Pear docs page "Runtime and languages" still tells you to compile TypeScript to JS for Pear apps. | docs bare-module reference; v1.30.0 notes; bin/builtins.json | [C]; which extensions/how TS is detected [U] |
| `require` options "`{ with: { type: 'json' } }` and `{ with: { imports } }`" | Also `host` (e.g. `'wasi-wasm32'`) and `wasi` attributes for WebAssembly addons (Bare 1.36.0 / bare-module 7.5.0). Bad `type` values are now refused. | bare-module README; v1.36.0 notes | [C] |
| `require.resolve(specifier[, parentURL])` | Now takes `[, options]` (`with`), recording resolutions. | bare-module README | [C] |
| ESM API list | Add `import.meta.dirname`, `import.meta.filename`, `import.meta.addon.host`, `import.meta.addon.resolve()`. | bare-module README | [C] |
| `Module.createRequire(parentURL[, options])` | Options now include `referrer` and `builtins`; "The default protocol has no backing store of its own and cannot read from the file system" — a library calling it must pass a protocol. | bare-module README | [C] |
| Custom Protocols: "Methods: `preresolve`, `postresolve`, `resolve`, `exists`, `read`, `addon`, `asset`" | Replaced in v7: `resolve`/`resolveSync` (post-processes a resolved URL), `exists`/`existsSync`, `read`/`readSync`, `list`/`listSync`. `preresolve`, `postresolve`, `addon`, `asset` are gone. New `protocol.extend(methods)`, version check (`PROTOCOL_INCOMPATIBLE`). | bare-module README (main vs v6.1.3) | [C] |
| (absent) | New **Loader** API (`new Module.Loader()`: `link`/`linkSync`, `instantiate`, `import`/`importSync`, `patch(bundle)`, `evict`). | bare-module README | [C] |
| Conditions table, `#` prefix optional, `engines` | Unchanged. | bare-module README | [C] |
| "Source: github.com/holepunchto/bare-module" | Still valid; README now sends API to https://docs.pears.com/bare/reference/bare/modules/bare-module/ | bare-module README | [C] |

## modules.md — claims needing change

Version column (then = 2026-05-29, from npm publish dates):

| Module | Page | Then | Now |
|---|---|---|---|
| bare-fs | 4.7.0 | 4.7.1 | 4.8.4 |
| bare-path | 3.0.0 | 3.0.0 | 3.1.2 |
| bare-net | 2.3.1 | 2.3.1 | 2.3.3 |
| bare-http1 | 4.5.6 | 4.5.6 | 4.6.3 |
| bare-https | — | 3.0.0 | 3.1.0 |
| bare-dns | 2.1.4 | 2.1.4 | 2.3.1 |
| bare-dgram | 1.0.1 | 1.0.1 | 1.1.1 |
| bare-tls | 2.2.3 | 3.1.5 | 3.2.0 |
| bare-buffer | 3.6.0 | 3.6.0 | 3.7.1 |
| bare-events | 2.8.2 | 2.8.3 | 2.9.2 |
| bare-stream | 2.13.0 | 2.13.1 | 2.13.4 |
| bare-crypto | 1.13.4 | 1.14.0 | 1.15.4 |
| bare-zlib | 1.3.3 | 1.3.4 | 1.4.1 |
| bare-process | 4.4.1 | 4.4.1 | 4.5.1 |
| bare-env | 3.0.0 | 3.0.0 | 3.0.1 |
| bare-os | 3.8.7 | 3.9.1 | 3.9.4 |
| bare-tty | 5.1.0 | 5.1.0 | 5.2.2 |
| bare-readline | 1.3.1 | 1.3.1 | 1.3.1 |
| bare-module | 6.1.3 | 6.2.0 | 7.5.0 |
| bare-node-runtime | 1.2.0 | 1.4.0 | 1.5.4 |

[C] registry.npmjs.org. Our platform's pins (bare-fs 4.8.4, bare-path 3.1.2,
bare-os 3.9.4, bare-process 4.5.1, bare-subprocess 6.2.2, bare-url 2.5.6,
bare-crypto 1.15.4, bare-tcp 2.6.1, bare-dgram 1.1.1, bare-tty 5.2.2,
bare-http1 4.6.3, bare-hrtime 2.1.2, brittle 4.5.0, bare-runtime 1.36.0) all
equal npm latest today [C]. Other majors since May: bare-repl 7.0.0
(2026-09-02), bare-signals 5.0.0 (2026-07-07) [C npm]. No module on the pages
is deprecated on npm; the docs catalog marks them all "stable" [C].

Other claims:

| Current text | True now | Source | Mark |
|---|---|---|---|
| "bare-tls wraps existing streams rather than using `tls.connect()` / `tls.createServer()`" | Wrong (already in May, v3.1.5): bare-tls (BoringSSL) "Provides both a low-level `Socket` class that wraps any duplex stream with TLS and higher-level `createServer()` and `connect()` functions for TLS over TCP, similar to `node:tls`", with Mozilla roots bundled. | bare-tls README (main, v3.1.5) | [C] |
| "bare-dgram built on UDX rather than raw libuv UDP" | True for 1.0.1 (depends on `udx-native`); from 1.1.0 (2026-08-28) it is a native libuv UDP addon (`uv_udp_*` in binding.c; deps bare-dns, bare-events). | npm bare-dgram 1.0.1 vs 1.1.1 deps; binding.c | [C] |
| "bare-crypto is a subset … Hash: MD5, SHA1, SHA256, SHA512, BLAKE2B256 … Not available: sign/verify, generateKeyPair, scrypt, DiffieHellman, X509" | Hashes now md5, sha-1, sha-256, **sha-384**, sha-512, blake2b-256, **ripemd-160**. Ciphers as listed. Added: `generateKeyPair`/`sign`/`verify` (Ed25519), `timingSafeEqual`, `randomUUID`, `webcrypto`/`bare-crypto/web`. Still not available: scrypt, DiffieHellman, X509. | docs bare-crypto reference (v1.15.4); lib/cipher.d.ts | [C] |
| "bare-buffer … Not globally available — must be required" | Wrong: Bare puts `Buffer` on the global at startup (`bare-buffer/global`). | src/bare.js | [C] |
| "bare-stream … Also provides `stream/consumers`, `stream/promises`, `stream/web`" | bare-stream exports `.`, `./web`, `./global`, `./promises` — no `./consumers` (none in 2.13.0 either). Note: bare-node-runtime still maps `stream/consumers` → `bare-stream/consumers`. | npm bare-stream exports (2.13.0, 2.13.4); bare-node-runtime imports.json | [C] (whether that mapping fails at runtime [U]) |
| "bare-dns provides `dns.lookup(hostname, cb)` and `dns/promises`" | Also a resolver: `dns.resolve`, `resolve4/6/Any/Caa/Cname/Mx/Naptr/Ns…` (2.2.0/2.3.0). | docs bare-dns reference (v2.3.1) | [C]; which release added them [U] |
| "bare-net mirrors Node.js `net`" | Now described as "TCP and IPC servers and clients"; the docs map Node `net` → "bare-net / bare-tcp". **bare-tcp** (which our platform uses) is missing from the catalog. | bare-net README; docs Node.js compatibility table | [C] |
| "bare-fs … Core operations: …" | Still right; the reference also has `cp`, `rm`, `opendir`, `statfs`, `mkdtemp`, `readv`/`writev`, `truncate`, `utimes`, and `bare-fs/promises`. | docs bare-fs reference (v4.8.4) | [C] |
| "Additional Notable Modules" table | Still valid; missing modules a reader now needs: **bare-tcp**, **bare-pipe**, **bare-hrtime**, **bare-thread**, **bare-runtime**, **bare-node** (bare-node-* wrappers), bare-utils, bare-performance, bare-abort-controller, bare-sqlite, bare-wasi / bare-wasm / bare-directory (experimental), bare-type-stripper, bare-compat-napi, bare-kit, bare-build, bare-pack. | docs modules catalog | [C] |
| "Module npm versions change often — check … `npm view`" | Fine. | — | — |

## platforms.md — claims needing change

| Current text | True now | Source | Mark |
|---|---|---|---|
| macOS "arm64, x64 — >= 12.0" | **>= 13.0** (1.34.1, 2026-09-30: "Bump minimum macOS version to 13"). | Bare README; v1.34.1 notes | [C] |
| iOS "arm64, x64 (simulator) — >= 14.0" | **>= 15.0** (1.34.1). | same | [C] |
| Windows "arm64, x64 — >= 10" | arm64 **>= Windows 11**, x64 >= Windows 10 — already so in v1.28.5. | Bare README (main, v1.28.5) | [C] |
| Linux, Android rows | Unchanged. | Bare README | [C] |
| Compile options (3) | Add `BARE_ENGINE_SHARED` (default OFF; 1.35.0). `BARE_ENGINE` default is `github:holepunchto/libjs`. README warns options are "not covered by semantic versioning". New `--sanitize` flag for `bare-make generate`. Runtime env var `BARE_USE_IO_URING` (1.28.6). | Bare README; v1.35.0, v1.28.6 notes | [C]; what `BARE_USE_IO_URING` does [U] |
| Embedding (C API) | Still right. New: `bare_poll()` for host-owned loops, `bare_attach()`/`bare_detach()` (1.34.0), embedder context `bare_context_set/get()` (1.33.0), `bare_seal()` (1.32.0), `bare_version()`. Static linking needs whole-archive linking. | Bare README; docs runtime reference | [C] |
| Mobile embedding examples: bare-android, bare-ios | Both repos still exist (not archived). The docs now point to **bare-kit** (worklets and IPC for iOS/Android), **react-native-bare-kit**, bare-expo, bare-native. | GitHub; docs modules catalog § Native development kits | [C] |

## sources.md — claims needing change

| Current text | True now | Source | Mark |
|---|---|---|---|
| "Bare overview — docs.pears.com/reference/bare-overview" | Lands on Pear "Runtime and languages". Use https://docs.pears.com/bare/explanation/bare-runtime/ (Inside Bare) or https://docs.pears.com/bare/ | curl final URL/canonical | [C] |
| "Node.js compat — docs.pears.com/reference/node-compat" | Same page as above. Use https://docs.pears.com/bare/reference/bare/modules/#nodejs-compatibility and https://docs.pears.com/bare/explanation/migrating-from-nodejs/ | same | [C] |
| "API reference — docs.pears.com/reference/api" | Now the Pear API. Use https://docs.pears.com/bare/reference/bare/runtime/ | same | [C] |
| "UDX (UDP) — github.com/holepunchto/udx-native" | No longer a bare-dgram dependency from 1.1.0; keep only if wanted for Hyperswarm context. | npm bare-dgram | [C] |
| "Primary Sources" | Add bare-node (https://github.com/holepunchto/bare-node), bare-runtime (https://github.com/holepunchto/bare-runtime), `src/bare.d.ts`, `docs/threat-model.md`, release notes (https://github.com/holepunchto/bare/releases). | — | [C] repos exist |
| Update loop over modules | Still works; add bare-runtime, bare-tcp. | — | — |

---

## Confirmed still correct (brief)

- Bare's self-description, the three runtime additions, libuv, `npm i -g bare`,
  Tier 1/2 model, Linux/Android minimums, build steps and outputs [C] README.
- Lifecycle methods and events (`uncaughtException` … `resume`); `Bare.IPC`
  Duplex-or-null; `Thread.isMainThread`, `Thread.self`, `join/suspend/resume/terminate` [C] bare.d.ts.
- `imports` field with `bare`/`default` conditions; `#` optional; conditions
  table and order; `exports` forms; `engines` field; `.bundle` and `.bare` [C]
  bare-module README.
- `require(x, { with: { imports: 'bare-node-runtime/imports' } })` usage [C] README.
- bare-process/global; bare-os `pid()`/`cwd()` as functions; bare-tty
  `new tty.WriteStream(1)`; bare-readline `data` events; bare-http1
  HTTP/1 only; bare-path posix/win32 [C] READMEs / references.
- All GitHub repo links on the pages resolve (none archived) — see link list.
- Internal link `/engineering/infrastructure/bare-for-pear/` exists [C] repo.

## Proposed new material (brief, sourced)

- **Install and packaging**: `bare` launcher vs `bare-runtime` binary
  packages; `bare-runtime/spawn` sets executable permission. Our platform
  saw "npm leaves the runtime without its exec bit" and pins
  `bare-runtime` 1.36.0. [C] bare-runtime README; docs CLI page.
- **Porting routes** (dual-runtime): the three routes plus library import
  maps, with the bare-node alias example and `node:` resolution. [C] docs.
- **Ambient globals** list (Buffer, console, URL, URLSearchParams, timers,
  queueMicrotask, structuredClone; `__dirname`/`__filename` in CJS). Docs
  warn: "Which globals are ambient can shift between Bare releases (this
  reflects Bare v1.35.0)". [C] docs "Migrating from Node.js".
- **Security**: `Addon.seal()`, threat model, five embedder duties
  ("check what the addons you load add up to, hand on only what you mean
  to, keep untrusted code away from the shared intrinsics, use an OS
  sandbox, and seal early and every process"). [C] docs runtime reference.
  bare.pears.com links a pentest report
  (`/SecfaultSecurity_Report_Holepunch_Bare_Pentest_v1.0.pdf`) — not opened [U].
- **WebAssembly addons via WASI** (1.36.0, experimental modules bare-wasi,
  bare-wasm-abi, bare-directory): `require('bare-sqlite', { with: { host: 'wasi-wasm32', wasi: './wasi.js' } })`. [C] v1.36.0 notes.
- **Threads**: threads no longer read files; use bare-thread / bare-bundle. [C].
- **Stability legend** in the docs catalog (stable/experimental/deprecated/unstable). [C].
- **Platform pitfalls** from our own use (observations, not upstream):
  console.log not via `process.stdout`; `spawnSync` without timeout and
  hanging with `input`; env refuses `delete`; `"type"` read per folder;
  `readdirSync` unsorted; bare-fetch no HTTPS proxy; brittle quirks. Checks:
  bare-fetch docs (v3.4.1) document an `agent` option but nothing on proxies
  [C]; bare-env docs say "Reads, writes, delete, and key enumeration are
  forwarded" — conflicts with the platform's "refuses `delete`" (see open
  checks). These would fit bare-for-pear better than the reference pages.

## Broken or moved links

| Link on page(s) | Status |
|---|---|
| https://docs.pears.com/reference/bare-overview (sources) | 301 → serves `/pear/explanation/runtime-and-languages/` — moved, wrong target |
| https://docs.pears.com/reference/node-compat (sources) | same as above |
| https://docs.pears.com/reference/api (global-api, sources) | serves `/pear/reference/pear/api/` — Pear, not Bare |
| github.com/holepunchto/* repo links (bare, bare-module, bare-node-runtime, libjs, udx-native, bare-android, bare-ios, all module repos) | 200, none archived (bare-daemon timed out once, 200 on retry) |
| github.com/libuv/libuv, github.com/mafintosh/streamx | 200 |

Upstream (not ours): bare-module README links `github.com/holepunchto/bare#bareplatform`
and bare-runtime README links `bare#usage` — those anchors went when the
README API docs moved to bare.d.ts (1.35.0). bare.pears.com's "Try Bare"
still points to the moved `/reference/bare-overview`, and its thread
example uses the deprecated `new Thread(import.meta.url, { data })` form. [C]

## Open checks

- How TypeScript modules are detected (extensions, `.ts`/`.mts`) — release
  note only; PR #155 has no description. [U]
- Whether `require('stream/consumers')` through bare-node-runtime fails,
  given bare-stream has no `./consumers` export. [U]
- bare-env `delete`: docs say forwarded; platform says refused. Which
  module/version did the platform hit (bare-process `env` vs bare-env)? [U]
- When the thread no-disk-read behaviour began (1.32 vs 1.33). [U]
- `wasi` mapping: docs vs bare-node-runtime vs bare-node disagree; ask
  which reflects intent before stating it. [C] that they disagree.
- Pentest report content. [U]

## Blocked sources

- GitHub REST API (`api.github.com`) hit the unauthenticated rate limit
  partway through (403-style JSON), so commit history for bare-crypto and
  per-file history were not read; release notes for bare and bare-module,
  and commits for bare-node-runtime and bare-module-resolve, were read
  before that. Retry later or open in a browser (low priority; no page claim rests on them alone):
  - https://github.com/holepunchto/bare-crypto/commits/main
  - https://github.com/holepunchto/bare-dns/commits/main
  - https://github.com/holepunchto/bare/pull/155 (TypeScript; no description)
- https://bare.pears.com/SecfaultSecurity_Report_Holepunch_Bare_Pentest_v1.0.pdf — not fetched (PDF).
- bare-module release pages have no notes (empty bodies), so v7 changes
  were read off the README diff (v6.1.3 vs main) instead.
