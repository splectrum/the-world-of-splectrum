---
layout: default
lastmod: 2026-11-28
title: "URI"
description: "URI in Mycelium: our rules for naming. Always relative to where the writer stands, forward only, one form for a name in a path, in data and in AVRO."
---

[Home](/) > [Engineering](/engineering/) > [Mycelium](/engineering/mycelium/) > URI

# URI

In Mycelium, a URI names something in an mrepo: a node, a layer, a document. It is a plain path of `/`-separated parts, with no scheme, query or fragment, and it is validated once, where it enters, into its canonical form. A URI that selects is a query, and is read by [XPath](/engineering/mycelium/xpath/). For URI on its own terms, see the [URI subject](/positioning/subjects/u/uri/).

## Relative, and forward only

A URI has no leading slash: it is written relative to where its writer stands. Whoever writes a command stands at `main`, the data; from outside, `main` is all of an mrepo that can be named. There is no `..`. A running mrepo sees only forward, what is below it, and reaches anything outside through a mapping.

A request handed to an mrepo forgets the path it took outside: the mrepo knows where it is relative to itself, not where it sits in a larger tree. Inside, a URI is kept as a chain of parts (the layer first, then the positions passed through, then the URI as written), so that no boundary is parsed again.

Every mrepo also has a unique URI of its own, its namespace and its name, and is addressed by it.

## Names

- **A part** is lowercase letters, digits and `-`. Any folder can become a branch, and a branch a folder.
- **A file's part includes its extension**: its storage format is part of its name.
- **`_` is reserved**, the one character left free for an encoding, should one be needed.
- **A name starting with a dot is no URI's**: what a container keeps beside its data stays out of reach of any query.

## Data names

The names inside records and values follow one rule too: lowerCamelCase, never two capitals in a row (`publicKey`, `dhtUrl`). Such a name has one form in JSON, in memory, in AVRO and as a Kafka header, used as it is. In a URI it takes its URI form, each capital a `-` and the letter in lowercase (`public-key`), exact both ways. So a path can go on from the folders into a document's keys without changing how it is written.

The documentation is in [base-docs-uri](https://github.com/haiccing/base-docs-uri).
