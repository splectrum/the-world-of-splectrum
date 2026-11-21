---
layout: default
lastmod: 2026-05-29
title: "Martin Kleppmann"
description: "Cambridge computer scientist, author of Designing Data-Intensive Applications and a founder of local-first software, working on CRDTs and Automerge."
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Kleppmann

# Martin Kleppmann

Martin Kleppmann is a computer scientist at the University of Cambridge, known for his writing on the architecture of data systems and for his work on local-first collaboration software. His book *[Designing Data-Intensive Applications](https://www.oreilly.com/library/view/designing-data-intensive-applications/9781098119058/)* (2017) became a widely used reference on the trade-offs behind databases, storage, replication, and distributed data processing. His research centres on [conflict-free replicated data types](https://en.wikipedia.org/wiki/Conflict-free_replicated_data_type) (CRDTs) and on the local-first software movement, which he helped name and define.

---

## Life and career

Kleppmann studied computer science at Cambridge as an undergraduate, graduating in 2006, and returned there for doctoral work on collaborative-editing algorithms. Before his academic career he worked in industry: he co-founded the startups Go Test It (acquired by Red Gate Software in 2009) and Rapportive (acquired by LinkedIn in 2012), and worked on large-scale stream processing at LinkedIn, where he became a committer on the [Apache Samza](https://en.wikipedia.org/wiki/Apache_Samza) project. He held research fellowships at Cambridge and at the Technical University of Munich before being appointed Associate Professor in Cambridge's Department of Computer Science and Technology in 2024. His [personal site](https://martin.kleppmann.com/) collects his writing, talks, and papers; his [university profile](https://www.cst.cam.ac.uk/people/mk428) lists current research and teaching.

---

## Designing Data-Intensive Applications

Published by O'Reilly in 2017, *Designing Data-Intensive Applications* is a synthesis of the knowledge needed to reason about systems that store and process data at scale. Rather than advocate particular technologies, it works through the underlying concerns — data models, storage and retrieval, encoding and evolution, replication, partitioning, transactions, consistency, and the design of batch and stream processing — and the trade-offs that distinguish one design from another. The book is widely used as a reference by engineers building data systems, and it is what established Kleppmann's reputation in the field. A second edition, co-authored with Chris Riccomini, is published by O'Reilly in 2026.

The book's chapter on encoding and evolution gives one of the clearest available accounts of how serialization formats handle schema change, comparing [Apache Avro](/positioning/subjects/a/avro/), Protocol Buffers, and Thrift; the same comparison appears in his 2012 essay on the subject.

---

## Local-first software

In 2019 Kleppmann, with Adam Wiggins, Peter van Hardenberg, and Mark McGranaghan, published the essay "[Local-first software: you own your data, in spite of the cloud](https://www.inkandswitch.com/essay/local-first/)" through the [Ink & Switch](https://www.inkandswitch.com/) research lab, presented at the Onward! symposium. The essay names and argues for a class of software in which data lives primarily on the user's own devices and synchronises between them without depending on a central server, while still supporting the real-time collaboration that cloud applications provide. It sets out a series of ideals — fast local access, working offline, cross-device sync, longevity, privacy, and user ownership and control — and frames local-first as a research and design agenda for meeting them. The essay has become the reference point for the movement of the same name.

---

## CRDTs and Automerge

A conflict-free replicated data type (CRDT) is a data structure that can be modified independently on several devices and then merged automatically, without conflicts and without a central coordinator. CRDTs are the technical foundation of the local-first programme, and they are the centre of Kleppmann's research.

He is one of the people behind [Automerge](https://automerge.org/), an open-source CRDT library that provides a JSON-like data structure editable concurrently and merged automatically; its 2.0 release was rewritten in Rust, compiling to WebAssembly for browsers and to native libraries for other languages. On the theoretical side, Kleppmann and colleagues produced a machine-checked proof of CRDT correctness — "Verifying Strong Eventual Consistency in Distributed Systems" (2017), which uses the [Isabelle/HOL](https://en.wikipedia.org/wiki/Isabelle_(proof_assistant)) proof assistant to verify the convergence of replicated data structures, and which received a distinguished paper award at OOPSLA.

---

## Where Kleppmann's work sits

Kleppmann's contribution is engineering and exposition rather than a single theoretical result: synthesising the scattered knowledge of data systems into a reference others rely on, and advancing — through working software and formal proof together — an alternative to the cloud-centralised model of collaboration software. The local-first programme he helped articulate is an active research and design agenda rather than a settled body of practice, and how far it can displace the server-centred model in mainstream software is still open.

---

## Key works

- *[Designing Data-Intensive Applications](https://www.oreilly.com/library/view/designing-data-intensive-applications/9781098119058/)* (O'Reilly, 2017; 2nd edition with Chris Riccomini, 2026)
- "[Local-first software: you own your data, in spite of the cloud](https://www.inkandswitch.com/essay/local-first/)" (with Adam Wiggins, Peter van Hardenberg, and Mark McGranaghan; Ink & Switch / Onward!, 2019)
- "[Verifying Strong Eventual Consistency in Distributed Systems](https://martin.kleppmann.com/papers/crdt-isabelle-oopsla17.pdf)" (OOPSLA, 2017) — Isabelle/HOL verification of CRDTs
- [Automerge](https://automerge.org/) — open-source CRDT library

---

See also: [Apache Avro](/positioning/subjects/a/avro/) · [Apache Kafka](/positioning/subjects/k/kafka/) · [Doug Cutting](/positioning/persons/c/cutting/)
