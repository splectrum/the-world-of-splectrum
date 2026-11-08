---
layout: default
lastmod: 2026-11-08
title: "Our Software"
description: "The GitHub organisations SPLectrum's software lives in: bare-for-pear for outside code adapted to Bare, pear-full-square for the engines, HAICCing for projects and packages, SPLectral for its components, and SPLectrum for the planning and the site."
---

[Home](/) > [Engineering](/engineering/) > Our Software

# Our Software

Our software lives in five GitHub organisations. bare-for-pear holds outside code we have cloned and adapted. Then one rule keeps the others apart: the engines, all of the code, are in pear-full-square, and what is made with an engine lives in the organisation of its layer. SPLectrum is the odd one out: it holds data rather than code and packages.

## bare-for-pear

[github.com/bare-for-pear](https://github.com/bare-for-pear)

Outside code brought to Bare, where much of the JavaScript world assumes Node.js. The modules are barified: changed to run on Bare. Most are cloned or extracted from their upstream: avsc for Avro and its RPC layer, isomorphic-git, a server lifecycle; git wraps the official git command line. They come from the first rounds of work on Bare and rest while the platform does not need them. p2p-git began here, as a clone of isomorphic-git, and has grown into our own.

[bare-for-pear](/engineering/our-software/bare-for-pear/): the modules and the upstream each comes from.

## pear-full-square

[github.com/pear-full-square](https://github.com/pear-full-square)

The engines of the HAICC platform, written from the ground up on [Bare](/engineering/third-party-software/bare/) and Holepunch's [peer-to-peer stack](/engineering/third-party-software/p2p/), one module a repository. The other organisations depend on it; it depends only on itself and the third-party code it takes in.

The modules come in families, named by their prefix:

- `mycelium-`: the data repository, on its languages (URI, XPath, git, Kafka topics).
- `p2p-`: the swarm and its nodes, and Mycelium on the p2p layer. Among them [p2p-git](/engineering/our-software/p2p-git/), the git engine on Hyperdrive.
- `splectral-`: the SPLectral platform, from the browser shell to its server.
- `haicc-` and `pkgm-`: the boot, deployment and packages.

A few repositories come from before the platform: [hyperdrive-fuse](/engineering/our-software/hyperdrive-fuse/), a FUSE mount for a Hyperdrive; p2p-docker-dev, the first proof of concept of a swarm in containers; and [mycelium](/engineering/our-software/mycelium/), the first Mycelium module, now archived.

## HAICCing

[github.com/haiccing](https://github.com/haiccing)

Projects you can run, and the packages they need. A project is a whole: a swarm of nodes in containers, SPLectral to see it run, and what it is meant to show. The two demos are the first: a node goes quiet and the swarm notices; a node joins from another host by invitation.

Packages are self-contained: each carries its own tests and is checked intact by hash. The platform's releases are published in base-package-haicc, as one setup file that boots a work folder on a Linux host. This is where to start.

## SPLectral

[github.com/splectral](https://github.com/splectral)

Components for SPLectral, the platform for seeing and working with running systems in the browser. They work in SPLectral's own abstract world (hosts, nodes, resources named by URI, and their activity) and know nothing of what runs underneath. The first system they show is a peer-to-peer swarm, live, with scenarios recorded and replayed. SPLectral's engine is in pear-full-square.

## SPLectrum

[github.com/splectrum](https://github.com/splectrum)

A data organisation rather than code and packages: where the work is planned and done, with the roadmap, the development environments, and this site. SPLectrum's language modules will live here once the language layer is built. The earlier rounds are archived here too: the first codebases, spl0 to spl8, and the first two development environments.
