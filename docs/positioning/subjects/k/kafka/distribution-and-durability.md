---
layout: default
lastmod: 2026-05-29
title: "Distribution and durability"
description: "How Apache Kafka stays available and durable: brokers and partition replication, producers and consumer groups, retention, and ZooKeeper to KRaft."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Apache Kafka](/positioning/subjects/k/kafka/) > Distribution and durability

# Distribution and durability

## Cluster and brokers

A Kafka cluster is a set of **brokers** (servers) that store partitions and serve producers and consumers. Each partition is **replicated** across several brokers — one **leader** handles reads and writes, **followers** stay in sync — so the log survives broker failure. Durability is tunable: a producer can wait for acknowledgement from the leader alone, or from all in-sync replicas.

## Producers and consumers

Producers append records to partitions (by key, or round-robin). A **consumer group** lets several consumers share a topic's partitions — each partition read by one consumer in the group — so consumption scales out while per-partition order is preserved. Offsets are committed by the consumer, which is why position, retries, and replay are the consumer's to control.

## Retention

The log is kept for a configured time or size, independent of whether it has been read; a **compacted** topic instead keeps the latest record per key, turning the log into a current-state table. Retention is what makes Kafka a store, not merely a pipe.

## Metadata: ZooKeeper to KRaft

Kafka originally used [Apache ZooKeeper](https://zookeeper.apache.org/) to manage cluster metadata and coordination. **KRaft** (Kafka Raft) moved that metadata into Kafka itself, managed by a [Raft](https://en.wikipedia.org/wiki/Raft_(algorithm)) consensus among the brokers; KRaft became production-ready in 2022, and ZooKeeper was removed in Kafka 4.0 (2025), leaving a self-contained cluster.

## Sources

- [Apache Kafka documentation](https://kafka.apache.org/documentation/) — replication, consumer groups, retention, and KRaft.
