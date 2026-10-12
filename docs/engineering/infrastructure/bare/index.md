---
layout: default
lastmod: 2026-05-29
title: "Bare Runtime Reference"
description: "Reference for the Holepunch Bare runtime: a small, modular JavaScript runtime for desktop and mobile, with no standard library, built on libuv."
---

[Home](/) > [Engineering](/engineering/) > [Infrastructure](/engineering/infrastructure/) > Bare Runtime

# Bare Runtime Reference

Reference for the Holepunch Bare runtime.

**Source:** [github.com/holepunchto/bare](https://github.com/holepunchto/bare)

## More Details

- [Dual-Runtime Config](/engineering/infrastructure/bare/dual-runtime/) — config
  that runs the same code on both Bare and Node.js
- [Global API](/engineering/infrastructure/bare/global-api/) — the Bare global
  namespace
- [Module Catalog](/engineering/infrastructure/bare/modules/) — all modules with
  sources and version numbers
- [Module System](/engineering/infrastructure/bare/module-system/) — resolution,
  conditions, protocols
- [Platforms](/engineering/infrastructure/bare/platforms/) — supported platforms
- [Sources](/engineering/infrastructure/bare/sources/) — all documentation links

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

Prebuilt binaries included for Tier 1 platforms.

## Architecture

Bare is built on two dependencies:
- **libjs** — low-level, engine-independent
  JavaScript-engine bindings; abstracts over V8,
  JavaScriptCore, and QuickJS
  ([github.com/holepunchto/libjs](https://github.com/holepunchto/libjs))
- **libuv** — asynchronous I/O event loop
  ([github.com/libuv/libuv](https://github.com/libuv/libuv))

The runtime itself provides only three things:
1. A module system (CJS and ESM with bidirectional
   interop)
2. A native addon system (static and dynamic)
3. Lightweight threads with synchronous joins

Everything else — filesystem, networking, crypto,
streams — is a separately installed npm module.

## Key Differences from Node.js

| Aspect | Node.js | Bare |
|--------|---------|------|
| Standard library | Built-in | None. All userland. |
| `process` global | Always available | Not present. Require explicitly. |
| `Buffer` global | Always available | Not present. Require explicitly. |
| Module system | CJS or ESM (one-way) | CJS and ESM (bidirectional) |
| Mobile support | Not a goal | Core goal. Android/iOS Tier 1. |
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
| `--help`, `-h` | Show help |

No script — starts REPL.

---

Checked against bare 1.28.5. Module npm versions are
tracked on the [Module Catalog](/engineering/infrastructure/bare/modules/) page.

