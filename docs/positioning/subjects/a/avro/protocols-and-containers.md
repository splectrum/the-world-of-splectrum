---
layout: default
lastmod: 2026-05-29
title: "Protocols and containers"
description: "Avro beyond serialization: object container files, the RPC protocol and its schema-exchanging handshake, and logical types over the base type system."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Apache Avro](/positioning/subjects/a/avro/) > Protocols and containers

# Protocols and containers

[Serialization](/positioning/subjects/a/avro/schemas-and-encoding/) is the core, but Avro also defines how serialized data is stored in files, how it moves across a network as remote procedure calls, and how richer semantic types are layered over the base type system. Each of these is where the principle that *the schema travels with the data* gets its concrete mechanism.

## Object container files

An object container file is Avro's format for storing a sequence of records in a single file with the schema embedded. The structure is:

- **A header** — the four bytes `O`, `b`, `j`, `0x01`; a metadata map; and a 16-byte random **sync marker**.
- **File metadata** — chiefly `avro.schema`, the writer's schema as JSON, and optionally `avro.codec`, the compression codec.
- **Data blocks** — each a count of objects, the serialized byte length, the serialized objects themselves, and a copy of the sync marker. The repeated marker lets a reader find block boundaries and split a large file for parallel processing.

Because the schema lives in the header, an object container file is self-contained: any reader can open it, recover the writer's schema, and [resolve](/positioning/subjects/a/avro/schema-resolution/) it against its own. Two compression codecs are required by the spec — `null` (uncompressed) and `deflate` — and four are optional: `snappy`, `bzip2`, `xz`, and `zstandard`.

## Protocols and RPC

Avro is also a remote-procedure-call framework. A **protocol** is a named declaration of **messages**, each with a request — a list of parameters handled like an anonymous record — a response schema, and an optional union of declared error types. Protocols, like schemas, are written in JSON (or in the higher-level [Avro IDL](https://avro.apache.org/docs/)).

The distinctive part is the **handshake**. Before exchanging messages, client and server reconcile their protocols so each can resolve the other's schemas — the same writer/reader resolution as for stored data, applied to a live connection. The handshake is defined by two schemas, `HandshakeRequest` and `HandshakeResponse`. Rather than send full protocol text on every call, each side sends an **MD5 hash** of its protocol; the full text is transmitted only when a hash is unrecognised, after which both sides cache it. The handshake response carries a `match` result indicating whether the protocols were already known on both sides. Two transports are defined: **HTTP**, stateless, with messages POSTed as `avro/binary`; and a stateful **socket** transport over a persistent connection.

Avro's broader machinery for identifying schemas — schema **fingerprinting** — recommends three algorithms: 64-bit [Rabin](https://en.wikipedia.org/wiki/Rabin_fingerprint) (CRC-64-AVRO), MD5, and [SHA-256](https://en.wikipedia.org/wiki/SHA-2). The handshake uses MD5 specifically.

## Logical types

A logical type annotates one of the base types with an interpretation, letting Avro carry semantic types it has no dedicated primitive for. The annotation rides on the base type, so a reader that does not recognise the logical type still reads the underlying value correctly. The current set:

- **decimal** — arbitrary-precision signed decimal, over `bytes` or `fixed`, with declared precision and scale.
- **big-decimal** — over `bytes`.
- **uuid** — over `string` (or a 16-byte `fixed`).
- **date** — days from the epoch, over `int`.
- **time-millis** / **time-micros** — time of day, over `int` / `long`.
- **timestamp-millis** / **timestamp-micros** / **timestamp-nanos** — instants in UTC, over `long`.
- **local-timestamp-millis** / **local-timestamp-micros** / **local-timestamp-nanos** — local date-times, over `long`.
- **duration** — months, days, and milliseconds, over a 12-byte `fixed`.

The [specification](https://avro.apache.org/docs/) gives the precise representation rules for each.

## Sources

- [Apache Avro specification](https://avro.apache.org/docs/) — object container files, protocol declaration, the handshake, and logical types.
