---
layout: default
lastmod: 2026-05-29
title: "The distributed model"
description: "Git's distributed model: every clone a complete repository, peer-to-peer exchange between remotes, and the central server a convention, not a need."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [Git](/positioning/subjects/g/git/) > The distributed model

# The distributed model

Git's most consequential choice is that there is no central repository. **Every clone is a complete repository** — the full object history and its refs — operational on its own. Committing, branching, inspecting history, and reverting all happen locally, without a network.

## Remotes and exchange

A repository can track any number of **remotes** — other repositories it exchanges with. `clone` copies a repository; `fetch` brings another's objects and refs into local remote-tracking refs; `push` sends local objects and ref updates the other way; `pull` fetches and integrates. Exchange is peer-to-peer in principle: any repository can fetch from or push to any other it can reach. The familiar "central" server — a shared [GitHub](https://en.wikipedia.org/wiki/GitHub) or [GitLab](https://en.wikipedia.org/wiki/GitLab) repository — is a **convention**, not a requirement of the model: it is just a clone every participant agrees to treat as the meeting point.

## Why it matters

Because identity is content-addressed and history is carried in full, two repositories can diverge and reconverge without coordination, work offline, and verify exactly what they received. Distribution is not a feature bolted onto a central tool; it is the shape of the data. This is the property that made Git suitable for a project like the [Linux kernel](https://en.wikipedia.org/wiki/Linux_kernel) — thousands of contributors, no single point of coordination — and that makes it a natural fit wherever decentralised exchange of versioned state is wanted.

## Sources

- [Pro Git, Distributed Git](https://git-scm.com/book/en/v2/Distributed-Git-Distributed-Workflows) — distributed workflows in full.
