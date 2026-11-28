---
layout: default
lastmod: 2026-11-28
title: "Our Software"
description: "The seven GitHub organisations our software lives in: outside code adapted for Bare, the engines, the HAICC platform, the other planes, and SPLectrum."
---

[Home](/) > [Engineering](/engineering/) > Our Software

# Our Software

Our software lives in seven GitHub organisations. `bare-for-pear` holds outside code we have cloned and adapted. Then one rule keeps the others apart: the engines, all of the code, are in `pear-full-square`, and what is made with an engine lives in the organisation of its plane. `splectrum` is the odd one out: it holds data rather than code and packages.

## bare-for-pear

[github.com/bare-for-pear](https://github.com/bare-for-pear)

Outside code brought to Bare, where much of the JavaScript world assumes Node.js. The modules are barified: changed to run on Bare. Most are cloned or extracted from their upstream: avsc for Avro and its RPC layer, isomorphic-git, a server lifecycle; git wraps the official git command line. avsc is in use again: the platform's [type system](/engineering/mycelium/avro/) runs on it. The others rest. p2p-git began here, as a clone of isomorphic-git, and has grown into our own.

[bare-for-pear](/engineering/our-software/bare-for-pear/): the modules and the upstream each comes from.

## pear-full-square

[github.com/pear-full-square](https://github.com/pear-full-square)

The engines of the HAICC platform, written from the ground up on [Bare](/engineering/third-party-software/bare/) and Holepunch's [peer-to-peer stack](/engineering/third-party-software/p2p/), one module a repository. The other organisations depend on it; it depends only on itself and the third-party code it takes in.

The modules come in families, named by their prefix:

- `mycelium-`: Mycelium's engines, on its [languages](/engineering/mycelium/) (Kafka, Git, AVRO, URI, XPath).
- `mrepo-base-`: the code behind each protocol the platform offers.
- `p2p-`: swarms and their peers, and Mycelium on the peer-to-peer substrate. Among them [p2p-git](/engineering/our-software/p2p-git/), the git engine on Hyperdrive.
- `splectral-`: SPLectral's engine, from the browser shell to its server.
- `haicc-` and `pkgm-`: the `haicc` command, deployment and packages.

A few repositories come from before the platform: [hyperdrive-fuse](/engineering/our-software/hyperdrive-fuse/), a FUSE mount for a Hyperdrive; p2p-docker-dev, the first proof of concept of a swarm in containers; and [mycelium](/engineering/our-software/mycelium/), the first Mycelium module, now archived.

## haiccing

[github.com/haiccing](https://github.com/haiccing)

The management plane, the [HAICC platform](/engineering/haicc/)'s own: the **base** family, its first concept build. Self-contained packages, components and solutions, the workbench among them, with the documentation packages as the way in: [base-docs-haicc](https://github.com/haiccing/base-docs-haicc). Two swarm demos, a peer going quiet and the swarm noticing, and a peer joining from another host by invitation, ran on earlier releases and return as their packages are brought to strict schema contracts.

## splectral

[github.com/splectral](https://github.com/splectral)

The interaction plane: components for SPLectral, served in the browser. The first are the help viewer and the log viewer. The live swarm with recorded scenarios belonged to an earlier release and is parked. SPLectral's engine is in `pear-full-square`.

## myctral

[github.com/myctral](https://github.com/myctral)

The data repository plane, on Mycelium: the repository's own functions, data validated, merged and committed. Public; development starts in due course.

## myctrans

[github.com/myctrans](https://github.com/myctrans)

The processing plane, on Mycelium: data transformation, its pipelines woken by data change records. Public; development starts in due course.

## splectrum

[github.com/splectrum](https://github.com/splectrum)

A data organisation rather than code and packages. Publicly it holds this site; the planning, and the archive of the earlier rounds (the first codebases, spl0 to spl8, and the first development environments), are kept private. SPLectrum's language modules will live here once the language layer is built.
