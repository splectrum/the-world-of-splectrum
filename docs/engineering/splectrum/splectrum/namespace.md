---
layout: default
lastmod: 2026-05-03
title: "Namespace"
description: "The SPLectrum naming system: identifier grammar, how one identifier carries multiple dimensions, the namespace backbone, identifier mapping, and versioning."
sitemap: false
---

[Home](/) > [Engineering](/engineering/) > [SPLectrum](/engineering/splectrum/) > SPLectrum > Namespace

# Namespace

The naming system of the SPLectrum framework — how things are identified, how identifiers carry multiple dimensions, and how naming maps to resolution.

## Identifier Grammar

Two structural primitives in the naming language:

- **Dot** — namespace dimension. Separates namespace segments. `spl.mycelium.fabric`.
- **Single underscore prefix** — metadata dimension. Identifies a metadata subtree belonging to the parent node. `_schemas`, `_process`.

These are upfront dimensions of the identifier backbone — not conventions that emerge through use. The grammar is extendable as new dimensions are discovered.

## One Identifier, Multiple Dimensions

Every node in the namespace is identified by a single fully qualified name. This name carries the potential of encapsulated dimensions — each realised when read through a corresponding reader schema:

- **AVRO schema namespace** — schema identity
- **Git repository** — subject reality, endpoint, history
- **Logical type namespace** — meaning language identity
- **Protocol library** — operational capability
- **Fabric context path** — addressable location

These are not mappings. The identifier is readable as schema identity, as repo identity, as logical type, as protocol binding. Which dimensions are active depends on what reader schemas are in scope. The potential is always there. The realisation is contextual.

AVRO identifiers — living in the namespace dimension — are underscore-free. General identifiers can include underscore parts when referencing associated metadata subject realities.

## The Backbone

```
spl                          — the framework. Seed, carrier language, naming grammar.
spl.mycelium                 — physical pillar. Data fabric.
spl.mycelium.fabric          — substrate. Records, contexts, metadata dimension.
spl.mycelium.fabric.layers   — layering, read modes, synchronisation, replication.
spl.mycelium.xpath           — addressing, traversal, data protocols.
spl.mycelium.xpath.datauri   — data nodes, opaque bytes.
spl.mycelium.xpath.data      — data nodes, schema-interpreted.
spl.mycelium.protocol        — meaning context for operations. Envelope, resolution.
spl.mycelium.concept         — meaning context for data schemas. Schema flavouring.
spl.mycelium.avro            — AVRO as constitutive technology. Schemas, RPC, "readable as".
spl.mycelium.git             — git as constitutive technology. Boundary, history, exchange.
spl.mycelium.process         — dynamic runtime. Watchers, readiness, boot.
spl.mycelium.process.execute — execution environment. Uniform setup, WYSIWYG.
spl.splectrum                — logical pillar. Language fabric.
spl.haicc                    — cognitive pillar. Activation fabric.
```

`spl` is the framework top-level. The backbone is not rigid — other top-level nodes can exist alongside `spl`. Child nodes below these exist as and when needed. A parent namespace need not exist as a repo for its children to exist. The tree grows from the leaves.

## Namespace Trees

The fabric is woven from namespace trees. Every language that participates in the fabric gets its own namespace tree — its own way of organising identity, its own structure for naming what it knows. The three committed languages — AVRO, git, Kafka — are three such trees. The principle extends to any language.

- **Data at rest** — the fabric tree. A navigable structure of dot-paths and nodes, with property bags at each level. Git provides the history dimension. The landscape of data at rest — stable, addressable, structured.
- **Schema at rest** — AVRO's domain. An AVRO schema assigns namespace to field names. The schema defines what the data is at a given point in the tree. Physical schemas attached at the points where conformance matters.
- **Data in motion** — Kafka and the protocol namespace. Streaming carries data between locations, between trees, between contexts. The protocol and operator namespace organises what happens with that data.

The pivot between any two trees is the same principle: can this data, structured by one tree, be read as what another tree expects? Schema resolution in AVRO is precisely this — reader schema asks whether the writer schema is readable as what the reader needs. The same test applies between any two namespace structures. One principle, everywhere. Not a mapping table — a structural relationship between languages.

Where the pivot loses something, languages genuinely differ. Every transformation between languages has a loss profile. That is not failure — it is equal standing making itself visible. P4: languages have equal standing in potential. The loss at the pivot is where that difference becomes concrete.

## Identifier Mapping

Identifiers are mapped at all scopes where they are in play — fabric addressing relative to cwd, AVRO schema resolution relative to subject reality, remote references mapping to external sources. The aim: use an identifier sufficient for the context at hand, but not more. The excess is hidden in the addressing logic.

Mapping is decentralised. Each context contributes its own mappings. Resolution can chain through multiple passes depending on the repositories in play — a local identifier may rewrite through several mappings before reaching fully qualified form.

The execution context keeps sufficient pointer to resolve shortened identifiers back to their fully qualified form. This mapping state is an important part of the request execution context.

All referencing beyond local scope is hidden — the same way all code is hidden behind the RPC server. The subject sees only local identifiers. The infrastructure resolves everything beyond.

An optional domain prefix can be added for external identity. Not architecturally required.

## Versioning

Versioning is metadata, not name. Version metadata is advisory to the compatibility unit of the functional resolution algorithm — it helps resolution select, but the actual compatibility test is "readable as." When something diverges beyond "readable as" the original, it becomes a new namespace node — a new concept, not a version increment.

