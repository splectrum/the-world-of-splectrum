---
layout: default
lastmod: 2026-05-29
title: "Apache Kafka"
description: "Apache Kafka, the distributed event-streaming platform built on a durable append-only log that many producers write and many consumers read and replay."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > Apache Kafka

# Apache Kafka

Apache Kafka is a distributed event-streaming platform built around a deceptively simple idea: a durable, append-only **log** of records that many producers write to and many consumers read from independently, each at its own pace. What began as a messaging system became a general substrate for moving and storing streams of events, and the log abstraction it popularised reshaped how event-driven and data-integration systems are built.

The organising idea is the log: an ordered, append-only sequence of records. Producers append; each consumer tracks its own position (an **offset**) and reads forward; records are retained and can be re-read. Because the log is durable and replayable rather than a transient queue, it serves at once as messaging, as a system of record, and as the seam between systems.

## Origin

Kafka was built at [LinkedIn](https://en.wikipedia.org/wiki/LinkedIn) around 2010 by [Jay Kreps](/positioning/persons/k/kreps/), [Neha Narkhede](/positioning/persons/n/narkhede/), and [Jun Rao](/positioning/persons/r/rao/), to carry the company's high-volume activity and operational data as a single pipeline where existing messaging systems did not scale. It was open-sourced in early 2011 and became a top-level [Apache](https://www.apache.org/) project in October 2012. Kreps named it after the writer [Franz Kafka](https://en.wikipedia.org/wiki/Franz_Kafka) — a system "optimised for writing," and he liked the author's work. In 2014 the three creators founded [Confluent](https://www.confluent.io/), the company built around Kafka. The conceptual case for the design was set out in Kreps' widely read 2013 essay, "[The Log: what every software engineer should know about real-time data's unifying abstraction](https://engineering.linkedin.com/distributed-systems/log-what-every-software-engineer-should-know-about-real-time-datas-unifying)."

## Pages

- [The log and the record](/positioning/subjects/k/kafka/the-log-and-the-record/) — the commit log, topics and partitions, the anatomy of a record, pull-based reading and replay, and the log as a unifying abstraction.
- [Distribution and durability](/positioning/subjects/k/kafka/distribution-and-durability/) — brokers, replication, producers and consumer groups, retention and compaction, and the move from ZooKeeper to KRaft.
- [Streaming and ecosystem](/positioning/subjects/k/kafka/streaming-and-ecosystem/) — Kafka Streams, Kafka Connect, Confluent and the Schema Registry, and the patterns Kafka anchors.

## Persons

- [Jay Kreps](/positioning/persons/k/kreps/) — co-creator of Kafka and co-founder and CEO of Confluent.
- [Neha Narkhede](/positioning/persons/n/narkhede/) — co-creator of Kafka and co-founder and former CTO of Confluent.
- [Jun Rao](/positioning/persons/r/rao/) — co-creator of Kafka, the distributed-systems core, and co-founder of Confluent.

## Sources

- [Apache Kafka](https://kafka.apache.org/) — the project documentation.
- Kreps, J. (2013). [The Log: what every software engineer should know about real-time data's unifying abstraction](https://engineering.linkedin.com/distributed-systems/log-what-every-software-engineer-should-know-about-real-time-datas-unifying); expanded as *I ❤ Logs* (O'Reilly, 2014).
- [Apache Kafka](https://en.wikipedia.org/wiki/Apache_Kafka) — Wikipedia, for overview and history.

---

See also: [Jay Kreps](/positioning/persons/k/kreps/) · [Apache Avro](/positioning/subjects/a/avro/) · [Martin Kleppmann](/positioning/persons/k/kleppmann/)
