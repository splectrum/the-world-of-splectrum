---
layout: default
lastmod: 2026-05-29
title: "Uniform Resource Identifier (URI)"
description: "The Uniform Resource Identifier (URI): one syntax for identifying any resource, the addressing layer beneath the Web, with URLs and URNs as its two faces."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > Uniform Resource Identifier (URI)

# Uniform Resource Identifier (URI)

A Uniform Resource Identifier (URI) is a string that identifies a resource — a web page, a file, a mailbox, a book, a concept — in a single, uniform syntax. It is the addressing layer beneath the Web and much else: the agreement that lets anything be named and referred to the same way, whether or not it can be fetched.

URI is an umbrella. A **URL** ([Uniform Resource Locator](https://en.wikipedia.org/wiki/URL)) identifies a resource by how to locate and access it (`https://example.org/page`); a **URN** ([Uniform Resource Name](https://en.wikipedia.org/wiki/Uniform_Resource_Name)) identifies a resource by a persistent name independent of location (`urn:isbn:9780131103627`). Both are URIs; the umbrella is the uniform syntax they share.

The organising idea is uniform identification: one syntax to identify any kind of resource, so systems can refer to things without agreeing in advance what kind of thing each is. That uniformity is what let the Web link arbitrary resources, and what makes URIs reusable far beyond the browser.

## Origin

The URL was introduced by [Tim Berners-Lee](/positioning/persons/b/berners-lee/) as part of the World Wide Web at [CERN](https://en.wikipedia.org/wiki/CERN) around 1990 — the addressing scheme that, with HTTP and HTML, made the Web work. The syntax was then standardised through a lineage of [IETF](https://www.ietf.org/) specifications:

- [RFC 1630](https://datatracker.ietf.org/doc/html/rfc1630) (1994; Berners-Lee) — the first formal URI syntax.
- [RFC 1738](https://datatracker.ietf.org/doc/html/rfc1738) (1994; Berners-Lee, [Masinter](/positioning/persons/m/masinter/), McCahill) — defined URLs.
- [RFC 2396](https://datatracker.ietf.org/doc/html/rfc2396) (1998; Berners-Lee, [Fielding](/positioning/persons/f/fielding/), [Masinter](/positioning/persons/m/masinter/)) — separated the generic URI syntax, and changed the "U" from "Universal" to "Uniform."
- [RFC 3986 / STD 66](https://datatracker.ietf.org/doc/html/rfc3986) (2005; Berners-Lee, Fielding, Masinter) — the current standard.

## Pages

- [The syntax](/positioning/subjects/u/uri/the-syntax/) — the generic five-part grammar (scheme, authority, path, query, fragment), percent-encoding, absolute and relative references, and IRIs.
- [Identity and significance](/positioning/subjects/u/uri/identity-and-significance/) — locator versus name, the URL/URN split, persistence and link rot, and why uniform identification mattered for the Web, REST, and linked data.

## Persons

- [Tim Berners-Lee](/positioning/persons/b/berners-lee/) — introduced the URL as part of the World Wide Web.
- [Roy Fielding](/positioning/persons/f/fielding/) — co-author of the URI generic-syntax RFCs.
- [Larry Masinter](/positioning/persons/m/masinter/) — co-author of the URI RFCs; internet and web standards.

## Sources

- [RFC 3986 / STD 66](https://datatracker.ietf.org/doc/html/rfc3986) — the current URI generic syntax.
- [RFC 3987](https://datatracker.ietf.org/doc/html/rfc3987) — Internationalized Resource Identifiers (IRIs).
- [URI](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier) — Wikipedia, for overview and history.

---

See also: [XPath](/positioning/subjects/x/xpath/) · [Tim Berners-Lee](/positioning/persons/b/berners-lee/) · [Roy Fielding](/positioning/persons/f/fielding/) · [Larry Masinter](/positioning/persons/m/masinter/)
