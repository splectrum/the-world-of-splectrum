---
layout: default
lastmod: 2026-05-03
title: "Mycelium Mutable Protocol"
description: "The mutable protocol manages living surfaces derived from immutable source queues — creating, syncing, rebuilding, and discarding expendable mutable resources."
sitemap: false
---

[Home](/) > [Engineering](/engineering/) > [SPLectrum](/engineering/splectrum/) > Mycelium > Mutable

# Mycelium Mutable Protocol

The mutable protocol manages the lifecycle of mutable resources — living surfaces derived from immutable data change records. It is a service protocol: it creates, maintains, and destroys mutable resources. Data operations flow through the normal data access protocols.

**Namespace:** `mycelium.mutable`

## The Mechanism

A mutable resource is a living surface derived from an immutable source queue. The queue holds sealed, permanent, ordered data change records. The mutable resource maintains a current-state value derived from those records.

A mutable resource never generates truth. It derives truth from its immutable source queue. The queue relationship is constitutive — the queue *is* the rebuild path.

The dependency is one-directional. Immutable records never depend on mutable state. Mutable state always depends on immutable records. The mutable resource could vanish and the queue wouldn't notice. The queue vanishes and the mutable resource is orphaned.

Data change records are immutable records in the fabric — they are written through the normal data access protocols. Reading the current state of a mutable resource also routes through the normal data access protocols — it is a key with a value like any other.

## Service Operators

### create

Creates a mutable resource bound to an immutable source queue. Establishes the constitutive relationship: this mutable resource derives from this queue. The resource is created empty — initial state is built through sync.

**Input:** resolution envelope — target path, source queue path.
**Output:** confirmation envelope — the mutable resource exists, bound to its source.

### rebuild

Discards the current state and replays the entire source queue from the beginning. The expendability guarantee made operational — the mutable protocol can always reconstruct from sealed history.

Not an emergency recovery path. A first-class operation. Rebuild may be triggered by schema evolution, corruption detection, or a new projection requirement against the same history.

**Input:** resolution envelope — path, optional replay parameters (from a specific point, through a specific reader schema).
**Output:** confirmation envelope — rebuilt state, replay report.

### discard

Destroys the mutable resource. The source queue is unaffected. The projection ceases to exist. Can be recreated at any time through `create` and `rebuild`.

**Input:** resolution envelope — path to the mutable resource.
**Output:** confirmation envelope — resource removed.

### sync-status

Reports the synchronisation state of the mutable resource relative to its source queue. How far behind is the projection? Are there unapplied data change records?

**Input:** resolution envelope — path to the mutable resource.
**Output:** synchronisation profile — last applied record, queue head, lag, synchronisation mode.

## Sync

Sync applies pending immutable data change records from the source queue to the mutable surface. The handler behind the RPC boundary interprets each data change record against the current state and updates the value. Each application is deterministic given the same starting state and the same change record.

Sync can be triggered in two ways:

- **Automatic** — when a data change record is added to the source queue, sync is triggered to update the mutable resource.
- **Manual** — sync can be invoked directly as an operation.

**Input:** resolution envelope — path to the mutable resource.
**Output:** confirmation envelope — updated state, any sync issues.

## Put

`mutable.put` is a combined operation: register an immutable data change record in the source queue and trigger sync. One call that writes the change and updates the surface.

**Input:** resolution envelope — path, data change record.
**Output:** confirmation envelope — change registered, surface updated.

## The Expendability Guarantee

The mutable protocol's defining property: every mutable resource is expendable. The immutable source queue is the permanent record. The living surface is a convenience — always derivable, always rebuildable, always discardable. This is what makes controlled change safe. Nothing is lost when a projection is destroyed, because the projection was never the truth.

