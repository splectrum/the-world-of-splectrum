---
layout: default
lastmod: 2026-07-04
title: "Software languages"
description: "Languages for telling computers what to do — formal languages designed to be human-readable and mechanically executable, and the broad categories they fall into."
---

[Home](/) > [Language](/language/) > [Types](/language/types/) > Software languages

# Software languages

Languages for telling computers what to do. A specific kind of formal language — one designed to be both human-readable and mechanically executable.

## Categories

Software languages fall into several broad categories:

- **Imperative** — tell the computer what to do step by step. Assembly, C, Go. State changes over time.
- **Functional** — describe computations as transformations between values. Haskell, Clojure, OCaml. Ideally no side effects.
- **Declarative / logic** — specify what should be true, not how to achieve it. SQL, Prolog. The runtime figures out the how.
- **Markup** — describe structure. HTML, XML, Markdown. Not executable on their own.
- **Query** — specify retrievals. SQL, GraphQL, SPARQL.
- **Scripting** — glue code, automation. Python, Ruby, JavaScript — these are full languages, scripting is a use.
- **Domain-specific** — narrow languages for a particular domain. Shader languages, regex, Excel formulas.

These categories overlap. Modern languages are often multi-paradigm.

## Relation to formal language theory

Formal language theory classifies languages by the grammar needed to generate them: regular, context-free, context-sensitive, recursively enumerable — the [Chomsky hierarchy](https://en.wikipedia.org/wiki/Chomsky_hierarchy). Most software languages are context-free at the parsing level; their semantics sits in type systems, evaluation rules, and execution models.

Whether the software-language categories above map cleanly onto the Chomsky hierarchy, and whether that mapping reveals structural properties useful to SPLectrum's framework — open territory. More coming.

## Where SPLectrum engineering sits

SPLectrum's engineering uses [Bare](/engineering/infrastructure/bare/) as the default runtime — JavaScript, dynamically typed, flexible. Data schemas are defined in [AVRO](/engineering/spl/platform/substrate/avro/), a declarative schema language. Protocols in SPLectrum are data transformations; see [the applied seed — engineering](/seed/engineering/) for the foundational translation.
