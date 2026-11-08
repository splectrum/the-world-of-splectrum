---
layout: default
lastmod: 2026-11-08
title: "isomorphic-git — Dual-Backend Git"
description: "Full isomorphic-git with a Hyperdrive fs adapter for P2P storage — standard git operations on bare-fs or Hyperdrive, selected by plugging in the fs."
---

[Home](/) > [Engineering](/engineering/) > [Our Software](/engineering/our-software/) > [bare-for-pear](/engineering/our-software/bare-for-pear/) > isomorphic-git

# isomorphic-git — Dual-Backend Git

Full [isomorphic-git](https://github.com/isomorphic-git/isomorphic-git) (pure
JavaScript git implementation) with a Hyperdrive fs adapter for P2P storage.
Unmodified upstream — the fork adds the adapter and Bare runtime documentation.
Cloned from upstream `main` in June 2026 (`4912ef3`); upstream has moved on since
(1.44.11, November 2026), and the fork has not followed.

Resting: the HAICC platform uses [isomorphic-git](/engineering/third-party-software/isomorphic-git/)
from upstream directly, and the adapter lives on, fixed, in
[p2p-git](/engineering/our-software/p2p-git/).

**Source:** [bare-for-pear/isomorphic-git](https://github.com/bare-for-pear/isomorphic-git)

---

## What It Does

Standard git operations — porcelain (add, commit, checkout, status, log, diff,
merge, push, pull) and plumbing (readBlob, writeTree, writeCommit, etc.) — on
two storage backends, selected by plugging in the appropriate fs implementation:

- **bare-fs** — the OS filesystem under Bare. Standard git, fully compatible.
  The correctness oracle.
- **Hyperdrive** — P2P storage. Git objects as Hyperdrive entries, individually
  addressable and replicable across the swarm.

isomorphic-git takes an `fs` parameter on every call. The adapter maps 8 fs
methods (readFile, writeFile, stat, lstat, readdir, mkdir, rmdir, unlink) to
Hyperdrive v11 operations; p2p-git's copy adds readlink and symlink.

## The Hyperdrive Adapter

The key mapping decisions:

- **Implicit directories** — Hyperdrive directories exist only as path prefixes,
  not as entries. mkdir/rmdir are no-ops. Stat probes readdir to detect them.
- **Stats synthesis** — Hyperdrive's entry() returns seq, blob size, executable
  flag, and linkname. The adapter constructs a Stats object from these. For an
  implicit directory it returns an empty Stats, which reports not-a-directory:
  the bug p2p-git's copy fixed.
- **ENOENT** — when entry() returns null and readdir finds nothing, the adapter
  throws with code 'ENOENT'. isomorphic-git depends on this for existence
  checks.

## Running Under Bare

One configuration requirement: import the **ESM build** (`index.js`), not the
CJS build. Bare resolves the `"node"` export condition by default, which points
to CJS — and the CJS build hard-requires Node's `crypto`. The ESM build falls
back to pure-JS `sha.js`. All other dependencies are pure JS.

## Current State

Proven via POC probe. Porcelain and plumbing operations produce identical
commit hashes on both backends. A full round-trip (bare-fs → Hyperdrive →
bare-fs) with 14 git objects returns identical content. Not exercised:
merge, large repos, concurrent access, symlink round-trip.
