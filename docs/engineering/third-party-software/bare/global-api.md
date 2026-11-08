---
layout: default
lastmod: 2026-11-08
title: "Bare Global API"
description: "The Bare global namespace: properties, methods, lifecycle events, and the Thread, Addon, and IPC sub-namespaces, available without import."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [Bare Runtime](/engineering/third-party-software/bare/) > Global API

# Bare Global API

The `Bare` global is available without import. `Buffer`,
`console`, `URL`, the timers, `queueMicrotask` and
`structuredClone` are global too; there is no `process`
global (it comes from `bare-process`).

---

## Properties

- `Bare.platform` — `"linux"`, `"darwin"`,
  `"win32"`, `"android"`, `"ios"`
- `Bare.arch` — `"x64"`, `"arm64"`, `"arm"`,
  `"ia32"`, `"mips"`, `"mipsel"`, `"riscv64"`
- `Bare.simulator` — boolean, true if compiled for
  simulator (deprecated)
- `Bare.argv` — command line arguments
- `Bare.pid` — process ID
- `Bare.exitCode` — exit code (used if `exit()`
  called without argument)
- `Bare.version` — version string, with a leading `v`
- `Bare.versions` — object with dependency versions

## Methods

- `Bare.exit([code])` — immediately terminate
- `Bare.suspend([linger])` — suspend process and
  all threads (mobile lifecycle)
- `Bare.wakeup([deadline])` — wake during
  suspension for limited work
- `Bare.idle()` — immediately suspend event loop
- `Bare.resume()` — resume after suspension

From 1.36, a `linger` or `deadline` above 2147483647
throws a `RangeError`.

## Events

- `uncaughtException` — unhandled JS exception
- `unhandledRejection` — unhandled promise rejection
- `beforeExit` — loop out of work, chance to
  schedule more
- `exit` — process exiting (must not schedule work)
- `suspend` — process suspending (defer/cancel work)
- `wakeup` — waking during suspension
- `idle` — idle after suspension (loop will block)
- `resume` — resuming (restart deferred work)

## Sub-namespaces

### Bare.Thread

Lightweight threads with synchronous joins and
SharedArrayBuffer support.

- `Bare.Thread.isMainThread` — boolean
- `Bare.Thread.self` — current thread reference
- `new Bare.Thread(filename, source[, options])` —
  spawn (the form since 1.32; the callback forms and
  `Thread.create` are deprecated); a `mount` option
  since 1.35
- `thread.join()` — synchronous wait
- `thread.suspend()` / `thread.resume()` /
  `thread.wakeup()` / `thread.terminate()`
- `thread.joined`, `Thread.self.data`

A thread cannot read its file from disk: its code is
passed as source, or as a bundle for a module graph,
which [bare-thread](https://github.com/holepunchto/bare-thread)
builds.

### Bare.Addon

Native addon loading.

- `new Bare.Addon(url)` — load an addon (since 1.31;
  `Addon.resolve()`, `Addon.load()` and `Addon.cache`
  are deprecated)
- `Bare.Addon.loaded(url)` — whether an addon is loaded
  (1.35)
- `Bare.Addon.seal()` / `Bare.Addon.sealed` — stop
  further addons from loading (1.32)
- `Bare.Addon.host` — platform-arch string

### Bare.IPC

Optional streaming communication with embedder.
Returns a Duplex stream or null if not embedded.

---

**Source:**
[github.com/holepunchto/bare](https://github.com/holepunchto/bare)
(`src/bare.d.ts`, where the API documentation lives
since 1.35) and
[docs.pears.com/bare/reference/bare/runtime](https://docs.pears.com/bare/reference/bare/runtime/)

