---
layout: default
lastmod: 2026-05-03
title: "Mycelium Message"
description: "The mycelium message is the tree in motion: a nested Kafka record with headers carrying intent and value carrying the result, dispatched by logical type."
sitemap: false
---

[Home](/) > [Engineering](/engineering/) > [SPLectrum](/engineering/splectrum/) > Mycelium > Message

# Mycelium Message

The message is the tree in motion. When the identifier structure becomes active — when it travels — it goes into a [Kafka record](/engineering/spl/platform/substrate/kafka/). The Kafka record does not introduce new structure. It introduces *directionality*. The tree is symmetric. The Kafka record says: this part is the question, this part is the answer. Same structure, now polarised.

## Headers and Value

**Headers** — the piece of tree that describes *what you want done*. Context, intent, operator arguments. Tree structure serving as input.

**Value** — the piece of tree that holds *the result*. Starts empty, fills during execution. Tree structure serving as output.

Every message is an operator invocation. Pure data transfer is not a special case. It is `noop` — an operator with fully qualified identity `spl.splectrum.operator.noop`, a specific contract (value passes through unchanged), and `args: null` as its legitimate interface. The RPC server has exactly one code path.

## The Onion — Nested Records

Every message is a nested Kafka record. Each layer has the same two sides: headers and value. Peel a layer — same structure underneath.

The outer layer is the execution envelope. The inner layer is the protocol operator. Both are Kafka records. Same shape at every nesting level.

## Headers as Property Bag

Headers is a property bag — a context with an AVRO schema assigning namespace to short names within it. Properties inside headers are just properties. Fully qualified or not, based on the schema.

The headers schema contains:

**record** — a property whose schema identifies the operator and its arguments. `record` is itself a property bag. Its schema gives `logicalType` and `args` their namespace.

Additional properties alongside `record` carry execution context — tracing, routing, processing metadata. These get their namespace from the headers schema.

```
headers: {
  record: {
    logicalType: 'spl.splectrum.operator.noop',
    args: null
  },
  spl.trace.id: ...,
  spl.mycelium.context: ...
}
```

The `record` property is the *what* — the operation. Everything else in headers is the *how* — execution context. Two concerns, cleanly separated within the same property bag.

## Dispatch

Dispatch reads one path: `headers.record.logicalType`. That is the routing key. The single dispatch mechanism for every message.

## Schema as Namespace Authority

The namespace resolution is uniform at every level of the message:

- Kafka record has an AVRO schema. That schema gives `headers` its namespace. `headers` becomes `spl.mycelium.message.headers`.
- Headers is a property bag with an AVRO schema. That schema gives `record` its namespace. `record` becomes `spl.mycelium.operator.record`.
- Record is a property bag with an AVRO schema. That schema gives `logicalType` and `args` their namespace.

Each schema is the namespace authority for the names it contains. No level is special. No level resolves differently. One mechanism applied recursively.

## Concrete Message

An RPC server execution envelope wrapping a get request:

```
spl.mycelium.process.execute.exec {
  headers: {
    record: {
      logicalType: 'spl.mycelium.process.execute',
      args: { mode: 'sync' }
    }
  },
  key: "/blog/submissions",
  value: xpath.data.uri.get {
    headers: {
      record: {
        logicalType: 'spl.splectrum.operator.get',
        args: { filter: ... }
      }
    },
    key: "/blog/submissions",
    value: <output>
  }
}
```

The outer layer is the execution envelope — its headers identify the execution operator and mode. Its value carries the inner operator as a complete computation record.

The inner layer is the protocol operation — its headers identify the data access operator and args. Its value starts empty and fills with the retrieved data.

## Processing Pipeline

```
arrive   -> headers: args          value: empty
validate -> headers: args          value: validated input + output schema
execute  -> headers: args          value: output
error    -> headers: args + error  value: partial/empty
```

Same pattern at both levels. The pipeline is uniform because the entry point is always the same shape. Validation is: does the logical type resolve to a known operator schema? Do the args conform?

## Request and Response

The response returns the request enriched with the result. No separate response message. The same message at every stage, just more resolved.

**get** — request: args in headers, value empty. Response: value filled with retrieved data.

**put** — request: args in headers, value carries data to write. Response: value confirmed.

**delete** — request: args in headers, value empty. Response: value carries what was removed.

**noop** — request: args null, value carries data payload. Response: value passed through unchanged.

## Design Properties

**Self-contained** — pick the message up at any stage, read what was asked (headers) and how far it got (value).

**Enrichment not replacement** — the message accumulates. Request context preserved.

**Errors don't break the shape** — error conditions add metadata to headers. No separate error envelope.

**Same shape sync and async** — the echo-back pattern works whether response returns immediately or via a queue.

**Uniform dispatch** — every message is an operator invocation. No branching on message category. The logical type in `headers.record` is the single dispatch mechanism.

