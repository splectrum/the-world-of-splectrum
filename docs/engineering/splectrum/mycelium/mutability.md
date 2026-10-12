---
layout: default
lastmod: 2026-05-03
title: "Mycelium Mutability"
description: "The interrogative mutability protocol reads the stability regime of fabric content — immutable, mutable, or dirty — declared and discovered through context metadata."
sitemap: false
---

[Home](/) > [Engineering](/engineering/) > [SPLectrum](/engineering/splectrum/) > Mycelium > Mutability

# Mycelium Mutability

The mutability protocol is interrogative — it reads the stability regime of content in the fabric. It does not determine what operations are permitted. It reports what the fabric knows about its own content at a given location.

**Namespace:** `mycelium.mutability`

## The Three Regimes

The fabric primitive — key mapped to content — has no opinion about change. Mutability is not a property of the fabric. It is a paradigm declared through metadata, discovered during traversal, and enforced through protocol operators.

**Immutable** — no change possible. The record arrived whole and stays whole. The record *is* the history. Complete self-knowledge. Replicate freely, cache anywhere, no coordination needed.

**Mutable** — controlled change. Every change arrives as an immutable data change record through a queue. The queue is the history. Full reconstruction possible. The mutable resource knows its own past through the queue.

**Dirty** — uncontrolled change possible. No record of changes. The current state is all there is. No rebuild guarantee, no audit trail, no safe replication.

### Default: Dirty

When no mutability metadata is present on the ancestor axis, the regime is dirty. Architecture of absence — no declaration, no guarantee. Control is built, not given.

An empty repository is entirely dirty. As mutability metadata is placed in contexts, the reliability landscape takes shape. The subject shapes its own commitments.

### Paradigms, Not Stages

The three regimes are distinct paradigms, not lifecycle stages. Each declares something fundamentally different about what the fabric knows about its own content:

- Immutable — the fabric knows everything. The content is the fact.
- Mutable — the fabric knows the history through the queue. The current state is derived.
- Dirty — the fabric knows nothing about change. The current state is all there is.

The transition from dirty to immutable is a one-way creation act — a snapshot, a commitment. What happened in the dirty regime before that moment is gone. There is no memory to carry forward.

## Operators

### get

Returns the mutability regime at the resolved path. Walks the ancestor axis from process POV to subject reality root, accumulates mutability declarations from context metadata. Nearest ancestor wins. No metadata found → dirty.

**Input:** resolution envelope.
**Output:** `immutable | mutable | dirty`

### set

Declares the mutability regime at the target path by writing mutability metadata into the context. This is the subject shaping its own reliability landscape — committing an area to a regime.

**Input:** resolution envelope — path, regime value (`immutable | mutable | dirty`).
**Output:** confirmation envelope.

## Relationship to the Mutable Protocol

When `mycelium.mutability.status` returns `mutable`, the [mutable protocol](mutable) is operationally active at that location. When it returns `immutable`, the mutable protocol has no business there. When it returns `dirty`, neither protocol is operationally active — dirty is the absence of both sealing and controlled change.

The mutability protocol reads metadata. The mutable protocol reads immutable queues and writes mutable surfaces. They share no operational dependency — only the conceptual dependency that the mutable protocol presupposes a `mutable` regime declaration.

