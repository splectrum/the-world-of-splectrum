---
layout: default
lastmod: 2026-05-29
title: "The log and the record"
description: "Kafka's commit log: topics and partitions, the anatomy of a record, pull-based reading with offsets and replay, and the log as a unifying abstraction."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Apache Kafka](/positioning/subjects/k/kafka/) > The log and the record

# The log and the record

## The log

Kafka's core structure is the commit log: an ordered, append-only sequence of records. A **topic** is a named log, divided into **partitions**, each an independent ordered log. Order is guaranteed **within a partition** — every record there has a monotonically increasing **offset** — but not across a topic. Partitioning is what lets a topic scale horizontally and be consumed in parallel.

## The record

A Kafka record is a self-contained unit of data in motion:

- **key** — optional; selects the partition (same key → same partition → kept in order) and gives identity.
- **value** — the payload; opaque bytes to Kafka.
- **headers** — optional key–value metadata travelling with the record.
- **offset** — its position in the partition; the consumer's bookmark.
- **timestamp** — when it was produced or appended.

Identity, payload, contextual headers, order, and time — that is what a datum needs to travel and be interpreted away from its source.

## Reading

Consumers are not pushed records; they **pull**, each tracking its own offset. Because records persist (by time- or size-based **retention**), a consumer can start at the beginning, resume where it left off, or **replay** history. This is the departure from a traditional queue, where a message is consumed and gone: in Kafka the log is the durable record and reading is non-destructive.

## The log as a unifying abstraction

Kreps' argument — the 2013 essay "[The Log](https://engineering.linkedin.com/distributed-systems/log-what-every-software-engineer-should-know-about-real-time-datas-unifying)," expanded as the short book *I ❤ Logs* — is that this same structure underlies database replication, state-machine replication, and data integration: an ordered log of changes is what keeps independent systems consistent and lets new ones be built by replaying it. Kafka makes that log a first-class, shared piece of infrastructure.

## Sources

- [Apache Kafka documentation](https://kafka.apache.org/documentation/) — topics, partitions, and records.
- Kreps, J. (2013). [The Log](https://engineering.linkedin.com/distributed-systems/log-what-every-software-engineer-should-know-about-real-time-datas-unifying).
