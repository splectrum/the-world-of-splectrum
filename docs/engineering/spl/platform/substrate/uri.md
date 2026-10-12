---
layout: default
lastmod: 2026-06-07
title: "URI"
description: "URI is the committed substrate language of identification — the local addressing scheme for the SPL fabric."
---

[Home](/) > [Engineering](/engineering/) > [SPL Platform](/engineering/spl/platform/) > [Language Substrate](/engineering/spl/platform/substrate/) > URI

# URI

URI is the committed language of identification — the local addressing scheme for the fabric. It is one of the five committed substrate languages: identity (URI), navigation ([XPath](/engineering/spl/platform/substrate/xpath/)), repository management ([Git](/engineering/spl/platform/substrate/git/)), data streaming ([Kafka](/engineering/spl/platform/substrate/kafka/)), and structure ([AVRO](/engineering/spl/platform/substrate/avro/)). For URI on its own terms — syntax, the identity/location split, the ecosystem — see the [URI subject](/positioning/subjects/u/uri/); this page is the commitment and the role it plays.

SPL uses its own subset of URI for addressing within a repository. The scheme follows the Linux filesystem style: paths from a `/` root, forward-separated. Addressing is always local — there are no remote URIs. Remote data is brought in via references and mounted on the local tree, the same way a Linux filesystem mounts external volumes locally. The address space is the local repo's reality; remote inclusion is an infrastructure concern handled beneath.

The naming scheme is minimal. A path segment is `[_a-z0-9][a-z0-9]*` — lowercase alphanumeric, optionally starting with underscore or digit. No hyphens, no dots, no uppercase, no multiword separators. Files are addressed by name without extension. The scheme carries no semantics — whether a segment is a name, a position, or a namespace root is interpretation by the layer above. The character space is deliberately constrained so that any valid segment works equally as a key in structured data, a git tree entry, an AVRO field name, a JSON key, or a filesystem directory name. One scheme, no translation between layers.

The path is indifferent to how data is stored. `/items/status/value` works whether `items` is a directory containing files, or a single structured file with nested keys. The boundary between packed (data in one file) and unpacked (data spread across a directory tree) can move without changing any address. A small repo could collapse into a single file; a large structure can explode into directories. The addressing scheme spans both because the segments work as both path components and structure keys.

The underscore is a structural mechanism. A segment beginning with `_` mounts an orthogonal namespace at that point in the tree. `/datastore/_metadata/test/key` means: at node `datastore`, cross into the mounted namespace `metadata`, then navigate `/test/key` within it from its own root. Any node can carry parallel namespaces alongside its regular content. This is the mechanism behind the three visibility modes: *raw* sees all branches, *data* sees only regular segments (underscore branches invisible), *metadata* sees only underscore branches. The modes are lenses on which part of the namespace structure you are looking at.

URI composes with [XPath](/engineering/spl/platform/substrate/xpath/) into one address: a URI to the resource, an XPath into its structure. Locate the node, then descend into it.
