---
layout: default
lastmod: 2026-05-29
title: "Streaming and ecosystem"
description: "The Apache Kafka ecosystem: Kafka Streams, Kafka Connect, Confluent's Schema Registry, and the event-sourcing and stream-table patterns it anchors."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Apache Kafka](/positioning/subjects/k/kafka/) > Streaming and ecosystem

# Streaming and ecosystem

Around the core log, Kafka grew a platform for working with streams.

- **Kafka Streams** — a library for stream processing: filtering, mapping, aggregation, windowing, and joins over topics, with local state (backed by [RocksDB](https://en.wikipedia.org/wiki/RocksDB)). It treats a stream and a table as two views of the same log (the **stream–table duality**).
- **Kafka Connect** — a framework for moving data between Kafka and external systems (databases, stores, services) through reusable connectors, without bespoke code.
- **Confluent** — the company founded by Kafka's creators in 2014. Its ecosystem adds, among other things, the **Schema Registry** — which made [Apache Avro](/positioning/subjects/a/avro/) a common payload format for Kafka — and a managed cloud service.

## Patterns

Kafka is the backbone of event-driven architectures, of **event sourcing** (the log as the system of record), and of stream–table processing — what [Martin Kleppmann](/positioning/persons/k/kleppmann/) called "turning the database inside out": exposing the change log that databases keep internally and building systems around it.

## Adoption

Kafka is widely used as the central nervous system for data in large organisations — moving operational events, metrics, and logs between services, and feeding analytics and stream processing.

## Sources

- [Apache Kafka documentation](https://kafka.apache.org/documentation/streams/) — Kafka Streams and Connect.
- [Confluent](https://www.confluent.io/) — the Schema Registry and managed platform.
