---
layout: default
lastmod: 2026-11-08
title: "Bare Runtime Reference"
description: "Reference for the Holepunch Bare runtime: a small, modular JavaScript runtime for desktop and mobile, with no standard library, built on libuv."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > Bare Runtime

# Bare Runtime Reference

Reference for the Holepunch Bare runtime.

**Source:** [github.com/holepunchto/bare](https://github.com/holepunchto/bare)

## More Details

- [Dual-Runtime Config](/engineering/third-party-software/bare/dual-runtime/) — config
  that runs the same code on both Bare and Node.js
- [Global API](/engineering/third-party-software/bare/global-api/) — the Bare global
  namespace
- [Module Catalog](/engineering/third-party-software/bare/modules/) — all modules with
  sources and version numbers
- [Module System](/engineering/third-party-software/bare/module-system/) — resolution,
  conditions, protocols
- [Platforms](/engineering/third-party-software/bare/platforms/) — supported platforms
- [Sources](/engineering/third-party-software/bare/sources/) — all documentation links

---

## What Bare Is

Bare is a small, modular JavaScript runtime for
desktop and mobile. Like Node.js, it provides an
asynchronous, event-driven architecture built on
libuv. Unlike Node.js, it ships with no standard
library — everything is a userland module installed
via npm. This makes it minimal by design: what you
compose in is what exists.

## Installation

```
npm i -g bare
```

The `bare` package is a launcher: a Node.js script that
starts the Bare binary as a child process. The binary
itself comes in `bare-runtime-<platform>-<arch>`
packages, pulled in through the `bare-runtime` peer
dependency, with prebuilt binaries for the Tier 1
platforms. `bare-runtime` can also be installed on its
own (`npm i -g bare-runtime`); `bare-runtime/spawn`
starts the binary from code.

## Architecture

Bare is built on two dependencies:
- **libjs** — simple, ABI-stable C bindings to V8
  ([github.com/holepunchto/libjs](https://github.com/holepunchto/libjs));
  QuickJS and JavaScriptCore come through separate
  libraries implementing the same ABI (libqjs, libjsc)
- **libuv** — asynchronous I/O event loop
  ([github.com/libuv/libuv](https://github.com/libuv/libuv))

The runtime itself provides only three things:
1. A module system (CJS and ESM with bidirectional
   interop)
2. A native addon system (static and dynamic)
3. Lightweight threads with synchronous joins

Everything else — filesystem, networking, crypto,
streams — is a separately installed npm module.

Since 1.32 the runtime also has a security model:
`Bare.Addon.seal()` stops further addons from loading,
and the repository carries a threat model
(`docs/threat-model.md`).

## Key Differences from Node.js

| Aspect | Node.js | Bare |
|--------|---------|------|
| Standard library | Built-in | None. All userland. |
| `process` global | Always available | Not present. Require explicitly (`bare-process`). |
| `Buffer` global | Always available | Global (with `console`, `URL`, timers, `queueMicrotask`, `structuredClone`) |
| Module system | CJS and ESM | CJS and ESM, bidirectional interop by default |
| TypeScript | Type stripping | TypeScript modules supported (1.30) |
| Mobile support | Not a goal | Core goal. Android/iOS Tier 1, embedded through bare-kit. |
| Embedding | Difficult | Core goal. Clean C API. |
| Streams | Node.js streams | streamx-based |

## CLI

```
bare [flags] [filename] [...args]
```

| Flag | Description |
|------|-------------|
| `--version`, `-v` | Print the Bare version |
| `--eval`, `-e <script>` | Evaluate an inline script |
| `--print`, `-p <script>` | Evaluate inline and print the result |
| `--inspect` | Activate the inspector |
| `--inspect-port <port>` | Inspector port (default 9229) |
| `--expose-gc` | Expose the garbage collector |
| `--help`, `-h` | Show help |

No script — starts REPL. `--version` prints with a
leading `v`. Sending SIGUSR1 starts the inspector.

---

Checked against bare 1.36.2 (bare-runtime 1.36.0),
2026-11-08. Bare's documentation now lives at
[docs.pears.com/bare](https://docs.pears.com/bare/);
the API reference is in the repository's `src/bare.d.ts`.
Module npm versions are
tracked on the [Module Catalog](/engineering/third-party-software/bare/modules/) page.

