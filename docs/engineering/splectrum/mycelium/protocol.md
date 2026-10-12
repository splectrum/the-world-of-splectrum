---
layout: default
lastmod: 2026-05-03
title: "Mycelium Protocol"
description: "Protocol is the meaning layer for fabric operations: it gives generic operators like get and put their specific meaning through the context they operate within."
sitemap: false
---

[Home](/) > [Engineering](/engineering/) > [SPLectrum](/engineering/splectrum/) > Mycelium > Protocol

# Mycelium Protocol

Protocol is the meaning layer for operations in the fabric. A protocol provides the context that gives generic operations their specific meaning.

## Protocol as Meaning Context

Operations have generic names — get, put, remove. These names carry no inherent meaning on their own. The protocol is the context that gives them meaning. "Get, in the context of datauri" means something different from "get, in the context of metadata." Same carrier, different meaning. The protocol determines the flavour.

This is the carrier/meaning split expressed at the operational level. The operation name is the carrier. The protocol is the meaning. What an operation does is determined by the protocol context it operates within, not by the operation name itself.

## Protocol Operations

Protocol operations are of two kinds, distinguished by the [identifier grammar](identifier-grammar#defined-vs-applied-operators):

**Defined operators** — `get`, `put`, `delete` — are part of the protocol's identity. They belong in the tree, dot-navigated, namespaced by position. Without them, it is a different protocol. `xpath.data.uri.get` is a defined operator.

**Applied operators** — `_is`, `_noop` — come from outside. They are not part of what makes the node what it is. Any node can be asked `_is`. These belong in property bags, underscore-navigated, namespaced by schema.

Defined operators have base meanings — get retrieves, put places, delete removes. These base meanings are flavoured by the protocol context. The operation names stay generic. The protocol makes them specific.

## The Message

Every protocol invocation produces a [message](message) — a nested Kafka record where headers carry intent and value carries the result. The message is the tree in motion.

Dispatch reads one path: `headers.record.logicalType`. That is the routing key. The handler receives the message and returns the same message enriched with the result. One shape for invocation and response.

Every message is an operator invocation. Pure data transfer is `noop` — a specific operator with `args: null` and a contract that value passes through unchanged. The RPC server has exactly one code path.

## Protocol Resolution

Protocols are defined in fabric metadata. Resolution walks the ancestor axis from the current position up to the subject reality root. Nearest ancestor wins.

No match on the full ancestor axis — nothing happens. No error, no fallback. Architecture of absence: no protocol in scope, no capability.

## Execution Modes

Execution mode is metadata in the context, not a caller argument:

- **sync** — resolve, execute, return result. Default when no execution mode metadata is present.
- **queue** — resolve, place envelope in the node's process queue, return acknowledgment.
- **dry-run** — resolve, report what would execute and against what data scope, return report. No state change.

A context can declare its default execution mode. A child context can override. The accumulated metadata determines which mode applies.

## Debug Wrapping

Debug is a context metadata fact. When present on the ancestor axis, execution wraps in the debug protocol found nearest on the path.

The debug protocol itself is resolved on the ancestor axis — it can be a simple trace logger at one level, a full step-through inspector at another. Remove the debug metadata, normal execution resumes. No code change, no restart.

