---
layout: default
lastmod: 2026-06-07
title: "SPL Platform"
description: "The SPL platform — P2P swarm, local bridgehead, and SPL components. A solution is a federation of platform components."
---

[Home](/) > [Engineering](/engineering/) > SPL Platform

# SPL Platform

The SPL platform consists of a P2P swarm with common structure, where node membership is managed through a local bridgehead. An SPL solution installed in the swarm consists of a federation of SPL components.

**[P2P Swarm and Bridgehead](/engineering/spl/platform/swarm/)** — the infrastructure for the swarm setup and the node bridgehead that runs locally.

**[Language Substrate](/engineering/spl/platform/substrate/)** — the five committed languages that constitute the fabric: Git, Kafka, AVRO, URI, XPath.

**[Mycelium](/engineering/spl/platform/mycelium/)** — the data fabric. The substrate in which data state lives.

**[SPLectrum](/engineering/spl/platform/splectrum/)** — the language fabric. Protocols, operators, personas — embedded as metadata on the data fabric.

**[HAICC](/engineering/spl/platform/haicc/)** — the cognition fabric. Human-AI creative collaboration — process, coordination, division of work.

**[SPL Component Setup](/engineering/spl/platform/setup/)** — how the three fabrics compose into a functional component.

## Circles and actors

A local context is not limited to a single swarm. It is envisaged that a local context will join multiple SPL swarms — each a specific SPL platform install — called **circles**. Each circle is its own swarm with its own concern and trust domain. The local context coordinates interaction between its circles and is, in that capacity, an **actor** on the platform.
