---
layout: default
lastmod: 2026-11-08
title: "pear-runtime"
description: "pear-runtime (Pear OTA in the docs) embeds Pear's P2P runtime as a library: Bare workers, storage and P2P OTA updates, without the pear CLI. MVP and experimental."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [Pear](/engineering/third-party-software/pear/) > pear-runtime

# pear-runtime

`pear-runtime` lets a host app **embed Pear's P2P runtime as a library**: running Bare workers, giving the app its storage, and taking P2P over-the-air updates. Since Pear v3 (July 2026) it is how Pear apps run: `pear run` is removed (see the [Pear](/engineering/third-party-software/pear/) overview). The docs now call it **Pear OTA**; the package name stays `pear-runtime`. It builds on [Bare](/engineering/third-party-software/bare/) and uses Corestore, Hyperswarm and [Hyperdrive](/engineering/third-party-software/p2p/hyperdrive/) underneath.

> **MVP and experimental.** npm is at `1.3.1` (1 July 2026), and the README still says "MVP - EXPERIMENTAL". Its "Making updates" section is headed "VERY EXPERIMENTAL, MOST DEFINITELY WILL CHANGE." Pin a version and treat the API as moving.

Supported on macOS, Linux and Windows. For mobile, the sibling is `pear-mobile` (with `pear-runtime-react-native`).

---

## Core API

See the [README](https://github.com/holepunchto/pear-runtime) and the [runtime reference](https://docs.pears.com/pear/reference/pear/runtime/) for full detail.

- `const pear = new PearRuntime(opts)`:
  - required: `dir` (data storage), `upgrade` (the Pear link), `name`;
  - optional: `version`; `app` (the bundle path, used when applying an update); `bundled` (defaults to whether `app` is set); `updates` (`false` to opt out); `storage` (defaults to `<dir>/app-storage`); `delay` (a random delay before fetching, default one hour); `skipUpdate` (an async predicate); a custom `store` and `swarm`, passed together.
- `await pear.ready()` — init complete.
- `PearRuntime.run(path, args, opts)` — a static method (`pear.run` is an alias) that launches a Bare worker. From Node.js or Electron it spawns a child process through `bare-sidecar`, with stdio on `IPC.stdin`, `IPC.stdout` and `IPC.stderr`; from inside Bare it starts a `bare-worker` thread, where those streams are undefined.
- `pear.storage` — the recommended app-data location.
- `await pear.close()` — graceful shutdown, OTA cleanup included.

---

## OTA updates

Updates come from `pear.updater`, a [`pear-runtime-updater`](https://www.npmjs.com/package/pear-runtime-updater) instance (npm `3.4.0`). Its events run `update-scheduled` → `updating` (with `updating-progress`) → `updated`; `pear.updater.applyUpdate()` applies the update, which swaps paths on disk so the next process start runs the new code.

The release side is CLI-driven: `pear touch` allocates the Pear link (stored as `upgrade` in `package.json`), `pear build` makes the deployment folder, `pear stage` publishes previews, and `pear provision` with `pear multisig` makes the production release, kept available with `pear seed`.

For a desktop app, `hello-pear-electron` runs `pear-runtime` inside a Bare worker with Electron as a thin shell. For a terminal app, `hello-pear-bare` embeds it in the Bare worker of a Bare CLI; `hello-pear-daemon` runs the updater as a detached daemon.

## See Also
- Repo: [github.com/holepunchto/pear-runtime](https://github.com/holepunchto/pear-runtime)
- Docs: [runtime reference](https://docs.pears.com/pear/reference/pear/runtime/) · [Release Overview](https://docs.pears.com/pear/release-overview/)
- npm: `pear-runtime` (experimental; pin a version) · updater: `pear-runtime-updater`
- Boilerplates: [hello-pear-bare](https://github.com/holepunchto/hello-pear-bare) · [Hello Pear Boilerplates](https://pears.com/blog/hello-pear-boilerplates)
- Context: [Pear Evolution](https://pears.com/blog/pear-evolution)
