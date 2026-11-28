---
layout: default
lastmod: 2026-11-28
title: "HAICC Platform"
description: "HAICC, the master plane: it manages installs of running repositories and brings the other planes to life, built for AI as its principal user."
---

[Home](/) > [Engineering](/engineering/) > HAICC Platform

# HAICC Platform

HAICC is the master plane: it looks after management. Through its deployments it brings the other planes to life. It is also where humans and AI meet, built to make more AI autonomy possible: AI is the principal user, and humans come in where collaboration is needed, with equal standing. The work is creative, and the reason for more autonomy is more resources at work in it.

## Repositories that run

Software runs as mrepos: repositories that run, their data state in [layers](/engineering/mycelium/git/) and a runtime executing the requests posted to them. On a machine, one command reaches a whole install, one platform installation, and each mrepo answers about itself. A request is the [unit of change](/engineering/engineering-principles/).

## Protocols

Protocols are our way of doing APIs: actions bundled under a single concern. An mrepo offers a protocol once the protocol is activated in it, and the protocol gives the generic names of its actions their meaning, so `get` in one protocol is not `get` in another.

## Packages, components, solutions

Packages make the mrepos, each [self-contained](/engineering/engineering-principles/). A component is a set of packages deployed together as an mrepo of its own. A solution is what a whole install is made of, such as the workbench for development and testing.

## One lifecycle, at every level

Every mrepo follows the same lifecycle, from its deploy to its teardown. Commissioning cascades: an mrepo's commission deploys its components, and each of those commissions itself in turn. This is how HAICC brings the other planes to life: SPLectral, the interaction plane, is deployed this way, with its first components, a help viewer and a log viewer, in the browser. The data repository and processing planes are still to come.

## An install that describes itself

An install starts from its boot mrepo, which puts the schema registry in place. The documentation is deployed beside it, and both are built from the packages the install holds, so an AI working on the install finds what it needs inside it, current with what is there. The boot bringing both up as fixtures is the direction. The install deploys only from its own sources.

## AI as the principal user

The platform is designed to be read and driven by an agent: the same commands a person types, the documentation inside the install, every request on record. Today an agent drives it from outside, as a user does; an agent run by the platform itself is the direction. Feedback on a command is recorded in the request log already; findings drawn from that log and fed back into the dialogue the team works by are the direction.

Swarms of peers ran on an earlier release and return as their packages are brought to strict schema contracts.

The documentation is in [base-docs-haicc](https://github.com/haiccing/base-docs-haicc), with how the work is done in [base-docs-hdlc](https://github.com/haiccing/base-docs-hdlc).
