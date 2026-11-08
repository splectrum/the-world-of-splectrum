---
layout: default
lastmod: 2026-11-08
title: "Bare Module Catalog"
description: "Catalog of Bare ecosystem npm modules with Node.js equivalents and versions, covering filesystem, networking, core, process, and the module system."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [Bare Runtime](/engineering/third-party-software/bare/) > Module Catalog

# Bare Module Catalog

All modules available via npm; versions as of
2026-11-08. Bare's documentation keeps a full catalog,
with a stability mark for each module, at
[docs.pears.com/bare/reference/bare/modules](https://docs.pears.com/bare/reference/bare/modules/).
Streams throughout
the ecosystem are [streamx](https://github.com/mafintosh/streamx)-based, not Node.js
streams — this is the most significant API
difference.

---

## Filesystem and Paths

| Module | Node.js equiv | npm | Source |
|--------|--------------|-----|--------|
| bare-fs | fs | 4.8.4 | [holepunchto/bare-fs](https://github.com/holepunchto/bare-fs) |
| bare-path | path | 3.1.2 | [holepunchto/bare-path](https://github.com/holepunchto/bare-path) |

**bare-fs** closely follows Node.js `fs`. Supports
async, callback, and sync variants. Core operations:
open, close, read, write, stat, lstat, fstat,
access, exists, mkdir, rmdir, unlink, rename,
readdir, readFile, writeFile, appendFile, copyFile,
chmod, fchmod, symlink, readlink, realpath, watch,
createReadStream, createWriteStream; also cp, rm,
opendir, statfs, mkdtemp, readv/writev, truncate,
utimes, and a `bare-fs/promises` subpath. Streams are
streamx-based.

**bare-path** mirrors Node.js `path`: join, resolve,
basename, dirname, extname, etc. Includes
`path/posix` and `path/win32` subpaths.

---

## Networking

| Module | Node.js equiv | npm | Source |
|--------|--------------|-----|--------|
| bare-net | net | 2.3.3 | [holepunchto/bare-net](https://github.com/holepunchto/bare-net) |
| bare-http1 | http | 4.6.3 | [holepunchto/bare-http1](https://github.com/holepunchto/bare-http1) |
| bare-https | https | 3.1.0 | [holepunchto/bare-https](https://github.com/holepunchto/bare-https) |
| bare-dns | dns | 2.3.1 | [holepunchto/bare-dns](https://github.com/holepunchto/bare-dns) |
| bare-dgram | dgram | 1.1.1 | [holepunchto/bare-dgram](https://github.com/holepunchto/bare-dgram) |
| bare-tls | tls | 3.2.0 | [holepunchto/bare-tls](https://github.com/holepunchto/bare-tls) |
| bare-tcp | net (TCP) | 2.6.1 | [holepunchto/bare-tcp](https://github.com/holepunchto/bare-tcp) |

**bare-net** provides TCP and IPC servers and
clients: `net.createServer()`, `net.createConnection()`.
Streams are streamx-based. **bare-tcp** is the TCP
layer on its own; Bare's documentation maps Node.js
`net` to bare-net or bare-tcp.

**bare-http1** maps to Node.js `http` (not `http1`).
`http.createServer()`, `http.request()` pattern.
Only HTTP/1.x — no HTTP/2.

**bare-tls** (BoringSSL) has a low-level `Socket`
class that wraps any duplex stream with TLS
(`new tls.Socket(stream, options)`), and higher-level
`tls.connect()` and `tls.createServer()` for TLS over
TCP, similar to Node.js `tls`. Mozilla's root
certificates are bundled.

**bare-dgram** is a native addon over libuv UDP since
1.1.0 (before that it was built on
[UDX](https://github.com/holepunchto/udx-native)).

**bare-dns** provides `dns.lookup(hostname, cb)`, a
resolver (`dns.resolve`, `resolve4`, `resolve6`,
`resolveMx` and the other record types), and a
`dns/promises` subpath.

---

## Core

| Module | Node.js equiv | npm | Source |
|--------|--------------|-----|--------|
| bare-buffer | buffer | 3.7.1 | [holepunchto/bare-buffer](https://github.com/holepunchto/bare-buffer) |
| bare-events | events | 2.9.2 | [holepunchto/bare-events](https://github.com/holepunchto/bare-events) |
| bare-stream | stream | 2.13.4 | [holepunchto/bare-stream](https://github.com/holepunchto/bare-stream) |
| bare-crypto | crypto | 1.15.4 | [holepunchto/bare-crypto](https://github.com/holepunchto/bare-crypto) |
| bare-zlib | zlib | 1.4.1 | [holepunchto/bare-zlib](https://github.com/holepunchto/bare-zlib) |

**bare-buffer** same API surface as Node.js Buffer:
`Buffer.from()`, `Buffer.alloc()`,
`Buffer.allocUnsafe()`, `Buffer.concat()`. Bare
installs it as the global `Buffer` at startup.

**bare-events** standard EventEmitter: `on`, `emit`,
`once`, `off`, `removeListener`, `removeAllListeners`.

**bare-stream** based on streamx. Readable, Writable,
Duplex, Transform exist but with streamx semantics.
Also provides `stream/promises` and `stream/web`
subpaths (no `stream/consumers`).

**bare-crypto** is a subset of Node.js crypto:
- Hash: MD5, SHA-1, SHA-256, SHA-384, SHA-512,
  BLAKE2b-256, RIPEMD-160
- Cipher: AES-128/256 (ECB/CBC/CTR/OFB/GCM),
  ChaCha20-Poly1305, XChaCha20-Poly1305
- `createHash`, `createHmac`, `createCipheriv`,
  `createDecipheriv`, `randomBytes`, `randomFill`,
  `randomUUID`, `pbkdf2`, `timingSafeEqual`
- Ed25519 `generateKeyPair`, `sign` and `verify`
  (since 1.15)
- A `webcrypto` subset (`bare-crypto/web`): HMAC,
  Ed25519, PBKDF2, the SHA family
- Not available: scrypt, DiffieHellman, X509, RSA
  and ECDSA

**bare-zlib** stream-based compression/decompression.
Streamx-based.

---

## Process and System

| Module | Node.js equiv | npm | Source |
|--------|--------------|-----|--------|
| bare-process | process | 4.5.1 | [holepunchto/bare-process](https://github.com/holepunchto/bare-process) |
| bare-env | (process.env) | 3.0.1 | [holepunchto/bare-env](https://github.com/holepunchto/bare-env) |
| bare-os | os | 3.9.4 | [holepunchto/bare-os](https://github.com/holepunchto/bare-os) |
| bare-tty | tty | 5.2.2 | [holepunchto/bare-tty](https://github.com/holepunchto/bare-tty) |
| bare-readline | readline | 1.3.1 | [holepunchto/bare-readline](https://github.com/holepunchto/bare-readline) |

**bare-process** provides familiar `process` object.
Not globally available. Use
`require('bare-process/global')` to install globally.

**bare-env** returns environment variables object.
Standalone module, not on `process`.

**bare-os** comprehensive, closely follows Node.js.
Note: `pid()` and `cwd()` are methods (called with
parentheses) not properties as in Node.js.

**bare-tty** provides WriteStream and ReadStream.
Constructor takes fd directly:
`new tty.WriteStream(1)` for stdout. Streamx-based.

**bare-readline** uses
`readline.createInterface({ input, output })`.
Emits `data` events (not `line` events as Node.js).

---

## Module System

| Module | Purpose | npm | Source |
|--------|---------|-----|--------|
| bare-module | Module resolution | 7.5.0 | [holepunchto/bare-module](https://github.com/holepunchto/bare-module) |
| bare-node-runtime | Node.js compat layer | 1.5.4 | [holepunchto/bare-node-runtime](https://github.com/holepunchto/bare-node-runtime) |
| bare-node | `bare-node-*` alias wrappers (`fs@npm:bare-node-fs`, ...) | per wrapper | [holepunchto/bare-node](https://github.com/holepunchto/bare-node) |
| bare-runtime | The Bare binary, as npm packages per platform | 1.36.0 | [holepunchto/bare-runtime](https://github.com/holepunchto/bare-runtime) |

See [Module System](/engineering/third-party-software/bare/module-system/) and
[Dual-Runtime Config](/engineering/third-party-software/bare/dual-runtime/) for details.

---

## Additional Notable Modules

| Module | Description | Source |
|--------|-------------|--------|
| bare-subprocess | Process spawning (child_process) | [holepunchto/bare-subprocess](https://github.com/holepunchto/bare-subprocess) |
| bare-hrtime | High-resolution time | [holepunchto/bare-hrtime](https://github.com/holepunchto/bare-hrtime) |
| bare-thread | Threads from a module graph (bundles it for `Bare.Thread`) | [holepunchto/bare-thread](https://github.com/holepunchto/bare-thread) |
| bare-timers | setTimeout, setInterval | [holepunchto/bare-timers](https://github.com/holepunchto/bare-timers) |
| bare-url | WHATWG URL | [holepunchto/bare-url](https://github.com/holepunchto/bare-url) |
| bare-fetch | WHATWG Fetch | [holepunchto/bare-fetch](https://github.com/holepunchto/bare-fetch) |
| bare-ws | WebSocket | [holepunchto/bare-ws](https://github.com/holepunchto/bare-ws) |
| bare-worker | Worker threads | [holepunchto/bare-worker](https://github.com/holepunchto/bare-worker) |
| bare-rpc | librpc-compatible RPC | [holepunchto/bare-rpc](https://github.com/holepunchto/bare-rpc) |
| bare-bundle | Application bundles | [holepunchto/bare-bundle](https://github.com/holepunchto/bare-bundle) |
| bare-console | WHATWG console | [holepunchto/bare-console](https://github.com/holepunchto/bare-console) |
| bare-channel | Inter-thread messaging | [holepunchto/bare-channel](https://github.com/holepunchto/bare-channel) |
| bare-atomics | Synchronization primitives | [holepunchto/bare-atomics](https://github.com/holepunchto/bare-atomics) |
| bare-daemon | Daemon process management | [holepunchto/bare-daemon](https://github.com/holepunchto/bare-daemon) |
| bare-inspector | V8 inspector | [holepunchto/bare-inspector](https://github.com/holepunchto/bare-inspector) |
| bare-repl | REPL environment | [holepunchto/bare-repl](https://github.com/holepunchto/bare-repl) |
| bare-signals | Signal handling | [holepunchto/bare-signals](https://github.com/holepunchto/bare-signals) |
| bare-encoding | TextEncoder/TextDecoder | [holepunchto/bare-encoding](https://github.com/holepunchto/bare-encoding) |
| bare-structured-clone | Structured cloning | [holepunchto/bare-structured-clone](https://github.com/holepunchto/bare-structured-clone) |
| bare-zmq | ZeroMQ bindings | [holepunchto/bare-zmq](https://github.com/holepunchto/bare-zmq) |
| bare-kit | Bare worklets and IPC for iOS and Android | [holepunchto/bare-kit](https://github.com/holepunchto/bare-kit) |
| bare-compat-napi | Node-API-compatible headers for building addons | [holepunchto/bare-compat-napi](https://github.com/holepunchto/bare-compat-napi) |
| brittle | Test runner for Bare and Node.js | [holepunchto/brittle](https://github.com/holepunchto/brittle) |

---

Module npm versions change often — check the latest
with `npm view <module> version`.

