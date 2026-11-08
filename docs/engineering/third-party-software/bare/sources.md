---
layout: default
lastmod: 2026-11-08
title: "Documentation Sources"
description: "External references for the Bare runtime ecosystem: primary repos, the Bare documentation on docs.pears.com, key dependencies, module repositories, and how to check for npm updates."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [Bare Runtime](/engineering/third-party-software/bare/) > Sources

# Documentation Sources

All external references for the Bare runtime
ecosystem. Use these to verify information and
check for updates.

---

## Primary Sources

| Resource | URL |
|----------|-----|
| Bare runtime | [github.com/holepunchto/bare](https://github.com/holepunchto/bare) |
| Module system | [github.com/holepunchto/bare-module](https://github.com/holepunchto/bare-module) |
| Node.js compat | [github.com/holepunchto/bare-node-runtime](https://github.com/holepunchto/bare-node-runtime) |
| Node.js alias wrappers | [github.com/holepunchto/bare-node](https://github.com/holepunchto/bare-node) |
| Runtime binaries | [github.com/holepunchto/bare-runtime](https://github.com/holepunchto/bare-runtime) |
| API (type declarations) | [bare/src/bare.d.ts](https://github.com/holepunchto/bare/blob/main/src/bare.d.ts) |
| Threat model | [bare/docs/threat-model.md](https://github.com/holepunchto/bare/blob/main/docs/threat-model.md) |
| Release notes | [github.com/holepunchto/bare/releases](https://github.com/holepunchto/bare/releases) |

## Bare Documentation (docs.pears.com)

Bare's documentation moved to its own part of
docs.pears.com; module READMEs now point to their
reference pages there.

| Resource | URL |
|----------|-----|
| Bare documentation | [docs.pears.com/bare](https://docs.pears.com/bare/) |
| Inside Bare | [docs.pears.com/bare/explanation/bare-runtime](https://docs.pears.com/bare/explanation/bare-runtime/) |
| Migrating from Node.js | [docs.pears.com/bare/explanation/migrating-from-nodejs](https://docs.pears.com/bare/explanation/migrating-from-nodejs/) |
| Module catalog and Node.js compatibility | [docs.pears.com/bare/reference/bare/modules](https://docs.pears.com/bare/reference/bare/modules/#nodejs-compatibility) |
| Runtime API | [docs.pears.com/bare/reference/bare/runtime](https://docs.pears.com/bare/reference/bare/runtime/) |
| CLI | [docs.pears.com/bare/reference/bare/cli](https://docs.pears.com/bare/reference/bare/cli/) |

## Key Dependencies

| Resource | URL |
|----------|-----|
| libjs (engine-independent bindings) | [github.com/holepunchto/libjs](https://github.com/holepunchto/libjs) |
| libuv (event loop) | [github.com/libuv/libuv](https://github.com/libuv/libuv) |
| streamx (streams) | [github.com/mafintosh/streamx](https://github.com/mafintosh/streamx) |
| UDX (UDP; used by the P2P stack, no longer by bare-dgram) | [github.com/holepunchto/udx-native](https://github.com/holepunchto/udx-native) |

## Module Repositories

### Filesystem and Paths
- bare-fs: [github.com/holepunchto/bare-fs](https://github.com/holepunchto/bare-fs)
- bare-path: [github.com/holepunchto/bare-path](https://github.com/holepunchto/bare-path)

### Networking
- bare-net: [github.com/holepunchto/bare-net](https://github.com/holepunchto/bare-net)
- bare-http1: [github.com/holepunchto/bare-http1](https://github.com/holepunchto/bare-http1)
- bare-https: [github.com/holepunchto/bare-https](https://github.com/holepunchto/bare-https)
- bare-dns: [github.com/holepunchto/bare-dns](https://github.com/holepunchto/bare-dns)
- bare-dgram: [github.com/holepunchto/bare-dgram](https://github.com/holepunchto/bare-dgram)
- bare-tls: [github.com/holepunchto/bare-tls](https://github.com/holepunchto/bare-tls)
- bare-tcp: [github.com/holepunchto/bare-tcp](https://github.com/holepunchto/bare-tcp)

### Core
- bare-buffer: [github.com/holepunchto/bare-buffer](https://github.com/holepunchto/bare-buffer)
- bare-events: [github.com/holepunchto/bare-events](https://github.com/holepunchto/bare-events)
- bare-stream: [github.com/holepunchto/bare-stream](https://github.com/holepunchto/bare-stream)
- bare-crypto: [github.com/holepunchto/bare-crypto](https://github.com/holepunchto/bare-crypto)
- bare-zlib: [github.com/holepunchto/bare-zlib](https://github.com/holepunchto/bare-zlib)

### Process and System
- bare-process: [github.com/holepunchto/bare-process](https://github.com/holepunchto/bare-process)
- bare-env: [github.com/holepunchto/bare-env](https://github.com/holepunchto/bare-env)
- bare-os: [github.com/holepunchto/bare-os](https://github.com/holepunchto/bare-os)
- bare-tty: [github.com/holepunchto/bare-tty](https://github.com/holepunchto/bare-tty)
- bare-readline: [github.com/holepunchto/bare-readline](https://github.com/holepunchto/bare-readline)

### Additional
- bare-subprocess: [github.com/holepunchto/bare-subprocess](https://github.com/holepunchto/bare-subprocess)
- bare-hrtime: [github.com/holepunchto/bare-hrtime](https://github.com/holepunchto/bare-hrtime)
- bare-thread: [github.com/holepunchto/bare-thread](https://github.com/holepunchto/bare-thread)
- bare-timers: [github.com/holepunchto/bare-timers](https://github.com/holepunchto/bare-timers)
- bare-url: [github.com/holepunchto/bare-url](https://github.com/holepunchto/bare-url)
- bare-fetch: [github.com/holepunchto/bare-fetch](https://github.com/holepunchto/bare-fetch)
- bare-ws: [github.com/holepunchto/bare-ws](https://github.com/holepunchto/bare-ws)
- bare-worker: [github.com/holepunchto/bare-worker](https://github.com/holepunchto/bare-worker)
- bare-rpc: [github.com/holepunchto/bare-rpc](https://github.com/holepunchto/bare-rpc)
- bare-bundle: [github.com/holepunchto/bare-bundle](https://github.com/holepunchto/bare-bundle)
- bare-console: [github.com/holepunchto/bare-console](https://github.com/holepunchto/bare-console)
- bare-channel: [github.com/holepunchto/bare-channel](https://github.com/holepunchto/bare-channel)
- bare-atomics: [github.com/holepunchto/bare-atomics](https://github.com/holepunchto/bare-atomics)
- bare-daemon: [github.com/holepunchto/bare-daemon](https://github.com/holepunchto/bare-daemon)
- bare-inspector: [github.com/holepunchto/bare-inspector](https://github.com/holepunchto/bare-inspector)
- bare-repl: [github.com/holepunchto/bare-repl](https://github.com/holepunchto/bare-repl)
- bare-signals: [github.com/holepunchto/bare-signals](https://github.com/holepunchto/bare-signals)
- bare-encoding: [github.com/holepunchto/bare-encoding](https://github.com/holepunchto/bare-encoding)
- bare-structured-clone: [github.com/holepunchto/bare-structured-clone](https://github.com/holepunchto/bare-structured-clone)
- bare-zmq: [github.com/holepunchto/bare-zmq](https://github.com/holepunchto/bare-zmq)
- bare-kit: [github.com/holepunchto/bare-kit](https://github.com/holepunchto/bare-kit)
- bare-compat-napi: [github.com/holepunchto/bare-compat-napi](https://github.com/holepunchto/bare-compat-napi)
- brittle: [github.com/holepunchto/brittle](https://github.com/holepunchto/brittle)

---

## Checking for Updates

```
npm view bare version
npm view bare-fs version
npm view bare-net version
```

Or check all at once:
```
for mod in bare bare-runtime bare-fs bare-net \
  bare-tcp bare-path bare-buffer bare-events \
  bare-stream bare-crypto bare-process bare-os \
  bare-module bare-node-runtime; do
  echo "$mod: $(npm view $mod version)"
done
```
