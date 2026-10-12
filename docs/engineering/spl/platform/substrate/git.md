---
layout: default
lastmod: 2026-06-07
title: "Git"
description: "Git is the committed substrate language of repository management — transaction model, versioning, recovery, and audit trail for the SPL platform."
---

[Home](/) > [Engineering](/engineering/) > [SPL Platform](/engineering/spl/platform/) > [Language Substrate](/engineering/spl/platform/substrate/) > Git

# Git

Git is the committed language of repository management — it gives the architecture its transaction model, its versioning, its recovery, and its audit trail. It is one of the five committed substrate languages: repository management (Git), mobility ([Kafka](/engineering/spl/platform/substrate/kafka/)), structure ([AVRO](/engineering/spl/platform/substrate/avro/)), identity ([URI](/engineering/spl/platform/substrate/uri/)), and navigation ([XPath](/engineering/spl/platform/substrate/xpath/)). For Git on its own terms — the object model, refs and branching, the distributed model, the ecosystem — see the [Git subject](/positioning/subjects/g/git/); this page is the commitment and the role it plays.

A data owner's reality is a repository. That repository needs what any managed data store needs — transactions, versioning, recovery, integrity, concurrency control, audit, replication. Git provides all of them, natively, without a central server. A commit is a transaction — an atomic checkpoint that moves the repository from one consistent state to another. The commit graph is the version history, recording what derived from what. Every commit is a recovery point, and every clone is a full backup. Integrity is intrinsic: every object is named by the hash of its content, so the data is self-verifying. The commit log is the audit trail. This is also the default pace of the swarm — data replicates at commit pace, each checkpoint propagating to every peer that holds a copy.

Each repository has a single owner and writer. Branching allows parallel lines of work within that single ownership — separate concerns, experimental states, staged changes that converge when ready. When repositories exchange, or when branches reconverge, git's merge model resolves structural conflicts. The default three-way merge handles most cases; where domain-specific resolution is needed, we provide our own merge algorithms. Merge is how a decentralised architecture without a central arbiter reconciles divergent state.

Git is a natural companion to the P2P components the swarm runs on — the Holepunch stack and Pear. Both operate on the same foundations: content-addressed storage, single-writer ownership, integrity carried in the data itself, peer-to-peer exchange with no central server. The P2P stack provides the live replication, discovery, and connectivity; git adds the transaction model, versioning, and merge. Neither needs adapting to fit the other — they share the same assumptions about how data is owned, verified, and exchanged. The Chapter 3 POC proved this integration: isomorphic-git runs under Bare as a pure JS library, git operations as function calls, no external binary.

Git manages structure — the mutable artefacts that change, need versioning, need merging. Kafka manages data — the immutable records that accumulate on topics. Each language governs its own concern; the boundary between them is clean.
