---
layout: default
lastmod: 2026-05-29
title: "The object model"
description: "Git's object model as a content-addressable store: blobs, trees, commits and tags, the staging index, and integrity from hashing, from SHA-1 to SHA-256."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Git](/positioning/subjects/g/git/) > The object model

# The object model

At its core Git is a content-addressable store: a key–value database in which the key of every object is the hash of its content. Four object types build everything else.

- **Blob** — the content of a file, with no name or metadata of its own. Identical content anywhere in history is one blob.
- **Tree** — a directory: a list of entries, each a name, a mode (permissions), and the hash of a blob (a file) or another tree (a subdirectory). A tree is a snapshot of a directory's shape.
- **Commit** — a snapshot of the whole project at a moment: it points to one top-level tree, to its parent commit(s), and carries author and committer identity, timestamps, and a message. The chain of parent links is the history.
- **Tag** — a named, optionally signed pointer to another object (usually a commit), carrying its own message and tagger.

Because an object's name is the hash of its content, objects are **immutable** — any change produces a different object with a different name — and identical content is automatically de-duplicated. The same property makes integrity intrinsic: a commit's hash depends on its tree and parents, so it transitively fixes the whole history behind it. Objects are stored zlib-compressed under `.git/objects/`, and bundled into packfiles for transport and storage.

## The index

Between the working files and the object store sits the **index** (the staging area): a mutable description of what the next commit will contain. `git add` records content into the index; committing turns the index into a tree and a commit. The index is what lets a commit be composed deliberately rather than capturing the working directory wholesale.

## Hashing: SHA-1 to SHA-256

Git originally named objects by [SHA-1](https://en.wikipedia.org/wiki/SHA-1) — chosen, in Torvalds' account, mainly to guard against accidental corruption rather than as a security measure. After the 2017 [SHAttered](https://shattered.io/) demonstration of a practical SHA-1 collision, Git adopted a collision-detecting SHA-1 variant, and a transition to [SHA-256](https://en.wikipedia.org/wiki/SHA-2) has been specified; as of 2026 it is available but not the default, and most repositories remain on SHA-1.

For the byte-level details, see the [Git Internals](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects) chapter of Pro Git.

## Sources

- [Pro Git, Git Internals](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects) — the object database in full.
- [The SHAttered attack](https://shattered.io/) — the 2017 SHA-1 collision.
