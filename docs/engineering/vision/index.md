---
layout: default
lastmod: 2026-11-28
title: "Vision"
description: "Where the HAICC platform is going: planes as platforms, data-driven processing, peers and devices, private data, AI inside it, the language layer."
---

[Home](/) > [Engineering](/engineering/) > Vision

# Vision

These are directions, not yet built, and they change as the work does.

## The planes as platforms

Each of the other three planes becomes a platform of its own, with its own packages, its own server and its own way in for requests: [`myctral`](https://github.com/myctral) for the data repository and [`myctrans`](https://github.com/myctrans) for processing, both on [Mycelium](/engineering/mycelium/), and SPLectral for interaction. SPLectral, the first, has started; the other two are still to come. The [HAICC Platform](/engineering/haicc/) manages across all three. An application is built from components of the three kinds: data, transformation and interaction.

## Data-driven processing

In `myctrans`, processing has no coordinator. A pipeline is woken by data change records and by patterns in the data, never orchestrated from outside. It keeps its working state in a repository of its own, and ends in a proposed change, which the data repository accepts and commits, or refuses and says why. A refusal is the pipeline's to handle: read again, rework, or report. A commit in one repository can start the processing that proposes changes to another, so changes flow through an application with nothing directing them.

Processes can then evolve the way [discovery](/reality/discovery/) does. A change in the data state wakes several independent processes, each following its own lead. What they find comes back as further changes; what yields more sets off more, and what yields little simply stops mattering.

## Across repositories

Queries across links and layered repositories are [Mycelium's direction](/engineering/mycelium/). On that layering, transactions across repositories: each party commits its own part, nobody writes into another's data, and the parts are seen together once all are there.

## Peers and devices

Swarms of peers, which ran on an earlier release, return as their packages are brought to strict schema contracts, with Kafka's logs on the peer-to-peer substrate and replicas loaded lazily as they are read. Beyond one network, how peers reach each other is still research. So is a full peer on every device, the phone included.

## Private data

Each owner's private data in a repository of its own, encrypted, replicated only between the owner's paired devices. Still research.

## AI inside the platform

An agent run by the platform itself. Small open models, each tuned for one task and placed where the hardware suits it; the first would be an operator that turns an intention into `haicc` commands. Findings drawn from the request log, fed back into how the work is done.

## The language layer

SPLectrum's own, where the name began. What exists now as capabilities named by URI, with AVRO's typed values, becomes a platform for [domain-specific languages](/positioning/subjects/d/domain-specific-languages/): a tool of its own, and the language modules made with it, for building real applications on the platform. Not started.

The current picture, each part marked as agreed or not, is kept in [base-docs-vision](https://github.com/haiccing/base-docs-vision).
