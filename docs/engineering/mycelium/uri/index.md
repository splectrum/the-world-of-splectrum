---
layout: default
lastmod: 2026-11-28
title: "URI"
description: "URI in Mycelium: our rules for naming, always relative to where the writer stands, forward only, with one form for a name in a path, in data and in AVRO."
---

[Home](/) > [Engineering](/engineering/) > [Mycelium](/engineering/mycelium/) > URI

# URI

In Mycelium, a URI names something in an mrepo, a repository that runs: a node, a layer, a document. It is a plain path of `/`-separated parts, with no scheme, query or fragment, and it is validated once, where it enters, into its canonical form. A URI that selects is a query, and is read by [XPath](/engineering/mycelium/xpath/). For URI on its own terms, see the [URI subject](/positioning/subjects/u/uri/).

## Relative, and forward only

A URI has no leading slash: it is written relative to where its writer stands. Whoever writes a command stands at `main`, the data; from outside, `main` is all of an mrepo that can be named. There is no `..`. A running mrepo sees only forward, what is below it, and reaches anything outside through a mapping.

A request handed to an mrepo forgets the path it took outside: the mrepo knows where it is relative to itself, not where it sits in a larger tree.

Every URI is relative to something, and can still be unique within the context it is used in. An mrepo's own URI, its namespace and its name, is unique within its install, and the mrepo is addressed by it there.

## Names

- **A part** is lowercase letters, digits and `-`. The same rules hold for folders and branches, so any folder can become a branch, and a branch a folder.
- **A file's part includes its extension**: its storage format is part of its name.
- **`_` is reserved**, the one character left free for an encoding, should one be needed.
- **A name starting with a dot is no URI's**: what a container keeps beside its data stays out of reach of any query.

## Data names

The names inside records and values follow one rule too: lowerCamelCase, never two capitals in a row (`publicKey`, `dhtUrl`). Such a name has one form in JSON, in memory, in AVRO and as a Kafka header, used as it is. In a URI it takes its URI form, each capital a `-` and the letter in lowercase (`public-key`), exact both ways.

The documentation is in [base-docs-uri](https://github.com/haiccing/base-docs-uri).
