---
layout: default
lastmod: 2026-05-31
title: "Pear"
description: "Pear is Holepunch's P2P application runtime and deployment platform — mid-transition from the pear-run CLI to an embeddable pear-runtime library."
---

[Home](/) > [Engineering](/engineering/) > [Infrastructure](/engineering/infrastructure/) > Pear

# Pear

Pear is Holepunch's installable P2P **application runtime + dev + deployment** platform. It boots on [Bare](/engineering/infrastructure/bare/) from a minimal `boot.bundle` and pulls the rest of its code from a [Hyperdrive](/engineering/infrastructure/p2p/hyperdrive/); apps are distributed the same way, with **atomic OTA updates** (a new version is staged and the `/current` pointer is swapped). It builds on Bare + the [P2P building blocks](/engineering/infrastructure/p2p/).

---

## Mid-transition — the thing to know

> Pear is moving from the original **`pear run` CLI model** to an **embeddable `pear-runtime` library**, and from **v1 to v2**. Because this is in flight, **treat the [live docs](https://docs.pears.com/) + [migration guide](https://docs.pears.com/reference/migration) as the current truth**.

Per Holepunch's [Pear Evolution](https://pears.com/news/pear-evolution/) announcement, **`pear run` is scheduled for removal around end of June 2026**, with the `pear-runtime` library as the replacement. v2 also brings:

- **HTML → JS entrypoints.**
- The `Pear` global **decomposed into modules** (UI → `pear-electron` + `pear-bridge`; `pear-run`, `pear-message`, `pear-updates`).
- `Pear.config` → `Pear.app`.
- A compat mode (`Pear.constructor.COMPAT = true`).
- Migration via the `hello-pear-electron` boilerplate plus a transitional `pear.pre`.

No published v2 release date — v2 is upcoming; don't quote a date.

---

## The embeddable `pear-runtime` library

Lets a host app embed the P2P runtime *as a library* (run Bare workers, P2P OTA updates) instead of shelling out to the `pear` CLI. It is **self-described MVP / experimental** (npm `1.1.x`), so pin a version and treat it as moving. Semver `1.x` here does not mean stable.

How to embed it in a headless/terminal app and drive the release→update loop is an open question for us — a specific-purpose subpage will follow from POC work. → See [pear-runtime](/engineering/infrastructure/pear/pear-runtime/) for the API and current status.

---

## CLI

The `pear` CLI today carries ~14 commands (`init`, `run`, `stage`, `seed`, `release`, `touch`, `sidecar`, `versions`, and more). See the [CLI reference](https://docs.pears.com/reference/cli) rather than a mirror here.

## Sources
- Docs: [docs.pears.com](https://docs.pears.com/) — [CLI reference](https://docs.pears.com/reference/cli) · [migration guide](https://docs.pears.com/reference/migration)
- Repo: [github.com/holepunchto/pear](https://github.com/holepunchto/pear)
- Embeddable library: [github.com/holepunchto/pear-runtime](https://github.com/holepunchto/pear-runtime) · npm `pear-runtime`
- Announcement: [Pear Evolution](https://pears.com/news/pear-evolution/)
