---
layout: default
lastmod: 2026-06-07
title: "Language Substrate"
description: "The five tightly integrated languages of the SPL platform: Git for repo management, Kafka for streaming, AVRO for structure, URI for identity, XPath for navigation."
---

[Home](/) > [Engineering](/engineering/) > [SPL Platform](/engineering/spl/platform/) > Language Substrate

# Language Substrate

The SPL platform runs on a substrate of five tightly integrated languages. They are not independent choices — they form an operational stack whose default mode is data propagation across the swarm: data change events flow between repos as a stream, and faster interactions build on top of this base mode.

The five languages run on a P2P substrate — the Holepunch stack and Pear. That substrate has its own paradigm: content-addressed storage, single-writer ownership, append-only logs, signed replication, peer-to-peer exchange with no central server. The languages are not bolted onto this infrastructure — they are adapted to fit it. Git's content-addressed object model, Kafka's append-only log, AVRO's self-describing binary encoding, the decentralised addressing of URI and XPath — each aligns naturally with the P2P paradigm because they share the same assumptions about how data is owned, verified, and exchanged.

Each language is adopted as a subset — SPL takes the paradigm that makes it a good fit and simplifies the rest away. The fundamental split in the stack is between git and Kafka. Git holds mutable state — the current reality of a data owner's repository, rewritten by commits. Kafka holds the immutable stream — the sequence of data change events that flow between repositories. One is the state; the other is the motion. The remaining three languages serve both sides: AVRO structures the data that git stores and Kafka carries, URI identifies where it lives, XPath navigates within it.

Five languages, one operational picture: the swarm propagates Kafka records containing AVRO-encoded data change events, addressed by URI and XPath, versioned and historicised by git.

- **[Git](/engineering/spl/platform/substrate/git/)** — repo management and historicity. Each data owner's reality is a git repository on the P2P substrate, carrying its full history and operating independently. Commits, refs, the DAG as transaction model; exchange between owners is decentralised and boundary-respecting.
- **[Kafka](/engineering/spl/platform/substrate/kafka/)** — data change event streaming. Defines the format of propagated data — data change events travel as records, the streaming envelope that carries data, context, and provenance in transit. Arrival order and timestamp give the stream its temporal structure.
- **[AVRO](/engineering/spl/platform/substrate/avro/)** — data structure. Schema-driven content with reader/writer resolution for evolution. Schemas as structural contracts, namespaces as meaning contexts, and safe evolution across independent parties.
- **[URI](/engineering/spl/platform/substrate/uri/)** — resource identity. Identifies resources across a decentralised swarm — an SPL-specific subset of URI designed for addressing repos and their contents rather than the full web specification.
- **[XPath](/engineering/spl/platform/substrate/xpath/)** — navigation within a resource. Once a URI identifies the target, XPath addresses the parts within it — nodes in a tree, elements in a structure.
