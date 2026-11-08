---
layout: default
lastmod: 2026-11-08
title: "bare-for-pear"
description: "Outside code brought to the Bare runtime: avsc and avsc-rpc for Avro, isomorphic-git, rpc-server, and a wrapper of the git command line, each with the upstream it comes from."
---

[Home](/) > [Engineering](/engineering/) > [Our Software](/engineering/our-software/) > bare-for-pear

# bare-for-pear

Outside code brought to the [Bare](/engineering/third-party-software/bare/) runtime, published in the [bare-for-pear](https://github.com/bare-for-pear) GitHub organisation. The modules are barified: changed to run on Bare, which has no Node.js standard library. Some are whole clones, some extracts, and one wraps a command line.

They come from the first rounds of work on Bare, April to June 2026, and rest while the HAICC platform does not need them: none is used by it now. Avro, which avsc carries, is a direction for SPLectrum's language layer. One of them has grown into our own: [p2p-git](/engineering/our-software/p2p-git/) began here, as a clone of isomorphic-git, and now lives in pear-full-square.

## The modules and their upstream

- [avsc](/engineering/our-software/bare-for-pear/avsc/): Avro for JavaScript. A whole clone of [mtth/avsc](https://github.com/mtth/avsc), from its `master` branch: the v6 line, which upstream has not released (npm's latest is 5.7.9) and has not moved since April 2025. Barified: Node.js modules replaced by Bare's, and a TextEncoder/TextDecoder polyfill.
- [avsc-rpc](/engineering/our-software/bare-for-pear/avsc-rpc/): Avro RPC. An extract: the services layer of avsc v5, taken at commit `dd82783`, which upstream removed from v6 ([PR #428](https://github.com/mtth/avsc/pull/428)). Barified onto streamx, with a bridge to the v6 line of avsc.
- [rpc-server](/engineering/our-software/bare-for-pear/rpc-server/): server lifecycle. An extract from the avsc-rpc server of our earlier codebase: the TCP listener, the PID file and commands by file, on Bare's own modules.
- [git](/engineering/our-software/bare-for-pear/git/): git operations for Bare. Not a clone: a wrapper of the official [git](https://git-scm.com/) command line, written for Bare, with structured output and subtree management.
- [isomorphic-git](/engineering/our-software/bare-for-pear/isomorphic-git/): pure-JavaScript git. A whole clone of [isomorphic-git/isomorphic-git](https://github.com/isomorphic-git/isomorphic-git), from `main` in June 2026, its code unchanged, with a Hyperdrive adapter added. Upstream has moved on, and the platform uses [isomorphic-git](/engineering/third-party-software/isomorphic-git/) from upstream directly; the adapter lives on, fixed, in p2p-git.
