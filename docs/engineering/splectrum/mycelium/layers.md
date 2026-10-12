---
layout: default
lastmod: 2026-05-03
title: "Mycelium Fabric Layers"
description: "Layered data access in the mycelium fabric: the physical layer, data access kinds, safe mode, read modes, synchronisation, and replication declared in context metadata."
sitemap: false
---

[Home](/) > [Engineering](/engineering/) > [SPLectrum](/engineering/splectrum/) > Mycelium > Layers

# Mycelium Fabric Layers

The fabric supports layered data access. At the bottom is the physical layer — raw records and contexts, opaque bytes, no interpretation. Above it, data layers stack with defined read modes and synchronisation modes. Each layer is declared in context metadata and discovered during traversal.

## The Layering Mechanism

The layering mechanism is a fabric concern. Specific layer types — projections, indexes, process state, data access interfaces — are instances of the mechanism, defined by the protocol libraries that create them. The fabric provides the stacking, the read mode resolution, and the synchronisation infrastructure. It does not prescribe what layers exist.

## Data Access Kinds

The fabric provides distinct kinds of data access: raw (opaque bytes, no interpretation), metadata (traversal and accumulation of context metadata), and data (schema-interpreted access where content is resolved through discovered schemas). These are the fabric's own access vocabulary — different ways of reading the same underlying structure.

Each access kind is a logical type. The same data, read through a different logical type, yields a different access experience. This is the same pattern that operates at every level of the architecture.

## Safe Mode

Safe mode is physical-layer-only access — raw bytes, no schema discovery, no interpretation, no process activation, no layering. Records as opaque bytes, contexts as structure, nothing more.

Safe mode is the recovery guarantee. Whatever the layers above do, however they are configured, the raw physical layer is reachable. If a layer is corrupted, misconfigured, or simply not needed, safe mode bypasses it entirely. The floor is always solid.

## Read Modes

Each layer declares its own read mode — how data in that layer is accessed. The read mode is a per-layer property, not a per-access choice. The subject reality defines its layers and their read modes as part of what it is. The subject accesses its own reality, not individual layers. What is seen is determined by the layer stack the subject has constituted as part of its own identity.

Read modes include direct read of settled state, changelog-aware read that includes change history, and schema-interpreted read where content is resolved through discovered schemas. The mechanism is uniform — the specific modes are defined by the layer type.

## Synchronisation

When layers derive from the same underlying data — a projection layer reading immutable records, an index tracking a mutable structure — the synchronisation mode defines how the derived layer stays current. Synchronisation modes are per-layer metadata: immediate (process on every change), batched (periodic reconciliation), or on-demand (rebuild when accessed).

The mechanism is the same as the trigger model in the process layer — data footprint observation. A derived layer is a process that watches its source and maintains its output. The fabric provides the infrastructure for declaring and discovering these relationships. The process layer provides the execution.

## Replication

Replication is a layering concern. The git-constituted boundary means every subject reality is a complete, self-contained unit that can be cloned, moved, and synchronised. References bring external data into local view. Replication mode — like synchronisation mode — is per-layer metadata.

## Interaction Modes

**Data state propagation** is the default mode. Subjects react to state changes in the fabric. Decoupled, reactive, no direct communication needed. A process produces output visible as a data state change. Another process observes the change and acts. No messages pass between them.

