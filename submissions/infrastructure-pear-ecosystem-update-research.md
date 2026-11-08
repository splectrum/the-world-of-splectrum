# Infrastructure: Pear and wider ecosystem, update research

Checked 2026-11-08 against upstream. The pages were written 2026-05-29/31. Marks: [C] checked against the source itself; [C, as quoted by X] second-hand; [U] unverified.

## Headline

Pear is no longer mid-transition. **Pear v3 (July 2026) finished the split.** `pear run`, `pear release` and the global `Pear` API are gone. The runtime now lives in the embeddable `pear-runtime` library, which the docs now call **"Pear OTA"**. The CLI is now a self-updating standalone binary for deployment and installation, at **v3.6.0 (2026-10-15)**. Mobile shipped in September 2026 (`pear-mobile`). Terminal apps have official boilerplates. The pages' "v1 → v2, v2 upcoming" framing was already out of date (v2.5.0 and v2.6.5 are cited in May 2026), and the v2 module list (`pear-electron`, `pear-bridge`, `pear-run`, `pear-message`, `pear-updates`) has been archived.

---

## Page: `/engineering/infrastructure/` (index.md)

**Claim needing change**

1. "Pear — the peer-to-peer application runtime and deployment platform, now an embeddable library."
   - Now: this is only half right. The *runtime* is the embeddable library (`pear-runtime`, branded "Pear OTA"). The `pear` CLI still exists and focuses on deployment and installation. Docs: "Pear is an installable peer-to-peer runtime, development, and deployment platform… for mobile, desktop, and terminal." The v3 notes say: "the runtime moves out of the CLI and into the embeddable Pear OTA (`pear-runtime`) library, and the CLI focuses on deployment and installation." pears.com sells it as "Pear Runtime & CLI" under a "Pear SDK" umbrella.
   - Sources: https://docs.pears.com/ ; https://docs.pears.com/pear/release-overview/ (section "2026-07 — Pear v3") ; https://pears.com/products/runtime-cli [C]

**Confirmed**
- P2P building blocks are "usable directly, independent of Pear". Docs: "Not tied to Pear; usable from any Bare or Node.js app." https://docs.pears.com/ [C]
- Keet is Holepunch's flagship. keet.io: "Keet is developed by Holepunch, which is backed by Tether… built on the Pear Runtime." pears.com/apps lists it first as "Official", though it labels it "by Tether". https://keet.io/ ; https://pears.com/apps [C]

---

## Page: `/engineering/infrastructure/pear/`

**Claims needing change**

1. Front matter: "mid-transition from the pear-run CLI to an embeddable pear-runtime library". The section "Mid-transition — the thing to know" says Pear is "moving… from **v1 to v2**".
   - Now: the transition is done. In Pear v3 (2026-07): "Breaking: `pear run` removed… Running it now exits with `pear run has been removed`." The CLI page has a section "Moving from Pear v2 to v3": "From v3 on, the CLI is a standalone binary that keeps itself up to date over the air through Pear OTA." v2 was already current before the page was written: Pear Evolution (28 May 2026) refers to "since Pear v2.5.0" and "From Pear v2.6.5".
   - Sources: https://docs.pears.com/pear/release-overview/ ; https://docs.pears.com/pear/reference/pear/cli/ ; https://pears.com/blog/pear-evolution [C]
2. "`pear run` is scheduled for removal around end of June 2026".
   - Now: it happened. It was removed in Pear v3 (release overview dated "2026-07"). The migration guide says: "An unmigrated app is at its end of life." https://docs.pears.com/pear/how-to/operate-an-app/migration/ [C]. I could not find the exact v3.0.0 day for the CLI. The npm bootstrap package `pear@3.0.0` was published 2026-07-14 (https://registry.npmjs.org/pear [C]), but that package has its own version line and is not the CLI release.
3. The v2 list: "HTML → JS entrypoints", "`Pear` global decomposed into modules (UI → `pear-electron` + `pear-bridge`; `pear-run`, `pear-message`, `pear-updates`)", "`Pear.config` → `Pear.app`", "compat mode", "`hello-pear-electron` plus a transitional `pear.pre`".
   - Now: all superseded. v3: "the ambient `global.Pear` API is gone with `pear run`. The Pear API page is retained for reference only." The current migration replaces `global.Pear.*` calls with `pear-runtime`, `process.*`, `app.relaunch()`, `graceful-goodbye`, and `require('./package.json').upgrade`. The repos `pear-electron`, `pear-bridge`, `pear-run`, `pear-message` and `pear-updates` are all **archived** on GitHub. `hello-pear-electron` now depends on `pear-runtime` directly, with no `pear-electron`.
   - Sources: release overview and migration guide (above) [C] ; https://pears.com/blog/pear-evolution (the "Migrating" list) [C] ; https://api.github.com/repos/holepunchto/pear-electron (and `/pear-bridge`, `/pear-run`, `/pear-message`, `/pear-updates`): `archived: true` [C] ; https://raw.githubusercontent.com/holepunchto/hello-pear-electron/HEAD/package.json [C]
4. "No published v2 release date — v2 is upcoming; don't quote a date."
   - Now: this does not hold. Current CLI releases are 3.1.0 (2026-07-30), 3.2.0 (08-12), 3.3.0 (08-24), 3.4.0 (09-10), 3.5.0 (09-22) and 3.6.0 (10-15). The GitHub tags show `v3.7.0-rc.0`.
   - Sources: https://docs.pears.com/pear/release-overview/ [C] ; https://api.github.com/repos/holepunchto/pear/tags [C]
5. Intro: "boots on Bare from a minimal `boot.bundle` and pulls the rest of its code from a Hyperdrive… a new version is staged and the `/current` pointer is swapped".
   - Now: these are v2 platform internals, and I did not find them in the current docs. Current shape: an app built with `pear build` (a deployment folder with `by-arch/` artifacts) is staged into a Hyperdrive. The embedded runtime "signals the UI, then swaps paths on disk so the next process start runs the new code". The CLI itself updates itself through Pear OTA. Whether the `boot.bundle` and `/current` mechanics survive inside the v3 CLI binary: [U].
   - Sources: https://docs.pears.com/pear/explanation/pear-desktop-architecture/ ; https://docs.pears.com/pear/reference/pear/cli/ [C]
6. "The embeddable `pear-runtime` library… npm `1.1.x`".
   - Now: npm latest is **1.3.1** (2026-07-01). 1.2.0 came out 2026-06-15 and 1.3.0 on 2026-06-24. The README still says "MVP - EXPERIMENTAL". https://registry.npmjs.org/pear-runtime ; https://github.com/holepunchto/pear-runtime [C]
7. "How to embed it in a headless/terminal app… is an open question for us".
   - Now: upstream has official terminal boilerplates. `hello-pear-bare` is described as "End-to-end boilerplate for embedding pear-runtime into the Bare worker of a Bare CLI with peer-to-peer OTA update support… standalone distributables via bare-build". `hello-pear-daemon` uses a detached updater daemon. Both were announced in "Hello Pear Boilerplates" (10 June 2026). Whether to keep the "open question for us" wording is our call; the upstream answer now exists.
   - Sources: https://github.com/holepunchto/hello-pear-bare (README) ; https://pears.com/blog/hello-pear-boilerplates [C]
8. CLI: "~14 commands (`init`, `run`, `stage`, `seed`, `release`, `touch`, `sidecar`, `versions`, and more)".
   - Now: `init`, `run`, `release`, `presets`, `shift` and `drop` are all marked removed. The current set (about 19) is `touch`, `build`, `stage`, `provision`, `multisig`, `seed`, `install`, `blind-peer`, `blind-relay`, `changelog`, `info`, `dump`, `cores`, `data`, `sidecar`, `identity`, `gc`, `versions` and `help`, plus `pear --menu` (3.2.0). Production release is now `pear provision` + `pear multisig` (quorum-signed); `pear stage` is for previews only. `pear install <link>` was added in v3.
   - Source: https://docs.pears.com/pear/reference/pear/cli/ [C]
9. Sources block: the "migration guide" and "CLI reference" links redirect (see Links below). The migration guide is now "Migrate from pear run to Pear OTA", not v1→v2.

**Confirmed**
- Repo `github.com/holepunchto/pear` is live, not archived, and was pushed 2026-11-05. Its description is now "Peer-to-Peer (P2P) Install & Deploy CLI" and its README says "Pear is Holepunch's peer-to-peer development platform." [C]
- docs.pears.com is still the docs home. Pear Evolution is still the announcement post. [C]

---

## Page: `/engineering/infrastructure/pear/pear-runtime/`

**Claims needing change**

1. "the replacement for… `pear run` (which is being removed)".
   - Now: `pear run` has been removed (v3). The docs call the library "**Pear OTA**", and the package name is still `pear-runtime`: "The embeddable OTA-update library is now branded Pear OTA in these docs; the package name stays `pear-runtime`." https://docs.pears.com/pear/release-overview/ [C]
2. "Self-described as 'most definitely will change' despite a `1.x` npm version."
   - Now: the README has "MVP - EXPERIMENTAL / This library is MVP and Experimental." The phrase "VERY EXPERIMENTAL, MOST DEFINITELY WILL CHANGE." heads only the "Making updates" section. The quote should be tied to that section. https://raw.githubusercontent.com/holepunchto/pear-runtime/main/README.md [C]
3. Core API: "required `opts`: `dir`, `upgrade`, `name`; optional `version`, custom store/swarm".
   - Now: the options are the same plus `app` (bundle path, used by `applyUpdate()`), `bundled` (defaults to `!!app`), `updates` (`false` to opt out), `storage` (defaults to `<dir>/app-storage`), `delay` (random fetch delay, default one hour) and `skipUpdate` (async predicate; needs `pear-runtime-updater` ≥3.4.0, which ships with Pear 3.3.0). `store` and `swarm` must be passed together. `PearRuntime.run` is a **static** method and `pear.run` is an alias. From Node or Electron it spawns a child process via `bare-sidecar`, with stdio on `IPC.stdin/stdout/stderr`. From inside Bare it starts a `bare-worker` thread, where those stdio streams are undefined.
   - Sources: https://docs.pears.com/pear/reference/pear/runtime/ ; README (above) [C]
4. OTA: "`pear stage` + seed publishes a version, and running instances pick it up".
   - Now: update events come from `pear.updater` (a `pear-runtime-updater` instance): `update-scheduled` → `updating` → `updated`, plus `updating-progress`, then `pear.updater.applyUpdate()`. The deployment flow is `pear touch` → `pear build` → `pear stage` (previews) → `pear provision` + `pear multisig` (production) → `pear seed`. Pear Evolution: "Use pear stage for internal previews… but not for production." `pear-runtime-updater` is at npm 3.4.0 (2026-08-14).
   - Sources: runtime reference ; https://pears.com/blog/pear-evolution ; https://registry.npmjs.org/pear-runtime-updater [C]
5. "Gotcha — two runtime surfaces… a separate `pear-electron` `Runtime().start({ bridge })` path".
   - Now: obsolete. `pear-electron` and `pear-bridge` are archived. The official Electron template (`hello-pear-electron`) uses `pear-runtime` inside a Bare worker, and the Electron main process is "a thin shell that spawns the worker". https://docs.pears.com/pear/explanation/pear-desktop-architecture/ ; GitHub API archive flags [C]
6. Missing: the README now names its mobile sibling: "See pear-mobile for Pear's embeddable runtime module for Mobile Devices." The README lists OS support as macOS, Linux and Windows. [C]

**Confirmed**
- Purpose ("Embeddable Runtime library for Pear with P2P OTA updates, Bare workers and storage APIs"), `pear.ready()`, `pear.close()`, `pear.storage`, `pear touch` and the `upgrade` field in `package.json`. [C]

---

## Page: `/engineering/infrastructure/ecosystem/`

Status was checked through the GitHub API (repo metadata) and the commits and releases Atom feeds [C, GitHub].

**Claims needing change or review**

1. **HiveRelay**: "community always-on relay / availability layer; pre-1.0, single (AI-assisted) maintainer, core-function issues open".
   - Now: active, with the last commit and release `v0.24.6` on 2026-10-27. The README repositions it as "A generic blind availability substrate for Pear/Holepunch and browser apps, packaged as Blindspark for independent operators". The stable baseline is `v0.24.4`, with release-candidate lanes `v0.26.0-rc.3` and `1.0.0-rc.1` (blind-* packages). Still pre-1.0. Context: Holepunch now ships **first-party** `blind-peer`, `blind-peering` and `blind-relay`, wired into the Pear CLI from 3.4.0 (`pear blind-peer`, `pear blind-relay`). The single-maintainer and open-issues points were not re-checked [U].
   - Sources: https://github.com/bigdestiny2/P2P-Hiverelay (README, releases.atom) ; https://docs.pears.com/pear/release-overview/ (3.4.0) [C]
2. **SeekDeep**: "slowing".
   - Now: dormant. The last commit was 2025-04-08 and there are no releases. Its README runs the app with `pear run --dev .`, which Pear v3 removed, so it will not run on current Pear as documented. https://github.com/noubre/seekdeep [C]
3. **pear-expo**: "React-Native / Expo-on-Pear scaffold".
   - Now: dormant (last commit 2025-06-20). It targets the "Pear Desktop App", the `pear run`-era runtime (inference from its `pear/README.md` [U on whether it can be adapted]). It is superseded by the official `hello-pear-react-native` and `pear-mobile`. https://github.com/gasolin/pear-expo [C]
4. **Ghost Drive**: "early, no license".
   - Now: still early (v0.3.0, 2026-08-14), and there is still no LICENSE file at HEAD. The README: "Experimental… built on the Holepunch stack", using bare/bare-native rather than the Pear runtime. https://github.com/Drache93/ghost-drive [C]
5. **awesome-pears (gasolin)**: "upkeep is uncertain".
   - Now: there were commits on 2026-09-13 and 2026-10-16 (several). Its Desktop section still shows `pear run pear://…` instructions, which are now stale. The CC0 claim stands: the LICENSE file is "CC0 1.0 Universal", although the README badge links to CC BY 4.0. https://github.com/gasolin/awesome-pears [C]
   - **New: an official `holepunchto/awesome-pears` now exists** (Apache-2.0, last commit 2026-10-21). It is curated into Production Applications (Keet, PearPass), Applied Demonstrations (`swap`, `snake`), Community Deployments (Pear Draw, PearDrop, PearPetal), boilerplates (desktop, mobile, terminal and local backend), Availability (blind-peer, blind-peering, blind-relay) and more. gasolin's list itself now points to it as "Official Awesome Pears". https://github.com/holepunchto/awesome-pears [C]
6. **Dripline**: "(Hypha Co-op) — a neutral concept primer on DHT / discovery / relay ideas", linked to `https://hypha.coop`.
   - Now: Dripline is Hypha's general blog. The P2P material is a four-part "P2P Primer" by **Mauve**, March to October 2022 (part 3: "comparing peer discoverability and security in p2p networks"). Better link: https://hypha.coop/dripline/p2p-primer-part-1/. "Neutral" is our own judgement. The author appears to be RangerMauve, the hyper-sdk and Agregore maintainer, so the label is worth a second look [U on identity]. Dated 2022. https://hypha.coop/dripline/ [C]
7. **WhereFam** (Active): the GitHub repo is live (last commit 2026-06-18, GPL-3.0, App Store listing). pears.com features it on its home page under "Built on Pear". This could support promotion, or confirm Active. https://pears.com/ ; https://github.com/WhereFam/WhereFam-iOS [C]. wherefam.com did not respond (see Blocked).
8. **PearPass**: still established. Desktop is at v2.1.0 (2026-05-20), last pushed 2026-08-14, with a mobile repo alongside. pears.com lists it as "Official… by Tether" (Desktop, Mobile), with homepage https://pass.pears.com/. The license reads Apache-2.0 in LICENSE.md, while GitHub reports NOASSERTION, which is why the page shows no license. https://github.com/tetherto/pearpass-app-desktop [C]
9. **hyper-sdk**: last release v6.2.2 on 2026-02-19 and no commits since, so quiet for nine months. It may be stable rather than stalled; worth watching for the "established" grade. MIT confirmed. https://github.com/RangerMauve/hyper-sdk [C]

**Confirmed still correct**
- Agregore Browser: active (v2.24.0 2026-04-23, pushed 2026-07-13), AGPL-3.0. [C]
- Holesail: active (v2.4.4 2026-09-26), AGPL-3.0, holesail.io live. Listed as a Community app on pears.com/apps. [C]
- CoMapeo: very active (comapeo-core v7.7.0 2026-10-26; CoMapeo mobile v14.0 2026-11-04). comapeo-core is MIT. [C]
- "Community largely lives in Keet rooms": Pear Evolution points to the Pear Development group on Keet, with office hours on Thursdays 15:00–16:00 UTC. The official awesome-pears lists the Keet "Pear Development Room". [C]
- Note: Agregore, Holesail, CoMapeo and hyper-sdk sit on the Hypercore/P2P layer, not on Pear deployment. gasolin's list files Holesail and Mapeo under "App that also use Hypercore (but not pear)". This fits the page's "Bare + P2P + Pear stack" scope. [C]

---

## Proposed new material (brief, sourced)

- **Pear v3 status block** for the Pear page: the v3 split, the current CLI version line, the command set with production release via `provision` + `multisig`, `pear install`, and the CLI as a self-updating binary. Install via install.pears.com, `npx pear`, Homebrew (repo commit "add brew install instuctions", 2026-11-03) or the Docker image `tetherto/pear`. https://docs.pears.com/pear/reference/pear/cli/ ; https://docs.pears.com/pear/release-overview/ [C]
- **pear-mobile** (iOS/Android, React Native): npm 4.3.0 (2026-08-18), "MVP - EXPERIMENTAL", with `pear-runtime-react-native` and the `hello-pear-react-native` boilerplate. Announced 15 Sep 2026 ("Pear mobile OTA updates are here"). OTA covers the JS bundle only; native code still goes through the app stores; there is an `updates.minver` field. https://pears.com/blog/pear-mobile-deploy-p2p-ota-updates-to-react-native-apps ; https://github.com/holepunchto/pear-mobile [C]
- **Official boilerplates**: hello-pear-electron (desktop), hello-pear-bare (terminal, worker updater), hello-pear-daemon (short-lived CLI, daemon updater), hello-pear-react-native (mobile) and hello-pear-worker (shared local backend). https://github.com/holepunchto/awesome-pears ; https://docs.pears.com/ [C]
- **Other new pieces**: `pear-build` (deployment folder, npm 1.3.2), `pear-install`, `pear-ci` ("Stateless stage for pear-runtime apps"), `bare-sidecar`. GitHub API descriptions [C].
- **Docs restructure**: docs.pears.com now has three tabs: Pear (`/pear/`), P2P (`/p2p/`) and Bare (`/bare/`). It has a curated **Release Overview** per tab, and its source repo is `holepunchto/pear-docs`. pears.com adds `/apps` (showcase), `/blog`, `/changelog` and product pages. [C]
- **Ecosystem candidates** (grading is a discussion point):
  - QVAC: Tether, local AI, featured "Official" on pears.com, "powered by Bare and Holepunch" [C, as quoted by gasolin/awesome-pears]. https://qvac.tether.io/
  - RewindBitcoin: on pears.com/apps (Community), a "Bitcoin wallet that can revert theft and extortion".
  - PearDrop, Pear Draw, PearPetal and PearCal (peerloomllc).
  - Holepunch's applied demos `swap` and `snake`, and the inspection tool `oglr` (blog "Ecosystem Spotlight", 3 Aug and 9 Sep 2026).
  - Tether's WDK (Wallet Development Kit, on Bare) [C, as quoted by gasolin/awesome-pears].
  - First-party availability: blind-peer, blind-peering and blind-relay, worth naming next to HiveRelay.
- **Finding more**: add the official `holepunchto/awesome-pears` as the primary curated index, with gasolin's list as the broad secondary one.

## Placement options (for discussion)

- A: rewrite the Pear page's "Mid-transition" section as a short "Current form (Pear v3)" section. Drop the v2 list entirely. Point to the Release Overview as the moving truth.
- B: on the pear-runtime page, adopt "Pear OTA (package `pear-runtime`)" naming, refresh the options list, delete the two-surfaces gotcha, and add a one-line pointer to pear-mobile and the terminal boilerplates.
- C: ecosystem page. Move SeekDeep and pear-expo out (dormant, and both rely on removed `pear run`). Update the HiveRelay line. Optionally add an "official" sub-line (Keet, PearPass, QVAC) and a few community entries from the official list.

**Discard candidates**: SeekDeep; pear-expo; the whole v2 migration list (`Pear.config`→`Pear.app`, COMPAT, `pear.pre`, `pear-electron`/`pear-bridge` decomposition); the `pear-electron` gotcha.

## Broken or moved links

- `https://docs.pears.com/reference/migration` → redirects to https://docs.pears.com/pear/how-to/operate-an-app/migration/ (content changed: now "Migrate from pear run to Pear OTA"). [C]
- `https://docs.pears.com/reference/cli` → redirects to https://docs.pears.com/pear/reference/pear/cli/ [C]
- `https://pears.com/news/pear-evolution/` → redirects to https://pears.com/blog/pear-evolution [C]
- `https://hypha.coop` (Dripline): works, but lands on the co-op home page. The primer is at https://hypha.coop/dripline/p2p-primer-part-1/ [C]
- `https://github.com/WhereFam/WhereFam-iOS`: fine (the old `jj10133/WhereFam-iOS` redirects here). [C]
- All other links on the four pages returned 200: docs.pears.com, keet.io, holesail.io, and the GitHub repos for pear, pear-runtime, Agregore, PearPass, comapeo-core, hyper-sdk, HiveRelay, ghost-drive, seekdeep, pear-expo and awesome-pears. [C]

## Blocked sources

- https://wherefam.com/ : no response (curl status 000). Possibly blocked by the proxy or down.
- GitHub REST API (api.github.com): hit the unauthenticated rate limit partway through. The remaining repo checks used the public Atom feeds and raw README/LICENSE files instead, so nothing was lost.
