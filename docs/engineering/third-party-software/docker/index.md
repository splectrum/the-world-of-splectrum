---
layout: default
lastmod: 2026-11-08
title: "Docker"
description: "Docker Engine as the HAICC platform uses it: each swarm node on Bare in a hardened container, one network per swarm, logs read by Splectral."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > Docker

# Docker

**[Docker Engine](https://docs.docker.com/engine/)** runs the swarm's nodes: each node runs on [Bare](/engineering/third-party-software/bare/) in a Docker container on the host.

---

**What is required.** Docker Engine, rootful and native (not Docker Desktop), with the user in the `docker` group. The host's boot checks this, and fixes what is missing only with the user's yes.

**The image.** A plain Debian base with Bare's runtime, built locally and tagged by the runtime's hash; it holds no code. The code is mounted read-only into each container.

**Hardened.** A read-only root, every capability dropped, no new privileges, an unprivileged user, memory capped with no swap, no core dumps, the store on a tmpfs.

**Networks.** One Docker network per swarm, made with its first node and removed with its shutdown. Containers and networks are labelled with the install and the swarm, so a shutdown leaves nothing behind in Docker.

**Logs.** A node's log is its container's output (`docker logs`), in JSON lines; Splectral's server reads it there, and pauses and resumes nodes through Docker.

## See Also
- [Docker Engine documentation](https://docs.docker.com/engine/)
