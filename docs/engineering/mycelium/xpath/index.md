---
layout: default
lastmod: 2026-11-28
title: "XPath"
description: "XPath in Mycelium: the forward part of standard XPath 2.0, built in phases. A query is logical, its results read lazily, and it stops at a link."
---

[Home](/) > [Engineering](/engineering/) > [Mycelium](/engineering/mycelium/) > XPath

# XPath

In Mycelium, a [URI](/engineering/mycelium/uri/) that selects is a query, and the query is XPath: the forward part of standard XPath 2.0, built in phases. Nothing looks back or up. XPath 2.0 rather than 1.0 because it is typed, as data with a schema is; it works on ordered sequences, as a topic's records are; and it orders text as text. For XPath on its own terms, see the [XPath subject](/positioning/subjects/x/xpath/).

## Through folders and documents

A query walks an mrepo's tree: its nodes, and the documents beside them. A node's document continues the tree below it, so a path goes on from the folders into a document's keys without a break. The first phase is built: steps by name or `*`, filters that compare values, positions, `and`, `or` and `not()`, and a few functions. What is outside the phase, descendants and unions among them, is refused and says so.

Every command is a map over the nodes its URI selects: one node, none or many, alike.

## Logical over physical

A query is logical: it moves through the data structure, irrespective of its storage structure. A topic is a node, and its children are its records, in the order they arrived; a record's own fields are attributes, its data a path below it. How the records are actually kept, in folders by the digits of their offsets, is the physical side, and a query does not see it. Each layer says how it is stored, and the logical query is translated into physical reads underneath. That translation is logged, so both sides stay visible.

A query says where, never how many.

## Read as it is needed

A query answers a node set: what was asked, where it has read to, and how its storage is laid out. It holds no data until it is read. Whoever reads it takes the next node, and when the reading crosses the end of what is held, the next slice is fetched behind the scenes. How many to take is the reader's own choice; only the slices taken are fetched. A result is completed as it is read, not answered all at once.

## At a link

A query stays within its own mrepo. Where it reaches a link to another, it stops, and what is left of it goes on from there, through HAICC: one hop is built, for commands sent on across a link. Queries answered across links are the direction.

To come, with AVRO: what is an attribute and what is a node taken from the schema, and a query checked against the schema before it reads.

The documentation is in [base-docs-xpath](https://github.com/haiccing/base-docs-xpath).
