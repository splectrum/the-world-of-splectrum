---
layout: default
lastmod: 2026-05-29
title: "Implementations and use"
description: "Apache Avro across languages: the Java reference implementation, the official and third-party SDKs, the Confluent Schema Registry, and where Avro is used."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Apache Avro](/positioning/subjects/a/avro/) > Implementations and use

# Implementations and use

Avro is a specification with many implementations. Because reading and writing are driven by a schema rather than by generated code, an implementation in any language need only interpret the [schema](/positioning/subjects/a/avro/schemas-and-encoding/) and follow the [encoding](/positioning/subjects/a/avro/schemas-and-encoding/) and [resolution](/positioning/subjects/a/avro/schema-resolution/) rules.

## Implementations

The **Java** implementation is the reference and the most complete; Java and Python carry the project's primary getting-started guides. The Apache project releases official SDKs, versioned together with each Avro release, for **Java, C, C++, C#, Python, Ruby, Perl, PHP, Rust, and JavaScript**.

- **Rust** — the official crate is [`apache-avro`](https://crates.io/crates/apache-avro), now maintained in its own repository.
- **JavaScript** — the project publishes [`avro-js`](https://www.npmjs.com/package/avro-js) on npm. Distinct from it is [`avsc`](https://github.com/mtth/avsc), a widely used third-party pure-JavaScript implementation by Matthieu Monsch; the two are separate projects and worth not conflating.

Beyond the official SDKs, community implementations exist for languages including Go, Scala, Haskell, and Elixir.

## Confluent Schema Registry

The most prominent user of Avro outside its own toolchain is the [Confluent Schema Registry](https://docs.confluent.io/platform/current/schema-registry/index.html), the de facto way Avro is used with [Apache Kafka](https://en.wikipedia.org/wiki/Apache_Kafka). It stores schemas centrally, assigns each a numeric ID, and enforces compatibility rules as schemas evolve.

It is worth being precise that the Registry's wire format and compatibility framing are **Confluent-specific**, not part of Avro itself. A Confluent-serialized message is a single magic byte (`0x00`), then a four-byte big-endian schema ID, then the Avro-encoded payload — a reference to a schema held in the Registry rather than the schema-bearing [object container file](/positioning/subjects/a/avro/protocols-and-containers/) or the RPC [handshake](/positioning/subjects/a/avro/protocols-and-containers/) that Avro defines natively. Its compatibility modes — `BACKWARD` (the default), `FORWARD`, `FULL`, their transitive variants, and `NONE` — are the Registry's policy layer enforced ahead of publication, built on top of Avro's [resolution](/positioning/subjects/a/avro/schema-resolution/) rules but not specified by Avro. The principle that the schema travels with the data is preserved in spirit — the ID travels, and the schema is one lookup away — but the carrier is Confluent's, not Avro's.

## Where Avro is used

Avro's centre of gravity is data infrastructure. It is the common message serialization format in the **Kafka** ecosystem, a first-class format in **[Apache Spark](https://en.wikipedia.org/wiki/Apache_Spark)** and across the **Hadoop** ecosystem it came from, and a frequent choice for data lakes, event streams, and data pipelines — settings where data outlives the code that wrote it and schemas change while old data and old readers remain in service.

## Sources

- [Apache Avro documentation](https://avro.apache.org/docs/) and [downloads](https://avro.apache.org/project/download/).
- [Confluent Schema Registry documentation](https://docs.confluent.io/platform/current/schema-registry/index.html) — wire format and compatibility modes.
