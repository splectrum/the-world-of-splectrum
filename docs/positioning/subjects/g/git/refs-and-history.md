---
layout: default
lastmod: 2026-05-29
title: "Refs and history"
description: "How Git turns objects into history: branches, HEAD and tags as refs, the commit graph, branching and merging, rewriting history, and the reflog."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Git](/positioning/subjects/g/git/) > Refs and history

# Refs and history

Objects give Git its content; **refs** give it usable history. A ref is a named pointer to a commit. A **branch** is simply a ref that moves forward as new commits are made; **HEAD** names the branch (or commit) currently checked out; a **tag** ref is a pointer that does not move. Creating a branch costs almost nothing — it is one small file naming a commit — which is why Git encourages many short-lived branches.

## The commit graph

Because each commit names its parent(s), commits form a directed acyclic graph (DAG). The graph encodes causality, not merely time: a commit with two parents is a **merge**, recording that two lines of development converged. This is the structure history operations walk.

## Branching and merging

A branch diverges by adding commits that share an ancestor with another branch; a **three-way merge** reconciles them using their common ancestor, producing a merge commit with two parents. Where both sides changed the same region, Git records a **conflict** for a human to resolve — the point at which divergent histories are deliberately reconciled.

## Traversing and rewriting history

History can be read with composable filters — by path, date, author, message, or even by the introduction of a piece of code. It can also be rewritten before sharing: `rebase` replays commits onto a new base; `commit --amend`, `cherry-pick`, and tools like `filter-repo` reshape, consolidate, or remove history. Rewriting changes commit hashes — a commit's identity includes its history — so it is a local operation done before exchange.

## The reflog

Git keeps a local log of every movement of every ref — the **reflog** — so that even commits dropped by a rewrite remain reachable for a time. It is a safety buffer: local, expiring, and not part of the shared history.

## Sources

- [Pro Git](https://git-scm.com/book) — branching, merging, and rewriting in full.
