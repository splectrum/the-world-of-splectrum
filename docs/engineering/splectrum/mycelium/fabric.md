---
layout: default
lastmod: 2026-05-03
title: "Mycelium Fabric"
description: "The static architecture of the mycelium data fabric: identifier points, property bags, and contexts — process-colocated data structures held in git-constituted subject realities."
sitemap: false
---

[Home](/) > [Engineering](/engineering/) > [SPLectrum](/engineering/splectrum/) > Mycelium > Fabric

# Mycelium Fabric

The static architecture of the mycelium data fabric — what it is made of and how its structure determines behaviour.

Mycelium is a data fabric. It weaves data and process together into process-colocated data structures — structures where the process that operates on data lives alongside the data itself. These structures exist as [git-constituted subject realities](./subject-reality.md) — where [git](/engineering/spl/platform/substrate/git/) provides the boundary, the memory, and the exchange.

Each subject reality has a partial view of available data. The totality of data is never a physical repository — it is only a logical totality, the sum of everything across the fabric. What actually exists is always fabric expressed as subject realities within git repos.

## The Primitive

The fabric is an [identifier structure](identifier-grammar) with property bags attached to it. Nodes are not files or folders — they are identifier points. Everything a node *has* is properties in bags.

**Identifier point** — a position in the tree, addressed by its path. The key is the address.

**Property bag** — a context at an identifier point, with an AVRO schema assigning namespace to the properties within it. The properties are the reality.

**Context** — a bounded area that contains identifier points. Identifier points can themselves be contexts.

This is the entire structural vocabulary. Everything else — behaviour, visibility, process, schema awareness — emerges from how these elements are arranged and what metadata accompanies them. Content is a property whose schema namespaces it as content. Metadata is a property whose schema namespaces it as metadata. The fabric does not know the difference. The schemas do.

## The Metadata Dimension

The underscore is one of two primitives in the [identifier grammar](identifier-grammar). It opens a property bag at the current node — a lateral move, not a deeper one. The bag is *at* the node, not *below* it. Inside the bag, property names get their namespace from the bag's AVRO schema, not from tree position.

`_server` means: open the server property bag at the current node. The prefix switches namespace resolution from tree-positional to schema-assigned.

Each underscore prefix opens a new bag. Cascading: `blog/_server/_process` is three levels:
- `blog` — identifier point in the tree (dot-navigated)
- `_server` — property bag at blog (schema-assigned namespace)
- `_process` — property bag at server (schema-assigned namespace)

### Portability

Property bags and subtrees are structurally identical to any other tree. Mount with prefix — metadata. Mount without — data. Full subtrees are portable: lift and shift. Can be developed as standalone repos and mounted via references.

## Records

### Immutable and Dirty

Base-layer mycelium has two types of records:

**Immutable** — settled, permanent, referenceable. A complete fact that arrives whole and stays whole. Immutable records are the source of truth.

**Dirty** — in-flight, part of an open transaction, can change. Dirty records serve as working space during a transaction and become immutable when the transaction closes. The consensus mechanism is pluggable — a simple local commit or a full blockchain protocol. Open state before consensus, settled state after.

### Mutable Structures as Projections

Mutable structures — tables, indexes, document libraries — are created by mycelium-native process that reads immutable data change records and maintains projections. Projections exist for practical work but are never the source of truth. They can be discarded and rebuilt from the immutable records.

## Mycelium Context

A fabric node with embedded metadata is a mycelium context. It is the reference point for embedded metadata artefacts — processes, schema definitions, behavioural rules. Contexts cascade: inner context overrides outer. Definitions reside closest to their realisation.

### Structure Is Behaviour

There are no flags. There is no configuration. A context with a bin has soft delete. What you build is how it behaves. What you don't build doesn't exist as a possibility.

This is the architecture of absence. Desirable properties emerge from what is not present rather than from what is policed.

### Metadata Embedding

Higher-level structural elements — processes, schema definitions, behavioural rules, layer declarations — are embedded in context metadata. The fabric carries them as part of its structure. Their interpretation and activation is a concern of the layers above, but their presence in the fabric is structural.

## Point of View

The working directory sets the point of view. POV determines what you can see and how you identify it. Resources are relative to POV — paths go forward, never backward above POV. The subject sees the fabric from where it stands.

Protocol operations are root-relative — all available operations are accessible regardless of where the point of view is set. What changes with POV is visibility and identity, not capability.

## References

References bring remote resources into view by creating a local identity. They are read-only — modification uses copy-on-write to the local context. Read wide, write local.

The graph of references defines the reachable set from any point of view. No reference, no access. Structure determines visibility, not permissions. There is no hidden data accessible through special privilege — only data that is or is not in your reachable set.

## Addressing

Addressing follows from ownership. The subject reality that creates data owns it, identified by the repo's unique endpoint. Cross-references from other realities trace back to the originating identifier. Fully decentralised, no central registry.

Within a subject, XPath-style addressing navigates contexts, accesses records, and reaches metadata through one uniform scheme. The path expression serves as both flat addressing and query.

## Layering

The fabric supports layered data access. At the bottom is the physical layer — raw records and contexts, opaque bytes. Above it, data layers stack with defined read modes, synchronisation modes, and replication. Each layer is declared in context metadata and discovered during traversal. The fabric provides the stacking mechanism and the infrastructure for layer discovery. Specific layer types are defined by the protocol libraries that use them.

