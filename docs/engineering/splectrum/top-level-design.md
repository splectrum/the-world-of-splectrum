---
layout: default
lastmod: 2026-05-03
title: "SPLectrum Engineering — Top Level Design"
description: "The three pillars of the SPLectrum platform — repository (mycelium), language (SPLectrum), process (HAICC) — and why each fabric is named what it is."
sitemap: false
---

[Home](/) > [Engineering](/engineering/) > [SPLectrum](/engineering/splectrum/) > Top Level Design

# SPLectrum Engineering — Top Level Design

The three pillars of the SPLectrum platform — repository, language, process — and the reason each is named what it is. Mycelium is the substrate; the others embed into it.

---

## Three Pillars

The platform addresses three distinct concerns:

- **Repository** — where data state lives.
- **Language** — what data state means.
- **Process** — how data state changes and is acted on.

Each is its own fabric. The repository fabric is the substrate; the language and process fabrics are embedded into it as metadata.

## Repository Fabric — Mycelium

A mycelium is a network of fungal threads underground — vast, interconnected, decentralised. What is visible above ground (mushrooms) are local expressions of an interconnected whole.

The repository fabric works the same way. Each owner has their own data state, organised as a local tree of data nodes. The fabric is what connects these local trees: references that address nodes across repositories, and data state propagation that carries change between owners. Decentralised at the data level: no central database, no single source of truth.

Within a local tree, processes are invoked on nodes. Data visibility extends from a node to itself and its descendants; metadata resolution walks up to itself and its ancestors. XPath addresses nodes, used as URL or query.

## Language Fabric — SPLectrum

The pillar takes the project's name. Language is the project's central concern — from the seed, all relating is language. The platform centred on this principle adopts the project name for its language fabric.

SPLectrum supplies the protocols — relational patterns that act on data state. Each protocol is a software API with meaning constraint; operators are its methods; personas are compositions of protocols that take on roles. Protocols and personas are colocated as metadata with the data nodes they act on, in mycelium.

## Process Fabric — HAICC

HAICC stands for Human-AI Creative Collaboration. The pillar takes this name because the process fabric is where humans and AI collaborate as peers — no central controller, work divided by capability conformance.

The fabric holds process definitions, watcher expressions, readiness schemas. Processes trigger on data state change. Personas declare what is needed; conformance against available human and AI capabilities determines the division of work. Process definitions are colocated as metadata with the data nodes they act on, in mycelium.

For HAICC's deeper operating model — conscious, subconscious, plasticity — see [HAICC](/engineering/splectrum/haicc/).
