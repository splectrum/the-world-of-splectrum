---
layout: default
lastmod: 2026-05-03
title: "Mycelium XPath"
description: "XPath is the addressing and query language over the mycelium fabric: traversal, point of view, data scope versus functional resolution, and the protocol namespace tree."
sitemap: false
---

[Home](/) > [Engineering](/engineering/) > [SPLectrum](/engineering/splectrum/) > Mycelium > XPath

# Mycelium XPath

XPath is the addressing and query language over the mycelium fabric's logical structure. The same path expression serves as both direct address to a known location and as a pattern that resolves against the fabric structure. One scheme navigates contexts, accesses records, and reaches metadata.

## Traversal

Navigation walks the path from root to target. At each segment, the traversal checks for context definitions — metadata. These are merged into an accumulator as the path is walked. Nearest distance wins: metadata defined closer to the target overrides metadata from further up the path.

Mutability, changelog mode, enforcement, and all other behavioural properties are driven by metadata accumulated during traversal. The path determines the rules. Different paths to different targets accumulate different metadata, producing different behaviour. The fabric is not uniformly configured — it is locally shaped.

## Point of View

Two levels of POV operate in the fabric:

- **Subject reality POV** — the repo root. The subject's overall perspective and the ceiling for functional resolution.
- **Process POV** — the invocation context (cwd). The data root for all queries.

## Addressing

All data addressing uses absolute syntax. `/` means the process POV (cwd) — there is no data concept of "above." Every query is absolute from where the process stands. No relative vs absolute distinction. The addressing language reflects the design: POV determines your reality.

## Data Scope and Functional Resolution

The fabric has two directional axes, each with strict visibility:

- **Data scope** — forward from process POV into self and descendants. `/` is the root. No data visibility outside this scope.
- **Functional resolution** — from process POV up the ancestor axis to subject reality POV (repo root). Nearest ancestor wins. No functional visibility outside this scope.

The functional axis connects process POV to subject reality POV. The data axis extends forward from process POV. The two axes never cross: data does not look up, function does not look down.

## Portability

This makes subtrees completely portable — data and functionality. A subtree's data scope is self-contained (everything below). Its functional context is accumulated from above. Addressing holds because `/` is always the process POV, not a fixed location. Lift a subtree, place it elsewhere in the fabric — same data, different ancestor axis, different functional resolution. The subtree doesn't need to know where it sits.

## Flat and Hierarchical Results

The default navigation of the tree is from context node to context node, flattening all simple (non-context) nodes. The query syntax does not change — what changes is the shape of the result set: flat or hierarchical. A node whose interior has no contexts returns a flat list. A node with nested contexts returns structure.

## Protocol Namespace Structure

The data protocols form a tree hierarchy under xpath. Three visibility domains — `data`, `metadata`, `raw` — each with two levels of access: `uri` (opaque) and direct (schema-aware). Operations — `get`, `put`, `delete` — are [defined operators](identifier-grammar#defined-vs-applied-operators) in the tree, part of each protocol's identity.

```
xpath.data.uri.get       xpath.metadata.uri.get       xpath.raw.uri.get
xpath.data.uri.put       xpath.metadata.uri.put       xpath.raw.uri.put
xpath.data.uri.delete    xpath.metadata.uri.delete    xpath.raw.uri.delete
xpath.data.get           xpath.metadata.get           xpath.raw.get
xpath.data.put           xpath.metadata.put           xpath.raw.put
xpath.data.delete        xpath.metadata.delete        xpath.raw.delete
```

Every level is the same definitional move. `xpath` defines three visibility domains. Each domain defines `uri` as an opaque sub-protocol. Both the domain and the sub-protocol define `get`, `put`, `delete` as operators. The schemas at each node distinguish sub-protocol from operator.

| Domain | Visibility | URI level | Direct level |
|--------|-----------|-----------|-------------|
| data | data nodes | opaque bytes | schema-interpreted |
| metadata | metadata nodes | opaque bytes | schema-interpreted |
| raw | all nodes | opaque bytes | schema-interpreted |

The uri level is purely structural — navigate, retrieve, place, remove. The schema-aware level adds content interpretation through discovered schemas. Both are base layer / fabric.

Separation is structural: data for data nodes only, metadata for metadata nodes only, raw for all nodes. No mixing of concerns.

[Applied operators](identifier-grammar#defined-vs-applied-operators) — `_is`, `_noop`, and whatever base interface emerges — are in property bags at any identifier point. They compose through the schema inheritance mechanism, not through the tree.

## Serialization

Operations are bulk — arrays of key-value records. Serialization uses AVRO containers. Every get returns a container. Every put accepts a container. The [message](message) carries these as Kafka records — headers for intent, value for result.

## Design Principles

- **Protocol as tree** — the protocol hierarchy makes structural relationships explicit. No compound names hiding structure.
- **Raw is full visibility** — the unfiltered physical reality. Data and metadata are lenses.
- **Opaque at uri level** — purely structural.
- **Defined operators in the tree** — `get`, `put`, `delete` are part of the protocol's identity, dot-navigated.
- **Applied operators in property bags** — universal capabilities like `_is` are underscore-navigated, schema-namespaced.
- **Bulk only** — no singular case.

