---
layout: default
lastmod: 2026-06-07
title: "AVRO"
description: "AVRO is the committed substrate language of structure, articulating the shape of data with conformance discovered through reader/writer schema resolution."
---

[Home](/) > [Engineering](/engineering/) > [SPL Platform](/engineering/spl/platform/) > [Language Substrate](/engineering/spl/platform/substrate/) > AVRO

# AVRO

AVRO is the committed language of structure — it articulates the shape of data. It is one of the five committed substrate languages: structure (AVRO), repository management ([Git](/engineering/spl/platform/substrate/git/)), data streaming ([Kafka](/engineering/spl/platform/substrate/kafka/)), identity ([URI](/engineering/spl/platform/substrate/uri/)), and navigation ([XPath](/engineering/spl/platform/substrate/xpath/)). For AVRO on its own terms — schemas, encodings, the resolution rules, the type system, the ecosystem — see the [AVRO subject](/positioning/subjects/a/avro/); this page is the commitment and the role it plays.

Conformance is discovered, not declared. AVRO reads a record by asking whether it can be read as a given type — the writer's schema reconciled with the reader's at the point of contact — not by an authority assigning it an identity. There is no schema registry: schemas are facts present in the fabric. Versioning follows — the question is whether a reader exists that can read the data, a discovery rather than a policy. This is what makes AVRO the right structure language for a decentralised architecture with no central controller.

The data schema is the carrier: it carries structure without committing to what the structure means. The namespace places that structure into a meaning context. AVRO's nominal gate — the name check before structural resolution — enforces the language commitment natively: the same bytes read under different names are different readings, not one datum reinterpreted.

A physical type carries data structure; a logical type declares functional capability. AVRO carries both on the same definition, so the structure language carries the shape of data together with the operations defined over it.
