---
layout: default
lastmod: 2026-11-28
title: "AVRO"
description: "AVRO in Mycelium: the data structure contracts, with types named by URI, core types and variants, compatibility the reader's question, a strict registry."
---

[Home](/) > [Engineering](/engineering/) > [Mycelium](/engineering/mycelium/) > AVRO

# AVRO

In Mycelium, AVRO provides the data structure contracts: every value is to have a schema, checked where it enters, with no leniency, and trusted once it is inside. One schema types a value in whatever form it is stored: a document in Git stays JSON, a record in a topic is to be AVRO's binary, and both are read by the same schema. For AVRO on its own terms, see the [Avro subject](/positioning/subjects/a/avro/).

## Named by URI

A type is named by a [URI](/engineering/mycelium/uri/): the organisation, the package and the type's name. AVRO's own name for it is derived behind the scenes, exact both ways. Types belong to packages, never to the code under them: a contract is on what a package offers, its actions and its data. A schema's identity is its fingerprint, and a schema never changes: a new version is a new schema, kept beside the old.

## Core types and variants

A type means the same thing with more or less detail, and the detail depends on where it is used. So a type has a core and its variants. The core type is in the name, the variant's context in the namespace: one string, two parts. A base type travels broadly: a reader holding the base reads every variant, skipping the extra detail, and a variant reads the base, filling in its own detail from defaults. AVRO's own resolution already works this way.

## Is and is-like

Compatibility is the reader's question, asked at read time: can this be read in this schema's way? *Is* covers one core type, its versions and variants, read as AVRO reads them. *Is-like* reads one core type as a different one, only when the reader asks for it, and says how it matched them. Nothing about compatibility is decided in advance.

## Structure or language

Structure is used where something acts on the data exactly: an identifier passed on, a state branched on, an address, a number compared. What is read is said in natural language: what was asked, what happened, why it failed, what to do next. Where in doubt, it is said; structure comes when what acts on it is there. A fact is given once, never as a field and in the text beside it. The judge of the line is an AI, as the main reader of the data.

## The registry

The schema registry is a component of every install, every platform installation, and the authoritative point for its schemas. It gathers the types from the packages the install holds, keeps them in its `main` as its visible state, and refuses a changed schema under a name it already holds. It has none of the usual registry's machinery: no subjects bound to topics, no global ids, no compatibility modes. Each mrepo, a repository that runs, keeps a register of the types it uses, a local cache, to be filled from the registry.

## Where it stands

The registry and its strict load are built, and every mrepo holds the few types it needs to start. Most packages are still being brought over to the contracts, one at a time. Asking the registry for a type not yet held, the variants, and a protocol for validating and reading is-like are agreed and not yet built.

The documentation as built is in [base-docs-avro](https://github.com/haiccing/base-docs-avro), and the direction in [base-docs-vision](https://github.com/haiccing/base-docs-vision).
