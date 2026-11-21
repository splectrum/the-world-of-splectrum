---
layout: default
lastmod: 2026-05-29
title: "Apache Avro"
description: "Apache Avro, a data serialization system: schemas defined in JSON, compact binary encoding, and the schema carried with the data, with no generated code."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > Apache Avro

# Apache Avro

Apache Avro is a data serialization system and remote-procedure-call framework. Schemas are written in JSON; data is encoded in a compact, untagged binary form; and — this is the move that organises everything else — the schema is carried alongside the data rather than assumed by the code that reads it. A reader always has both the schema the data was written with and the schema it expects, and reconciles the two at read time. Because the schema is always present, no generated, compiled class is required to read or write a record. The current release is [1.12.1](https://avro.apache.org/blog/releases/) (October 2025); the canonical reference is the [Avro specification](https://avro.apache.org/docs/).

This page gives the through-line; the sub-pages give the structured depth, each linking out to the [specification](https://avro.apache.org/docs/) for exhaustive detail rather than reproducing it.

## Design philosophy

Four commitments distinguish Avro from the binary serialization formats it grew up beside, [Apache Thrift](https://en.wikipedia.org/wiki/Apache_Thrift) and [Protocol Buffers](https://en.wikipedia.org/wiki/Protocol_Buffers):

- **The schema travels with the data.** An Avro [object container file](/positioning/subjects/a/avro/protocols-and-containers/) embeds the writer's schema in its header; an RPC connection exchanges schemas during a handshake. The bytes are never self-describing on their own, but the schema needed to read them is never far away.
- **Code generation is not required.** Thrift and Protocol Buffers lean on classes generated from a schema and compiled into the program. Avro can do this too, but its native mode is dynamic: a schema read at runtime is enough to read or write conforming data. This makes it comfortable in dynamic languages and in systems where schemas are discovered rather than fixed at build time.
- **No field tags in the data.** Protocol Buffers tag every field with a number that must stay stable across versions. Avro writes field values in schema order with nothing between them — no tags, no names, no delimiters. Fields are matched by name at read time, not by position or number in the stream.
- **Compactness.** With no tags or field names in the payload and integers written in a variable-length encoding, the encoded form is small. The schema, held once per file or once per connection, carries the structure the bytes omit.

## Origin

Avro was created by [Doug Cutting](/positioning/persons/c/cutting/) — the creator of [Lucene](https://en.wikipedia.org/wiki/Apache_Lucene) and [Hadoop](https://en.wikipedia.org/wiki/Apache_Hadoop) — and proposed as a Hadoop sub-project in 2009. Hadoop needed a serialization format and a wire protocol for moving data between processes written in different languages, and the existing options required code generation and stable field tags that sat awkwardly with Hadoop's dynamic, multi-language environment. Avro's answer was to keep the schema with the data and resolve differences at read time. It graduated to a top-level [Apache](https://www.apache.org/) project in May 2010 and is now used well beyond its origin — most visibly in the [Apache Kafka](https://en.wikipedia.org/wiki/Apache_Kafka) ecosystem, in [Apache Spark](https://en.wikipedia.org/wiki/Apache_Spark), and across data lakes and pipelines where schemas change over time.

## Pages

- [Schemas and encoding](/positioning/subjects/a/avro/schemas-and-encoding/) — schemas defined in JSON, the primitive and complex type system, and the binary and JSON encodings.
- [Schema resolution](/positioning/subjects/a/avro/schema-resolution/) — the writer's-schema / reader's-schema model, matching by name, defaults and aliases, type promotion, and the schema evolution this enables. The distinctive part of Avro.
- [Protocols and containers](/positioning/subjects/a/avro/protocols-and-containers/) — object container files, the RPC protocol layer and its handshake, and logical types layered over the base types.
- [Ecosystem](/positioning/subjects/a/avro/ecosystem/) — implementations across languages, the Confluent Schema Registry as a major user, and where Avro is used in practice.

## Persons

- [Doug Cutting](/positioning/persons/c/cutting/) — creator of Avro, Lucene, and Hadoop.
- [Martin Kleppmann](/positioning/persons/k/kleppmann/) — whose [account of schema evolution in Avro, Protocol Buffers, and Thrift](https://martin.kleppmann.com/2012/12/05/schema-evolution-in-avro-protocol-buffers-thrift.html) and *[Designing Data-Intensive Applications](https://dataintensive.net/)* (Ch. 4) are the clearest narrative treatments of the reader/writer model.

## Sources

- [Apache Avro documentation and specification](https://avro.apache.org/docs/) — the canonical reference.
- Kleppmann, M. (2012). [Schema evolution in Avro, Protocol Buffers and Thrift](https://martin.kleppmann.com/2012/12/05/schema-evolution-in-avro-protocol-buffers-thrift.html).
- Kleppmann, M. (2017). *[Designing Data-Intensive Applications](https://dataintensive.net/)*, Ch. 4. O'Reilly.

---

See also: [Domain-Specific Languages](/positioning/subjects/d/domain-specific-languages/) · [Apache Kafka](/positioning/subjects/k/kafka/) · [Doug Cutting](/positioning/persons/c/cutting/)
