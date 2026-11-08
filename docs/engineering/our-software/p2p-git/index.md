---
layout: default
lastmod: 2026-11-08
title: "p2p-git — Git Engine on Hyperdrive"
description: "p2p-git: isomorphic-git stripped to its plumbing, with its own Hyperdrive adapter; the git engine that makes Mycelium's git peer-to-peer."
---

[Home](/) > [Engineering](/engineering/) > [Our Software](/engineering/our-software/) > p2p-git

# p2p-git — Git Engine on Hyperdrive

A minimal git engine for embedding: isomorphic-git stripped to the object-level plumbing, with its own adapter for a Hyperdrive. Object operations, refs, index, merge, log, walk. No porcelain, no network, no packfiles, no working tree.

**Source:** [pear-full-square/p2p-git](https://github.com/pear-full-square/p2p-git)

---

## Where It Comes From

p2p-git began in bare-for-pear as a clone of the [isomorphic-git fork](/engineering/our-software/bare-for-pear/isomorphic-git/) there, itself a clone of [isomorphic-git](https://github.com/isomorphic-git/isomorphic-git). The stripping made it our own: 8,336 lines removed, 78 files deleted. It now lives in pear-full-square, with the engines.

## Where It Sits

Mycelium's git module, `mycelium-git`, works over a backend contract, and p2p-git is one of its engines: git on a Hyperdrive. Mycelium knows nothing of the p2p layer; p2p-git's Hyperdrive adapter is what makes it p2p. `p2p-mrepo`, Mycelium on the p2p layer, uses it too.

## What It Exports

Two entry points: the plumbing (`p2p-git`, 38 exports) and the Hyperdrive adapter (`p2p-git/hyperdrive-fs`).

**Objects:** readBlob, writeBlob, readTree, writeTree, readCommit, writeCommit, readTag, writeTag, readObject, writeObject, hashBlob.
**Index:** updateIndex. **Refs:** resolveRef, writeRef, expandRef, expandOid, deleteRef, listBranches, listTags, listRefs, currentBranch.
**Branching:** branch, deleteBranch, tag, deleteTag. **History:** log, findMergeBase, isDescendent. **Merge:** merge (3-way text).
**Navigation:** walk, TREE. **Config and utility:** getConfig, getConfigAll, setConfig, init, findRoot, listFiles, version.

## No Working Tree

The standard git workflow (edit files, add, commit) is replaced by direct object construction. Blobs, trees and commits are written as objects; there is no filesystem working tree and no `git add` reading from disk. The index, git's staging area, is still there (`updateIndex`). Mycelium's git writes trees and commits directly.

## What Was Removed

- **Porcelain:** add, checkout, status, clone, fetch, pull, push, stash, cherry-pick, notes.
- **Network:** HTTP transport, smart protocol, remote management. Object exchange is the embedder's concern.
- **Packfiles:** loose objects only, each individually addressable.
- **Working tree:** the WORKDIR and STAGE walkers, .gitignore.
- **Shallow clones:** replaced with empty sets.

## The Hyperdrive Adapter

`hyperdrive-fs` maps the ten fs methods isomorphic-git's plumbing calls (readFile, writeFile, stat, lstat, readdir, mkdir, rmdir, unlink, readlink, symlink) to Hyperdrive operations. A Hyperdrive keeps no entries for folders, which exist only as path prefixes: stat and lstat report a folder when a path has entries beneath it.

## Design Decisions

**Stubs over removal for entangled dependencies.** GitPackedRefs and GitRefSpecSet are stubbed rather than removed, because GitRefManager references them throughout. Safe, because loose objects only never has packed refs.

**Merge keeps the index.** Git's merge uses the index to track 3-way merge state. Removing it would mean rewriting merge.

**The stripping was the learning exercise.** Every removed file was understood before removal, and the dependency structure is mapped. Further stripping can follow when there is a need.

## Current State

In use: `mycelium-git` and `p2p-mrepo` depend on it. Mycelium's git contract suite runs on it, merges included, on a persisted Hyperdrive, under both Bare and Node.js. Not exercised by the platform: the index route, tags, diff.

## See Also

- [pear-full-square/p2p-git](https://github.com/pear-full-square/p2p-git) on GitHub
- [isomorphic-git](https://github.com/isomorphic-git/isomorphic-git), the upstream
