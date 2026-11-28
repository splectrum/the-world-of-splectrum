---
layout: default
lastmod: 2026-11-28
title: "Git"
description: "Git in Mycelium: the low-heartbeat engine of checkpoints and commits, its state in layers, each a branch, separated by concern."
---

[Home](/) > [Engineering](/engineering/) > [Mycelium](/engineering/mycelium/) > Git

# Git

In Mycelium, Git is the low-heartbeat engine: checkpoints and commits. It is about state: the repository as it stands now, and as it stood before. State moves on a commit at a time, and each commit is a checkpoint: an atomic step from one consistent state to the next, its integrity carried in the hashes. Data in motion is [Kafka](/engineering/mycelium/kafka/)'s; Git keeps what the data has come to. For Git on its own terms, see the [Git subject](/positioning/subjects/g/git/).

## Layers as branches

An mrepo keeps its state in layers, and each layer is a branch. Layering is separation of concerns: `main` holds the data, the other layers its metadata, each concern a layer of its own.

Some layers are static: `main`, the protocols, the packages the mrepo is made of, the types it knows in `avro`. They move at Git's slow heartbeat. Others are dynamic: the inbox and the outbox, the request layers, the execute branches, where requests pass through. Several of these are topics, and the execute branches live only as long as their request. The dynamic layers are where Git and [Kafka](/engineering/mycelium/kafka/) meet, in one repository.

The rules are few:

- **Layers are disjoint**, never merged into each other.
- **One writer per branch.**
- **Writes are commits only**, never files edited in place.
- **The repository is the truth**; a folder on disk is a view of a commit.

From outside, none of this shows: an mrepo presents `main`, its data, and the metadata layers are its own.

## A request on branches of its own

A request is the unit of change, and Git gives it its transaction. It is worked on branches of its own, made from the head of each layer it writes to. When it is done, each branch that moved becomes one commit on its target; what the request did step by step stays out of the target's history. A failed request's branches are discarded and nothing reaches the target. The record of the request itself, what was asked and what happened, is kept apart, as a record in a topic.

## One repository, several engines

The repository rules sit over a contract that more than one Git engine meets: native Git, and [p2p-git](/engineering/our-software/p2p-git/), our own, which runs on the filesystem or on a peer-to-peer store. The same repository runs on any of them.

The direction: only `main` goes on the peer-to-peer store, as the repository's external state, replicated to peers. The other layers stay on the peer, as its internal state.

The documentation as built is in [base-docs-package](https://github.com/haiccing/base-docs-package), and the direction in [base-docs-vision](https://github.com/haiccing/base-docs-vision).
