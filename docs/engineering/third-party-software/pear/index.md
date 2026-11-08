---
layout: default
lastmod: 2026-11-08
title: "Pear"
description: "Pear is Holepunch's P2P runtime and deployment platform. Since Pear v3 (July 2026) the runtime is the embeddable pear-runtime library (Pear OTA) and the pear CLI does deployment and installation."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > Pear

# Pear

Pear is Holepunch's peer-to-peer **runtime, development and deployment** platform for desktop, mobile and terminal apps. It builds on [Bare](/engineering/third-party-software/bare/) and the [P2P building blocks](/engineering/third-party-software/p2p/). Apps are distributed over the peer-to-peer network: a build is staged into a [Hyperdrive](/engineering/third-party-software/p2p/hyperdrive/), and running apps take **over-the-air (OTA) updates** from it.

Upstream moves fast; the [Release Overview](https://docs.pears.com/pear/release-overview/) is the current truth.

---

## Current form: Pear v3

Pear v3 (July 2026) finished the move away from the original `pear run` model:

- **`pear run` is removed**, with `pear release`, `pear init`, `presets`, `shift` and `drop`. The global `Pear` API went with `pear run`; the Pear API page is kept in the docs for reference only.
- **The runtime is a library.** It lives in the embeddable [`pear-runtime`](/engineering/third-party-software/pear/pear-runtime/), which the docs now call **Pear OTA**. An app embeds it instead of being launched by the CLI.
- **The CLI does deployment and installation.** From v3 it is a standalone binary that keeps itself up to date over the air.
- **The v2 module split is gone.** `pear-electron`, `pear-bridge`, `pear-run`, `pear-message` and `pear-updates` are archived. The desktop template, `hello-pear-electron`, uses `pear-runtime` directly.

Apps still on `pear run` need migrating: the [migration guide](https://docs.pears.com/pear/how-to/operate-an-app/migration/) covers the move to Pear OTA.

---

## Embedding and boilerplates

Upstream gives one boilerplate per kind of app:

- **Desktop:** `hello-pear-electron` — Electron as a thin shell around a Bare worker running `pear-runtime`.
- **Mobile:** `pear-mobile` with `pear-runtime-react-native` and `hello-pear-react-native` (announced 15 September 2026). OTA covers the JavaScript bundle; native code still goes through the app stores.
- **Terminal:** [`hello-pear-bare`](https://github.com/holepunchto/hello-pear-bare) embeds `pear-runtime` in the Bare worker of a Bare CLI, with P2P OTA updates and standalone distributables built with `bare-build`; `hello-pear-daemon` runs the updater as a detached daemon for short-lived CLIs.
- **Shared local backend:** `hello-pear-worker`.

See [pear-runtime](/engineering/third-party-software/pear/pear-runtime/) for the library's API.

---

## CLI

The `pear` CLI is at **v3.6.0** (15 October 2026; `v3.7.0-rc.0` tagged), with about 19 commands: `touch`, `build`, `stage`, `provision`, `multisig`, `seed`, `install`, `blind-peer`, `blind-relay`, `changelog`, `info`, `dump`, `cores`, `data`, `sidecar`, `identity`, `gc`, `versions` and `help`.

The deployment flow:

1. `pear touch` — allocate a Pear link (stored as `upgrade` in `package.json`).
2. `pear build` — a deployment folder with per-architecture artifacts.
3. `pear stage` — for previews only, not production.
4. `pear provision` + `pear multisig` — the production release, quorum-signed.
5. `pear seed` — keep it available.

`pear install <link>` installs an app. From 3.4.0 the CLI also runs Holepunch's own blind peer and blind relay (`pear blind-peer`, `pear blind-relay`). See the [CLI reference](https://docs.pears.com/pear/reference/pear/cli/) rather than a mirror here.

## See Also
- Docs: [docs.pears.com](https://docs.pears.com/) (Pear, P2P and Bare tabs) — [Release Overview](https://docs.pears.com/pear/release-overview/) · [CLI reference](https://docs.pears.com/pear/reference/pear/cli/) · [migration guide](https://docs.pears.com/pear/how-to/operate-an-app/migration/)
- Repo: [github.com/holepunchto/pear](https://github.com/holepunchto/pear)
- Embeddable library: [github.com/holepunchto/pear-runtime](https://github.com/holepunchto/pear-runtime) · npm `pear-runtime`
- Mobile: [github.com/holepunchto/pear-mobile](https://github.com/holepunchto/pear-mobile) · [announcement](https://pears.com/blog/pear-mobile-deploy-p2p-ota-updates-to-react-native-apps)
- Boilerplates: [Hello Pear Boilerplates](https://pears.com/blog/hello-pear-boilerplates)
- Announcement of the transition: [Pear Evolution](https://pears.com/blog/pear-evolution)
