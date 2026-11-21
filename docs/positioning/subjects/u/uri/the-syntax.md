---
layout: default
lastmod: 2026-05-29
title: "The syntax"
description: "URI syntax under RFC 3986: scheme, authority, path, query and fragment, percent-encoding, absolute and relative references, and the IRI extension."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [URI](/positioning/subjects/u/uri/) > The syntax

# The syntax

[RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986) defines one generic syntax for all URIs:

```
scheme ":" ["//" authority] path ["?" query] ["#" fragment]
```

- **scheme** — names the interpretation (`http`, `https`, `mailto`, `file`, `urn`, `data`…). Required; begins with a letter.
- **authority** — optional; typically `userinfo@host:port`, introduced by `//`.
- **path** — always present (possibly empty); the hierarchical part identifying the resource within the scheme/authority.
- **query** — optional, after `?`; non-hierarchical parameters.
- **fragment** — optional, after `#`; a reference to a secondary part of the resource, resolved by the client.

Characters outside the permitted set are **percent-encoded** as `%HH`. References may be **absolute** (complete) or **relative** (resolved against a base URI) — the mechanism that lets documents link without repeating a common prefix.

## IRI

The Internationalized Resource Identifier ([RFC 3987](https://datatracker.ietf.org/doc/html/rfc3987)) extends URIs to the full Unicode repertoire, so identifiers can use non-ASCII characters directly; an IRI maps to a URI by percent-encoding.

For the exhaustive grammar, see [RFC 3986](https://datatracker.ietf.org/doc/html/rfc3986).

## Sources

- [RFC 3986 / STD 66](https://datatracker.ietf.org/doc/html/rfc3986) — the generic URI syntax in full.
- [RFC 3987](https://datatracker.ietf.org/doc/html/rfc3987) — IRIs.
