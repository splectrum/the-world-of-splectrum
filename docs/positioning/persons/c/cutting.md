---
layout: default
lastmod: 2026-05-29
title: "Doug Cutting (1961–)"
description: "American software engineer who created the open-source projects Lucene, Nutch, Hadoop and Avro, the infrastructure of text search and big-data processing."
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Cutting

# Doug Cutting (1961–)

Doug Cutting is an American software engineer whose career has produced a sequence of open-source projects that became infrastructure for others to build on. He created the text-search library [Lucene](https://en.wikipedia.org/wiki/Apache_Lucene), co-created the web crawler [Nutch](https://en.wikipedia.org/wiki/Apache_Nutch), and from Nutch's needs created [Hadoop](https://en.wikipedia.org/wiki/Apache_Hadoop), the framework that anchored a decade of large-scale data processing. [Apache Avro](/positioning/subjects/a/avro/), the data serialization system, came from the same line of work. The through-line is practical: tools for indexing, searching, and moving large volumes of data, released as open source and handed to the communities that grew around them.

---

## Life

Born Douglass Read Cutting on 19 August 1961; he earned a B.A. from Stanford University in 1985. His early career ran through research and industry search work — Xerox PARC, where he worked on the Scatter/Gather document-clustering algorithm; Apple, where he was a primary author of the V-Twin text-search framework; and the search engine company Excite, where he was a chief designer. He later led the Hadoop project full-time at Yahoo!, and subsequently joined the data company Cloudera as its Chief Architect. He was elected to the board of directors of the [Apache Software Foundation](https://www.apache.org/) in 2009 and served as its chairman from 2010. ([Wikipedia](https://en.wikipedia.org/wiki/Doug_Cutting))

---

## Lucene

Lucene is a high-performance text search and indexing library, written in Java and first released by Cutting in 1999. Rather than a finished search application, it is a library: it provides the indexing structures and query machinery on which search features can be built. It became a top-level Apache project and the foundation of a large ecosystem, including the search servers Solr and Elasticsearch. Lucene established the pattern Cutting's later work would follow — a focused, reusable component released as open source.

---

## Nutch and Hadoop

Nutch, begun with [Mike Cafarella](https://en.wikipedia.org/wiki/Mike_Cafarella) around 2002, was an open-source web crawler and search engine built on Lucene. Its ambition — to index the web — ran into the problem of scale: storing and processing data across many machines reliably. Google's published papers on its distributed file system (2003) and on [MapReduce](https://en.wikipedia.org/wiki/MapReduce) (2004) described an approach, and Cutting and Cafarella implemented their own version of these ideas within Nutch.

That distributed-computing layer grew into a project of its own: Hadoop, a framework for distributed storage and batch processing of very large datasets across clusters of commodity hardware. The name came from Cutting's young son's yellow toy elephant. Developed full-time at Yahoo! and released through Apache, Hadoop became, for roughly a decade, the central platform of the "big data" era — the substrate beneath a wide ecosystem of data tools.

---

## Avro

Avro grew from Hadoop's need to serialize data and to move it between processes written in different languages. Cutting proposed it as a Hadoop sub-project in 2009. Its design choice — to carry the schema with the data and resolve schema differences at read time, rather than relying on generated code and stable field tags — suited Hadoop's dynamic, multi-language setting. The [Apache Avro subject pages](/positioning/subjects/a/avro/) carry the full treatment of the system itself.

---

## Where Cutting's work sits

Cutting's contribution is engineering rather than theory: durable, widely adopted tools, not a body of writing or a research programme. The consistent shape across Lucene, Nutch, Hadoop, and Avro is the same — identify a hard, general infrastructure problem, build a focused open-source component that solves it, and release it so that others build the higher layers. The significance lies less in any single design than in how thoroughly that infrastructure was taken up: much of two decades of search and data processing was built on top of it.

---

## Key works

- [Apache Lucene](https://en.wikipedia.org/wiki/Apache_Lucene) (1999) — text search and indexing library
- [Apache Nutch](https://en.wikipedia.org/wiki/Apache_Nutch) (with Mike Cafarella, c. 2002) — open-source web crawler and search engine
- [Apache Hadoop](https://en.wikipedia.org/wiki/Apache_Hadoop) (2006) — distributed storage and processing framework
- [Apache Avro](https://en.wikipedia.org/wiki/Apache_Avro) (2009) — data serialization system

---

See also: [Apache Avro](/positioning/subjects/a/avro/)
