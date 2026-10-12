---
layout: default
lastmod: 2026-06-07
title: "Kafka"
description: "Kafka is the committed substrate language of data streaming — the record envelope for data state change events flowing between repositories."
---

[Home](/) > [Engineering](/engineering/) > [SPL Platform](/engineering/spl/platform/) > [Language Substrate](/engineering/spl/platform/substrate/) > Kafka

# Kafka

Kafka is the committed language of data in motion — the streaming envelope for data state change events flowing between repositories. It is one of the five committed substrate languages: data streaming (Kafka), repository management ([Git](/engineering/spl/platform/substrate/git/)), structure ([AVRO](/engineering/spl/platform/substrate/avro/)), identity ([URI](/engineering/spl/platform/substrate/uri/)), and navigation ([XPath](/engineering/spl/platform/substrate/xpath/)). For Kafka the system — the cluster, partitions, the broker architecture, the ecosystem — see the [Kafka subject](/positioning/subjects/k/kafka/); this page is the commitment and the role it plays.

The unit of streaming data is the Kafka record. A data state change event is a whole document — the complete change to a mutable resource, not a field-level diff. The record carries what it needs to travel self-sufficiently: a key (the identity of the resource that changed), a value (the change document), an offset (position in the stream — arrival order as a structural fact), and a timestamp (the moment of the event). Any consumer can rebuild state from the stream alone, without needing prior state or external context.

The record's headers are an extensible, namespaced key-value store of metadata. Operational metadata, provenance, historicity, observability, lineage — each concern stamps its own namespace without interfering with others. The record carries not just the data but its full context: who produced it, when, through what process, under what version. The headers make each record self-describing; the stream as a whole is self-contained in both data and metadata.

Kafka records on topics are the authoritative source for data — not the derived operational repositories or other materialised views. The stream is the source of truth; repositories project from it. This is the fundamental split with git: git is authoritative for mutable structure (schemas, code, wiring), Kafka is authoritative for data (the events that happened). Two authorities, two concerns, no overlap.

A topic is a single-writer, multiple-reader stream. One data owner writes; any number of subscribers read. This maps directly to the P2P substrate — a Hypercore is a single-writer, append-only, signed log with sparse replication to any number of peers. The write model is settled: authoritative, single-owner, self-contained, immutable once appended. The read model — how consumers access and process stream data — is an open design area.
