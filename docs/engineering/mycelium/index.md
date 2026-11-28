---
layout: default
lastmod: 2026-11-28
title: "Mycelium"
description: "Mycelium, the data fabric: built on five languages (Kafka, Git, AVRO, URI, XPath), logical apart from physical, linking and layering repositories."
---

[Home](/) > [Engineering](/engineering/) > Mycelium

# Mycelium

Mycelium is the data repository concept, the data fabric: the data structure that an mrepo, a repository that runs, implements. It starts from data in motion: streams of data change records, each one an immutable record of what changed. XPath queries the data, keeping the logical apart from the physical. AVRO provides the contracts for the base layer of the data, and the paradigms (objects and documents, later tables) build on top of it.

The name comes from the network of fungal threads underground. What shows above ground is a local expression of a connected whole.

## Five languages

Mycelium is built on five languages. Each is a set of concepts, and the five are used together: from each, what fits is taken and the rest simplified away.

- **[Kafka](/engineering/mycelium/kafka/)**: streaming. Data in motion as records in topics, the record the elementary container of data.
- **[Git](/engineering/mycelium/git/)**: state in layers, kept through time. Each layer a branch, each change a commit, each commit a checkpoint.
- **[AVRO](/engineering/mycelium/avro/)**: the data structure contracts. Every value is to have a schema, and a type is named by a URI.
- **[URI](/engineering/mycelium/uri/)**: our rules for naming, always relative to where the writer stands, and forward only: a repository sees what is below it, and reaches anything outside through a mapping.
- **[XPath](/engineering/mycelium/xpath/)**: querying, with the forward part of standard XPath (2.0), built in phases.

Records and objects sit side by side in a repository: records in topics at one level, objects at the other, and an object may be generated from its change records.

From outside, a repository has no layers. What it shows is `main`, its data; the other layers hold its metadata and are the mrepo's own, internal to it.

The standards themselves are on their subject pages: [Kafka](/positioning/subjects/k/kafka/), the event-streaming platform built on a durable append-only log; [Git](/positioning/subjects/g/git/), distributed version control with history as content-addressed snapshots; [Avro](/positioning/subjects/a/avro/), schemas with a compact binary encoding; [URI](/positioning/subjects/u/uri/), one syntax for identifying any resource; and [XPath](/positioning/subjects/x/xpath/), paths of steps that select nodes in a tree.

## Logical over physical

A query is logical: it moves through the data structure, irrespective of its storage structure. The storage structure is the physical side: folders, file names, the way a topic's records are laid out, all out of the query's sight. Translating the logical query into reads of the storage happens underneath, and that work is logged, so both sides stay visible.

Because a query knows only the data structure, what lies beneath a node can be anything that answers to it. Today that is the repository's own storage, in more than one structure. A different way of storing is another translation underneath; readers do not change. Other repositories, remote or stored differently, are where that leads.

## Linking and layering

The logical reading is what lets Mycelium link in other repositories. A link is a node whose data comes from another repository. What is built is the first hop: a command that reaches a link is sent on, with what is left of its URI, to the repository the link leads to, on the same machine. A query answered across links, and links to remote repositories, are the direction.

Layering is the same principle in depth, also a direction. Several layers are overlaid at one position: what a query sees is their combination, in an assigned order where several read-only layers stand together, while what is stored stays apart and a write goes to the local side only.

## P2P underneath

Decentralisation comes from the peer-to-peer substrate, the [Holepunch stack](/engineering/third-party-software/p2p/): append-only logs, a single writer per log, replication between peers. The languages are chosen to fit it. Git already runs on it; Kafka's log on it is the direction. The repository itself does not depend on it: the same repository runs on a filesystem or on a peer-to-peer store.

The documentation as built is in [base-docs-package](https://github.com/haiccing/base-docs-package) (the mrepo, its layers and topics), [base-docs-uri](https://github.com/haiccing/base-docs-uri), [base-docs-xpath](https://github.com/haiccing/base-docs-xpath) and [base-docs-avro](https://github.com/haiccing/base-docs-avro), and the direction in [base-docs-vision](https://github.com/haiccing/base-docs-vision).
