# bare-for-pear pages: update research

Working note, not a site page. Nothing here is a decision. Checked 2026-11-08 against the pages under `docs/engineering/infrastructure/bare-for-pear/` (written 2026-05-03 and 2026-06-05).

**Marks.** [C] checked against the source itself (source key in brackets, list at the end); [C, as quoted by X] second-hand; [U] unverified. GitHub was read through public pages, raw files and the public REST API (no gh CLI). The platform was read at `dev-env-2-p2p-cluster@c6b73bb` (2026-11-07, "Merge branch 'execute/main'") with `git show` / `git ls-tree` / `git grep`, excluding `node_modules`.

---

## 1. The packages now

| Package | Where it lives | Last push | Status | Used by the platform at c6b73bb |
|---|---|---|---|---|
| p2p-git | **`pear-full-square/p2p-git`**; the old `github.com/bare-for-pear/p2p-git` redirects there [C, S2, S14]; no longer listed in bare-for-pear [C, S1] | 2026-10-30, `d7d154d` [C, S4] | **moved, active** | **Yes.** `mycelium-git` and `p2p-mrepo` both depend on `github:pear-full-square/p2p-git`; the lockfile resolves it to `d7d154d…` [C, S13]. `p2p-mrepo` imports `createFs` from `p2p-git/hyperdrive-fs` [C, S13] |
| isomorphic-git (fork) | `bare-for-pear/isomorphic-git`, fork, not archived [C, S1] | 2026-06-05 [C, S1] | **resting; superseded in use** | **No, the fork is not used.** `mycelium-git` uses upstream `isomorphic-git` **1.44.8** from npm (lockfile: registry tarball), on Bare through the `bare-node-*` aliases [C, S13]. The fork's Hyperdrive adapter lives on, fixed, as p2p-git's `hyperdrive-fs` [C, S4] |
| avsc (fork) | `bare-for-pear/avsc`, fork of `mtth/avsc`, default branch `master`, not archived [C, S1] | 2026-06-05 [C, S1] | **resting** | **No.** No dependency anywhere. AVRO is named only as later work: rules.md "**JSON first.** AVRO later, with values in the form avsc gives them now."; notes/plan.md, "Not in this phase": "… zero knowledge, AVRO and Kafka." [C, S13] |
| avsc-rpc | `bare-for-pear/avsc-rpc`, not archived [C, S1] | 2026-06-05 [C, S1] | **resting** | **No.** No occurrence of `avsc-rpc` anywhere in the tree [C, S13] |
| rpc-server | `bare-for-pear/rpc-server`, not archived [C, S1] | 2026-06-05 [C, S1] | **resting** | **No.** No occurrence of `rpc-server` in the tree [C, S13] |
| git | `bare-for-pear/git`, not archived [C, S1] | 2026-06-05 [C, S1] | **resting** | **No.** No occurrence of `.gittrees`. The platform does git's work otherwise: `mycelium-git`'s `nativeBackend` (git's plumbing, the reference engine) and its own `split()`, which "gives the same commits as native `git subtree split`" [C, S13] |

Also found:
- bare-for-pear now holds six repositories: `.github` (the profile, pushed 2026-11-06) and the five resting ones [C, S1]. Its profile reads: "Infrastructure modules for the Bare runtime: community forks barified for Bare, and original modules." [C, S13, `bare-for-pear/.github/profile/README.md`].
- The platform names isomorphic-git as third-party: the `third-party` package holds "bare and holepunch, isomorphic-git, react and htm"; the `mycelium` package holds "`p2p-git` (git on Hyperdrive … developed in its own repository, `pear-full-square/p2p-git`, used at its latest)" [C, S13, notes/packages.md]. So, in the platform's own terms, p2p-git is ours and isomorphic-git is not.
- `pear-full-square/mycelium` is **archived** [C, S2] (outside these pages, but the SPL Software mycelium page links it as the source).

---

## 2. Claims needing change, per page

### bare-for-pear/index.md (landing)

- "Published under the bare-for-pear GitHub organisation." and the module list including p2p-git → p2p-git is now in `pear-full-square` [C, S1, S2]. The other five are still in bare-for-pear, all untouched since 2026-06-05 [C, S1].
- Description "community forks barified, git infrastructure, and a minimal P2P git engine" → the P2P git engine has left; what remains is two barified forks (avsc, avsc-rpc), one unmodified fork with an adapter (isomorphic-git), two original modules (git, rpc-server). None is used by the current platform [C, S13].
- Line on isomorphic-git: "Fork of isomorphic-git." → still true, but the platform uses upstream isomorphic-git directly, not the fork [C, S13].

### p2p-git/index.md

- Breadcrumb and placement under bare-for-pear; "**Source:** [bare-for-pear/p2p-git](https://github.com/bare-for-pear/p2p-git)" → `pear-full-square/p2p-git` (the old URL still redirects, so not broken) [C, S2, S14].
- "42 exports from the original 70." → the entry point `src/plumbing.js` at `d7d154d` exports **38** names [C, S4]. The repository's own README also says 42 [C, S4], so the figure came from there; the page's own list (37 names) omits `getConfigAll` [C, S4].
- Transaction model, step 4 "**commit** — the index becomes a committed tree" → `commit` is **not exported** by `src/plumbing.js` [C, S4], although the README's usage example calls `git.commit(…)` [C, S4]. The platform does not use the index route: its adapter writes trees and commits directly (`writeTree`, `writeCommit`) [C, S13, lib/isogit.js]. Worth an author's check before the page restates the transaction model.
- "Designed for P2P applications where the object store lives on any pluggable fs backend … The embedder provides storage" → p2p-git now ships **its own Hyperdrive adapter** as a package export, `p2p-git/hyperdrive-fs` [C, S4, package.json]; fixed in `d7d154d` ("a Hyperdrive keeps no entries for folders, and stat and lstat returned Stats(null) for them, which reported not-a-folder. They now report a folder. readlink and symlink are added") [C, S4]. In the platform's design, "git on a Hyperdrive sits below, in p2p-git: its Hyperdrive adapter (`hyperdrive-fs`) is what makes it p2p." [C, S13, notes/plan.md].
- "Current State: Proven under Bare. 42 plumbing operations tested. Not yet exercised: merge, diff, tag operations, the updateIndex → commit flow end-to-end, large repos." → out of date for merge: mycelium-git's contract suite runs on p2p-git (`contract('p2p-git', p2pgitBackend)`) and includes merge tests (plain merge, fast-forward, conflicts) [C, S13, test/contract.js, test/p2pgit.test.js]. Recorded result: "p2p-git on a persisted Hyperdrive works, under Node and Bare … mycelium-git's contract suite 78 of 78, the command set 60 of 60 on each runtime" [C, S13, notes/status.md]. Still not exercised by the platform: the updateIndex route, tags, diff [C, S13: none called in lib/isogit.js]. p2p-git is used in production code by `mycelium-git` and `p2p-mrepo` [C, S13].
- "**Packfiles** — loose objects only" → still true for storage [C, S4 README]; note that `src/utils/git-list-pack.js` remains and was fixed in `d7d154d` (OFS_DELTA offsets) [C, S4]. Detail; does not change the headline.
- Origin, not on the page: p2p-git was forked from `bare-for-pear/isomorphic-git` [C, S4, README "Origin"]. Its `package.json` was renamed from `isomorphic-git` to `p2p-git` on 2026-10-29 (`1fbe919`) [C, S4].

### isomorphic-git/index.md

- "Unmodified upstream — the fork adds the adapter and Bare runtime documentation." → still true of the fork [C, S5, BARE-FOR-PEAR.md]; but the fork branched from upstream `main` at `4912ef3` (2026-06-03) and is now **62 commits behind** [C, S5]. Upstream has gone from 1.38.x to **1.44.11** (2026-11-05) [C, S12]; the fork's base date falls between 1.38.4 (2026-06-02) and 1.38.5 (2026-06-16) [C, S12; the version is my inference from dates].
- "The adapter maps 10 fs methods (readFile, writeFile, stat, lstat, readdir, mkdir, rmdir, unlink, readlink, symlink)" → the fork's `hyperdrive-fs.js` maps **8** (no `readlink`, no `symlink`) and says so in its header ("Maps isomorphic-git's fs interface (8 methods)") [C, S5]. The 10-method version exists only in p2p-git's copy, since `d7d154d` [C, S4]. The fork's own BARE-FOR-PEAR.md claims 10 [C, S5]: the fork's docs and code disagree.
- "Stats synthesis … with an implicitDir flag for implicit directories" and "Stat synthesises a directory result by probing readdir" → in the fork's code the probe returns `new Stats(null)`, and `Stats` sets `_isDir = entry != null && …`, so an implicit folder reports **not** a directory; there is no `implicitDir` flag in the file [C, S5]. This is the bug p2p-git fixed in `d7d154d` [C, S4].
- "Running Under Bare: … import the ESM build … Bare resolves the "node" export condition by default, which points to CJS — and the CJS build hard-requires Node's crypto." → the platform now runs upstream isomorphic-git under Bare with a plain `import isogit from 'isomorphic-git'` and Node built-ins supplied by `bare-node-*` aliases (`"crypto": "npm:bare-node-crypto@1.0.0"`, `fs`, `path`, `process`, `child_process` …) [C, S13, lib/isogit.js, package.json]; mycelium-git's README: "On Bare the Node built-ins they use come from the `bare-node-*` aliases" [C, S13]. Whether Bare still resolves the `"node"` condition as stated: [U].
- "Current State: Proven via POC probe … Not yet exercised: merge, large repos, concurrent access, symlink round-trip." → for upstream isomorphic-git (not the fork), the platform's contract suite now exercises merge on it too (`isogitBackend`, isomorphic-git 1.44.8), with the noted limits: "no atomic compare-and-swap, so `updateBranch` compares, then writes" [C, S13, mycelium-git README].

### avsc/index.md

- "**Library Reference** … [bare-for-pear.github.io/avsc](https://bare-for-pear.github.io/avsc/)" → **404**; GitHub Pages is off for the repository (`has_pages: false`), though `docs/` with `_config.yml` is still in the repo [C, S14, S6]. The fork's README links the same Pages URLs [C, S6].
- Upstream state, implied by "Forked from mtth/avsc": upstream `master` is `6.0.0-rc.1` and has not moved since 2025-04-10; the fork is 7 commits ahead, 0 behind [C, S10, S6]. **v6 is not released on npm**: `latest` is **5.7.9** (2025-07-13), and v6 exists only as `6.0.0-alpha.15` (2024-10-20) [C, S11]. The fork's package.json calls itself `"version": "5.8.0"` although its code is upstream v6 master [C, S6]. Pages that say "avsc v6" are speaking of the unreleased master line; worth saying so once.
- "Apache Avro specification" link to `docs/1.12.0/specification/` → still live [C, S14]; 1.12.0 is the newest version listed on avro.apache.org/docs/ [C, S15].
- "All upstream documentation applies" (the wiki) → [U]: PR #428's description says "Wiki documentation (API, ...) will be updated separately once this is in" [C, S10]; whether the wiki now documents v6 was not checked.

### avsc/barification.md

- "Upstream avsc v6 had a conditional imports field: `"imports": { "fs": { "bare": … } }`" → **not upstream**. Upstream master's package.json has no `imports` field [C, S10]; the field was added by the fork's own first commit `67a7446` ("restructure as spl codebase") and dropped in `98b281f` [C, S6].
- "The fork strips this to: `{ "name": "avsc", "main": "lib/index.js" }`" → true from `98b281f`, but since `e3ee2c0` (2026-06-01, "declare runtime dependencies for standalone install") the package.json carries `version` 5.8.0 and `dependencies` bare-crypto `^1.13.4`, bare-fs `^4.7.0`, bare-path `^3.0.0`, bare-stream `^2.13.0` [C, S6].
- Platform dependencies table, "bare-crypto | 4.7.0" → wrong: the fork declares `^1.13.4` [C, S6]; the platform pins bare-crypto 1.15.4 [C, S13]. The other three rows match the declared floors [C, S6].
- "installed by `bin/setup` … populated by the setup script into `lib/`. The `node_modules → lib/` symlink" → describes the earlier spl codebase (commit `506c1e8`: "Add bin/setup to populate platform deps from npm into lib/") [C, S6]. Since `e3ee2c0` the fork installs as an ordinary package [C, S6].
- platform.js snippet shows only the require swap → the fork also changed `hash.end(str); hash.read()` to `hash.update(str); hash.digest()` (`67a7446`, "Fix avsc platform.js crypto for Bare") [C, S6]. Small, but it is a real barification change the page omits.
- "See Code Implementation for the full dependency management model." → unlinked reference to a page that does not exist on the site (grep of `docs/`).
- Confirmed: the four module swaps in platform.js, files.js, index.js, containers.js; `lib/encoding.js` loaded from utils.js; the `typeof Buffer` branches [C, S6].

### avsc/types.md, serialization.md, schemas.md, containers.md

- Mycelium framing: "the carrier language — the structural vocabulary through which mycelium articulates data"; "Avro's native schema resolution … is the mechanism behind mycelium's relational type system"; "In mycelium, schema fingerprints are used in the RPC handshake"; "In mycelium, the namespace is not just organisational"; examples named `spl.mycelium.*` → **the current platform has no AVRO**: plan "Not in this phase … AVRO and Kafka"; rules "JSON first. AVRO later" [C, S13]. The vision keeps AVRO as a direction ("**AVRO:** objects become data structures, with schemas and typed values") under "directions, not settled" [C, S13, vision.md]. These lines describe the earlier spl6 design; as statements about mycelium now they are out of date.
- schemas.md: "See AVRO Design Scope — section 8, Namespacing" → unlinked reference to a page not on the site.
- The Avro reference content itself (types, encoding table, container layout, IDL) is library documentation, unaffected by the platform change; not re-verified line by line against avsc.

### avsc-rpc/index.md

- "**Library Reference** … [bare-for-pear.github.io/avsc-rpc](https://bare-for-pear.github.io/avsc-rpc/)" → **404**, Pages off [C, S14, S7].
- "The RPC layer was removed from avsc in v6 (PR #428)." → confirmed: PR #428 "Bump version and omit services", merged 2024-03-30 [C, S10]. Add that v6 is still unreleased on npm, so released avsc (5.7.9) still ships the services layer [C, S11; that 5.7.9 contains services: U].
- "Extracted from: commit `dd82783`" → exists: 2024-02-23, "Refactor import hook API to isolate platform specific logic (#445)" [C, S10].
- "**Peer dependency on avsc** … Both libraries live together under `lib/`." → package.json now declares avsc as an ordinary dependency, `"avsc": "git+https://github.com/bare-for-pear/avsc.git"` [C, S7]. The code still requires `'../avsc/lib/types'` etc. [C, S7], which resolves as siblings under `node_modules/` [U: not run].
- "The RPC layer enforces process boundaries … Even in local in-memory execution" and related → design statements of the earlier codebase; nothing in the current platform uses it [C, S13].

### avsc-rpc/barification.md

- "This works because both libraries sit under `lib/` in the spl codebase." → historical; see the dependency point above [C, S7].
- "services.js — 2470 lines", "compat.js — 55 lines" → 2469 and 55 by line count [C, S7]; effectively correct.
- "See the [API Reference](https://github.com/bare-for-pear/avsc-rpc/blob/main/doc/api.md)" → **404**; the file is at `docs/api.md` [C, S14, S7].
- "See Code Implementation …" → unlinked reference to a page not on the site.

### avsc-rpc/client-server.md, middleware.md, transports.md, services.md, wire-protocol.md

- "subject-internal operations", "Used for testing and subject-internal communication", "## Use in Mycelium" (middleware and "The mycelium message shape includes a context array"), "the wire-level equivalent of mycelium's context entries", `spl.mycelium.process.execute` → same as the avsc pages: describes the earlier design; the current platform has neither AVRO nor avsc-rpc [C, S13].
- The protocol mechanics (handshake, Netty framing, options) are library documentation; not re-verified against services.js.

### rpc-server/index.md

- "Today it could be avsc-rpc channels." → not in use; rpc-server appears nowhere in the platform [C, S13]. The rest describes the module, unchanged since 2026-06-05 [C, S1]; README matches the page's mechanisms (`onConnection`, `_server/cmd/shutdown`) [C, S9].

### git/index.md

- `.gittrees` example "lib/avsc  bare-for-pear-avsc  main" → bare-for-pear/avsc's default branch is `master` [C, S1]. The example is copied from the module's README [C, S8]; it describes the old spl codebase's layout. Detail.
- No claim about current use, so nothing false; but nothing in the platform uses it [C, S13].

---

## 3. Confirmed still correct (brief)

- avsc, avsc-rpc, git, rpc-server, isomorphic-git (fork) exist in bare-for-pear, MIT, not archived [C, S1, S13 profile].
- avsc fork: the Bare module swaps, the TextEncoder/TextDecoder polyfill, Buffer branching [C, S6].
- avsc-rpc: streamx Transform, bare-buffer/-events/-stream, compat.js bridge (hash wrapping, removed utils, `process.nextTick`) [C, S7 README and requires].
- PR #428 and `dd82783` [C, S10]; Avro 1.12.0 spec link [C, S14].
- p2p-git: what was removed, the stubs, loose objects only, no working tree [C, S4 README].
- isomorphic-git fork: upstream code unmodified, adapter plus BARE.md [C, S5].
- All internal links (`/engineering/infrastructure/bare/`, the bare-for-pear sub-pages) resolve to existing pages.

---

## 4. Placement proposal (options, not decisions)

What the evidence gives: p2p-git is ours, active, in `pear-full-square`, and a dependency of two platform modules; the five others are resting in bare-for-pear and unused.

- **p2p-git → the "Our Software" part** (the planned replacement for SPL Software), with the mycelium family, since the platform groups it in the `mycelium` package. Options:
  - (a) its own page there, updated as in §2 (Hyperdrive adapter as part of it; contract-suite status; 38 exports);
  - (b) no page of its own: a line in the mycelium family entry, linking `pear-full-square/p2p-git`. The bare-for-pear landing keeps one line saying it moved, or none.
  The old URL `/engineering/infrastructure/bare-for-pear/p2p-git/` would need a redirect if the page moves.
- **The five resting modules stay in Third Party Software → bare-for-pear**, marked resting (last change 2026-06-05, not used by the current platform). Options for the depth:
  - (a) keep all pages, with the mycelium/"subject-internal"/spl-codebase lines rewritten as history or cut;
  - (b) thin the avsc and avsc-rpc reference sub-pages (ten pages of library documentation for unused code) to the index pages plus barification, linking upstream docs and the repos' `docs/` folders, since the Pages sites are gone;
  - (c) keep avsc and avsc-rpc fuller because AVRO is a stated platform direction ("AVRO later, with values in the form avsc gives them now"), and mark them as ready for that, not in use.
- **isomorphic-git**: options are (a) keep the page as a resting fork, corrected (8 methods, the folder bug, 62 commits behind), noting that the platform uses upstream isomorphic-git directly and that the adapter continues in p2p-git; or (b) fold it into the p2p-git entry as its origin, and list isomorphic-git itself under third-party as the upstream the platform uses (1.44.8).
- **git and rpc-server**: short resting pages as they are, with the one avsc-rpc line in rpc-server corrected; or merge both into the landing as one-paragraph entries.
- Landing description: drop "a minimal P2P git engine"; say what bare-for-pear holds now.

**Discard list.** Line-by-line re-verification of the Avro and avsc-rpc API reference tables (library details, not headline); the `git-list-pack` fix; the 2469/2470 line count; the `.gittrees` branch name; whether released avsc 5.7.9 still ships services (only matters if a page states it).

---

## 5. Broken links and dangling references

- `https://bare-for-pear.github.io/avsc/` (avsc/index.md) → 404 [C, S14].
- `https://bare-for-pear.github.io/avsc-rpc/` (avsc-rpc/index.md) → 404 [C, S14].
- `https://github.com/bare-for-pear/avsc-rpc/blob/main/doc/api.md` (avsc-rpc/barification.md) → 404; correct path `docs/api.md` [C, S14, S7].
- `https://github.com/bare-for-pear/p2p-git` (p2p-git/index.md; also SPL Software mycelium page, line 103) → works only by GitHub's redirect to `pear-full-square/p2p-git` [C, S14].
- Unlinked references to pages not on the site: "Code Implementation" (avsc/barification.md, avsc-rpc/barification.md), "AVRO Design Scope — section 8" (avsc/schemas.md).
- Outside these pages: SPL Software's mycelium page sources `pear-full-square/mycelium`, now archived [C, S2].

## 6. Open checks

- Whether Bare still resolves the `"node"` export condition to isomorphic-git's CJS build (isomorphic-git page) [U].
- Whether the mtth/avsc wiki now documents v6 (avsc index "All upstream documentation applies") [U].
- p2p-git's transaction model without an exported `commit`: whether `commit` is meant to be exported, or the page and README should describe `writeTree`/`writeCommit` (the author's call; code checked, intent not).

## 7. Blocked sources

None. github.com, raw.githubusercontent.com, api.github.com, registry.npmjs.org and avro.apache.org were all reachable. The org page `github.com/orgs/bare-for-pear/repositories` was read via a fetch summary and cross-checked against the API.

---

## Sources

- **S1** bare-for-pear repositories: `https://api.github.com/orgs/bare-for-pear/repos` (archived, fork, pushed_at, default_branch) and `https://github.com/orgs/bare-for-pear/repositories`, 2026-11-08.
- **S2** pear-full-square repositories: `https://api.github.com/orgs/pear-full-square/repos`, 2026-11-08.
- **S4** `pear-full-square/p2p-git` at `d7d154d043dbc293eacde2b6bb1feba1e8ca9588`: README.md, package.json, src/plumbing.js; commits `d7d154d` and `1fbe919` (API, with patches); commit list.
- **S5** `bare-for-pear/isomorphic-git` main: BARE-FOR-PEAR.md, BARE.md, hyperdrive-fs.js, package.json, tree; compare `isomorphic-git/isomorphic-git:main...bare-for-pear:isomorphic-git:main`.
- **S6** `bare-for-pear/avsc` master: package.json, lib/platform.js, files.js, containers.js, index.js, utils.js, README.md, tree; compare with `mtth/avsc:master`; commits `67a7446`, `506c1e8`, `98b281f`, `e3ee2c0`; repo API (`has_pages`).
- **S7** `bare-for-pear/avsc-rpc` main: package.json, services.js, compat.js, README.md, tree; repo API (`has_pages`).
- **S8** `bare-for-pear/git` main: package.json, README.md, tree.
- **S9** `bare-for-pear/rpc-server` main: package.json, README.md, tree.
- **S10** `mtth/avsc`: repo API, master package.json and lib/platform.js, commit list, PR #428 (API), commit `dd82783` (API).
- **S11** `https://registry.npmjs.org/avsc` (dist-tags, release times).
- **S12** `https://registry.npmjs.org/isomorphic-git` (dist-tags, release times).
- **S13** `dev-env-2-p2p-cluster@c6b73bb`: package.json, package-lock.json, packages.json; `pear-full-square/mycelium-git/` package.json, README.md, lib/isogit.js, lib/p2pgit.js, test/contract.js, test/p2pgit.test.js; `pear-full-square/p2p-mrepo/` package.json, index.js; notes/products.md, notes/status.md, notes/packages.md, notes/plan.md, notes/topics.md, rules.md, vision.md; the `.github/profile/README.md` of bare-for-pear, pear-full-square, splectrum; `git grep` for avsc, avsc-rpc, rpc-server, bare-for-pear, isomorphic-git, p2p-git, gittrees.
- **S14** HTTP status of linked URLs (`curl -L`), 2026-11-08.
- **S15** `https://avro.apache.org/docs/` (version links listed).
