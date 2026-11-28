---
layout: default
lastmod: 2026-11-28
title: "Kafka"
description: "Kafka in Mycelium: data in motion as records in topics. The record and simple topics are built; a peer-to-peer Kafka without a broker is the direction."
---

[Home](/) > [Engineering](/engineering/) > [Mycelium](/engineering/mycelium/) > Kafka

# Kafka

In Mycelium, Kafka is about data in motion: data change records in topics, each one an immutable record of what changed. Where [Git](/engineering/mycelium/git/) keeps state at a slow heartbeat, Kafka carries what moves. What is built so far is the record and a simple topic; most of what follows is the direction. For Kafka on its own terms, see the [Kafka subject](/positioning/subjects/k/kafka/).

## What is built

**The record is the elementary container of data.** It is compatible with Kafka's record, with only the properties needed so far: its topic, key, offset, timestamp, headers and value. The data is the value, and the value's schema is the data's schema; metadata goes in the headers.

**Data lives in topics**, in Kafka's sense, a single partition each for now. A topic is typed: it is named by the type of what it holds, never by a generic word such as "log". Kafka's names are used with Kafka's meaning, and our own additions get names of their own.

**State is built from topics, never written directly.** In an mrepo, the requests already run this way: they arrive in an inbox topic, are kept in a topic once done, and leave through an outbox topic, each reader keeping its own position.

## The direction: Kafka on peers

On the peer-to-peer substrate, a partition becomes a Hypercore and an offset a position in it. There is no central broker: what a broker does is taken on by the peers. That has consequences:

- **One writer per log.** A Hypercore has a single writer, so a topic is one writer's stream, read by any number of peers. There is no single place where all writes arrive, so no global order: an application decides what order matters, and who is accepted as a writer.
- **Subscription and replication, not fetch and push.** A reader follows a stream; the records come to it by replication, not by asking a server.
- **Data is local.** A replica loads lazily what it reads, verifies each block, and from then on works as a local cache. Processing runs over local stores, which may be replicas of stores elsewhere.
- **Every reader its own position.** A follower keeps track of where it is in the stream it follows, and takes a record it has already seen as seen.
- **Data change records between repositories.** A commit in one repository becomes a record that others follow, and the processing it starts proposes changes to another. Changes flow through an application with no coordinator: processing is woken by the data, never orchestrated from outside.
- **Records that cross say what they are.** Within an install a type's URI names one schema; a record that travels carries its writer's schema fingerprint, so a reader elsewhere can read it.

The documentation as built is in [base-docs-package](https://github.com/haiccing/base-docs-package), and the direction in [base-docs-vision](https://github.com/haiccing/base-docs-vision).
