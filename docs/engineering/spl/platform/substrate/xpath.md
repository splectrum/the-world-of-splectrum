---
layout: default
lastmod: 2026-06-07
title: "XPath"
description: "XPath is the committed substrate language of navigation — selecting within the tree by position and path."
---

[Home](/) > [Engineering](/engineering/) > [SPL Platform](/engineering/spl/platform/) > [Language Substrate](/engineering/spl/platform/substrate/) > XPath

# XPath

XPath is the committed language of navigation — selecting within the tree. It is one of the five committed substrate languages: navigation (XPath), identity ([URI](/engineering/spl/platform/substrate/uri/)), repository management ([Git](/engineering/spl/platform/substrate/git/)), data streaming ([Kafka](/engineering/spl/platform/substrate/kafka/)), and structure ([AVRO](/engineering/spl/platform/substrate/avro/)). For XPath on its own terms — the axis model, the function library, the history — see the [XPath subject](/positioning/subjects/x/xpath/); this page is the commitment and the role it plays.

A URI identifies which resource. XPath selects within it — nodes in the tree, elements in a structure, entries in a sequence. Navigation is compositional: things are addressed by position and path, not by enrolment in a central index. The same structure navigated the same way, wherever it lives.

A selector always returns an array of pointer records. Zero matches is an empty array, one match is an array of one, many matches is an array of many. There is no null, no special "not found" case — every consumer handles one shape. Bulk by default; a single result is just an array of one.

The pointer record is a fully resolved reference. It carries enough to locate the physical data — whether that is a blob in a git tree, a record on a Kafka topic, or a key within a packed file. XPath navigates the logical tree; the pointer record resolves where the data physically lives. Navigation and access are separate: XPath produces addresses, protocols (get, put, remove) operate on them.

The query language will gain substrate-appropriate functions — git-aware, kafka-aware — to add power beyond spatial navigation. Selecting the same unit across branches or commits, querying version state, filtering by log position. A unified query language that spans the spatial tree and the temporal version axis. This is a future design area; the foundation is the selection model and the pointer record.
