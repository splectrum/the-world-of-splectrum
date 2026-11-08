---
layout: default
lastmod: 2026-06-07
title: "P2P Swarm and Bridgehead"
description: "The P2P swarm network and the bridgehead container that establishes a foothold on it — connectivity, replication, shared infrastructure."
---

[Home](/) > [Engineering](/engineering/) > [SPL Platform](/engineering/spl/platform/) > P2P Swarm and Bridgehead

# P2P Swarm and Bridgehead

The swarm is the network reality — peers discovering, connecting, and replicating over a private DHT. The bridgehead is a container that creates the local peer node, provides its execution environment, and integrates the swarm's functionality into the local context. This is the core design in progress — the foundation, not the final shape.

## The swarm

A SPL swarm consists of two node types: platform nodes and peer nodes.

**Platform nodes** carry the swarm's install — both infrastructure and solution content — in a Hyperdrive structure. The platform node hosts the authoritative Hyperdrive that peers replicate from. The Hyperdrive is signed; trust is the key. The platform node holds the swarm's common structure and makes it available to any peer that connects.

**Peer nodes** join the swarm, replicate the platform node's Hyperdrive, and make the swarm's functionality available in the local context. A peer does not carry the install independently — it receives it from the platform node. What it does carry is the local integration: the bridgehead that manages the peer's swarm membership and exposes the replicated content for local use.

## The bridgehead

The bridgehead is a container (Docker) that creates the local peer node and provides its execution environment. It handles the swarm connection, drive replication, and key management. The peer node lives inside the bridgehead — the container is the peer's runtime.

The bridgehead integrates the swarm into the local context through two categories of interface:

**User integration** — for human interaction with the swarm content.

- *Browser GUI* — a web interface for browsing the drive contents, inspecting node status, and interacting with the swarm visually.
- *FUSE drive* — the replicated Hyperdrive mounted as a read-only local filesystem (Linux). The swarm's content appears as local files — browse, read, and use with any tool that works with the filesystem. The FUSE drive also exposes the runtime binary, so applications from the swarm can be executed locally without installation.

**Programmatic integration** — for scripts, tools, and automation.

- *API* — an HTTP API for programmatic access to the drive, node status, and swarm operations.
- *FUSE drive* — the same filesystem mount is equally a programmatic interface. Any process that reads and writes files can interact with the swarm through it.

The FUSE drive bridges both categories — it is as much a user interface as a programmatic one.

Together with the container's own configuration within the local environment — networking, volumes, capabilities — these interfaces provide multiple and flexible integration options. The container is the boundary: it holds the swarm credentials and controls what is exposed locally. How much of the swarm integrates into the local context is a configuration choice.

## Design status

This is the beginning of the core design. The swarm structure, the bridgehead container, and the three integration modes are proven in a POC setup. The logical structure described here — platform nodes carrying the install, peer bridgeheads integrating locally — is the foundation for SPL components and solutions that build on it.

## See also

- **[Hyperdrive](/engineering/third-party-software/p2p/hyperdrive/)** — the distributed filesystem that carries the swarm's install and content.
- **[HyperDHT](/engineering/third-party-software/p2p/hyperdht/)** — the distributed hash table for peer discovery and connectivity.
- **[hyperdrive-fuse](/engineering/spl/software/hyperdrive-fuse/)** — the FUSE mount that exposes the replicated drive as a local filesystem.
