---
layout: default
lastmod: 2026-05-29
title: "Schema resolution"
description: "Avro schema resolution: reconciling writer and reader schemas by name, with defaults, aliases and type promotion, and the schema evolution it enables."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Apache Avro](/positioning/subjects/a/avro/) > Schema resolution

# Schema resolution

Schema resolution is what makes Avro distinctive. Data is always written with one schema — the **writer's schema** — and read with another — the **reader's schema**. When the two differ, Avro reconciles them at read time according to a fixed set of rules. The two schemas are often the same, but they need not be, and the gap between them is exactly where schema evolution happens.

This is the mechanism [Martin Kleppmann](/positioning/persons/k/kleppmann/) treats most clearly, in [Schema evolution in Avro, Protocol Buffers and Thrift](https://martin.kleppmann.com/2012/12/05/schema-evolution-in-avro-protocol-buffers-thrift.html) and in *[Designing Data-Intensive Applications](https://dataintensive.net/)*; this page gives the shape and the [specification](https://avro.apache.org/docs/) gives the exhaustive rules.

## Matching by name

Avro matches record fields **by name**, not by position in the record and not by a numeric tag. This is the root of its evolution model. Because there are no tags in the [encoded bytes](/positioning/subjects/a/avro/schemas-and-encoding/), there is nothing to keep stable across versions except names — and fields may be reordered freely between writer and reader without consequence, since the reader locates each field by its name.

The contrast with [Protocol Buffers](https://en.wikipedia.org/wiki/Protocol_Buffers) is sharp. There, every field carries a tag number that must never be reused or changed; the tag is the field's identity in the wire format. Avro moves that identity into the schema, where names live, and out of the data.

## The resolution rules

When a reader reconciles a writer's record schema with its own:

- **A field in the writer but not the reader** is decoded and ignored. The reader does not need to know about data it has no place for.
- **A field in the reader but not the writer** is filled from the reader's declared **default** value for that field. If the reader's schema gives no default, resolution fails — this is why adding a field safely means giving it a default.
- **Reordered fields** resolve without issue, since matching is by name.
- **Numeric and string promotion** is allowed in one direction: `int` promotes to `long`, `float`, or `double`; `long` to `float` or `double`; `float` to `double`; and `string` and `bytes` promote to each other. A reader expecting a wider type can read data written with a narrower one.
- **Enums** resolve symbol by symbol; if the writer used a symbol absent from the reader's enum, the reader's declared enum **default** is used if present, otherwise resolution fails.
- **Unions** resolve by finding, in the reader's union, the branch that matches the writer's selected branch, and resolving recursively.

## Aliases

Renaming is handled by **aliases**. A named type or field in the reader's schema may declare aliases — alternative names that the reader will treat as matching. A field renamed from `username` to `name` in a new reader schema can declare `"aliases": ["username"]`, and data written with the old name still resolves. Aliases map writer names onto reader names, letting a rename happen without breaking older data.

## Schema evolution and compatibility

These rules together define what changes are safe. Adding a field with a default, removing a field, reordering fields, renaming via aliases, and widening a numeric type are all changes a reader can absorb. Whether a given change is safe depends on which side moves first, which is usually framed as a direction:

- **Backward compatibility** — a new reader can read data written by an old writer.
- **Forward compatibility** — an old reader can read data written by a new writer.
- **Full compatibility** — both hold at once.

Because Avro carries the writer's schema with the data, the reader always has both schemas available to resolve. This is the property that lets long-lived data files and long-running message streams survive schema change without coordinated, simultaneous upgrades. The compatibility checking built on top of these rules — enforced ahead of time rather than discovered at read time — is where systems like the [Confluent Schema Registry](/positioning/subjects/a/avro/ecosystem/) enter.

## Sources

- Kleppmann, M. (2012). [Schema evolution in Avro, Protocol Buffers and Thrift](https://martin.kleppmann.com/2012/12/05/schema-evolution-in-avro-protocol-buffers-thrift.html).
- Kleppmann, M. (2017). *[Designing Data-Intensive Applications](https://dataintensive.net/)*, Ch. 4. O'Reilly.
- [Apache Avro specification](https://avro.apache.org/docs/) — schema resolution rules.
