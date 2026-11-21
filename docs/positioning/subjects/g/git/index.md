---
layout: default
lastmod: 2026-05-29
title: "Git"
description: "Git, the distributed version-control system that stores history as content-addressed snapshots, keeps it in every clone, and checks integrity by hash."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > Git

# Git

Git is a distributed version-control system: a tool for recording the history of a set of files and coordinating work on them across many people and machines. Its defining choices — content-addressed snapshots, a complete copy of history in every clone, and integrity guaranteed by hashing — set it apart from the centralised systems that preceded it, and it has since become the near-universal standard for source control.

Three ideas organise the design:

- **Snapshots, not differences.** Where earlier systems ([RCS](https://en.wikipedia.org/wiki/Revision_Control_System), [SCCS](https://en.wikipedia.org/wiki/Source_Code_Control_System), [CVS](https://en.wikipedia.org/wiki/Concurrent_Versions_System), [Subversion](https://en.wikipedia.org/wiki/Apache_Subversion)) stored history as a series of per-file deltas, Git records the state of the whole tree at each commit as a snapshot, sharing unchanged content rather than recomputing diffs.
- **Distributed, not central.** Every clone is a full repository with the complete history; there is no privileged central copy. Committing, branching, and inspecting history happen locally; exchange with others is a separate, explicit step.
- **Integrity by content-addressing.** Every object is named by the cryptographic hash of its content, so the identity of any version depends on the entire history leading to it; corruption or tampering changes the name.

## Origin

Git was written by [Linus Torvalds](/positioning/persons/t/torvalds/) in April 2005. The [Linux kernel](https://en.wikipedia.org/wiki/Linux_kernel) project had used the proprietary [BitKeeper](https://en.wikipedia.org/wiki/BitKeeper) system under a free-of-charge licence; when that licence was withdrawn in 2005 — after [Andrew Tridgell](https://en.wikipedia.org/wiki/Andrew_Tridgell) reverse-engineered BitKeeper's protocol, prompting its owner [Larry McVoy](https://en.wikipedia.org/wiki/Larry_McVoy) to revoke it — the kernel needed a replacement, and no free alternative met Torvalds' requirements for speed and a genuinely distributed model. He began Git on 3 April 2005; it was self-hosting within days, managed the kernel's 2.6.12 release that June, and reached version 1.0 that December. Torvalds handed maintainership to [Junio Hamano](https://en.wikipedia.org/wiki/Junio_Hamano) in July 2005, who has maintained it ever since.

On the name, Torvalds: "I'm an egotistical bastard, and I name all my projects after myself. First 'Linux', now 'git'." The repository's own description reads "the stupid content tracker."

## Pages

- [The object model](/positioning/subjects/g/git/the-object-model/) — the content-addressable store and its four object types (blob, tree, commit, tag), the index, and the move from SHA-1 to SHA-256.
- [Refs and history](/positioning/subjects/g/git/refs-and-history/) — branches, HEAD, and tags as pointers; the commit graph; branching, merging, and conflict; rewriting history and the reflog.
- [The distributed model](/positioning/subjects/g/git/the-distributed-model/) — every clone a complete repository, remotes and exchange, and why a central server is a convention rather than a requirement.
- [Ecosystem and adoption](/positioning/subjects/g/git/ecosystem-and-adoption/) — Git's dominance, the hosting platforms built on it, independent implementations, and its reach beyond code.

## Persons

- [Linus Torvalds](/positioning/persons/t/torvalds/) — creator of Git and of the Linux kernel.

## Sources

- [Git](https://git-scm.com/) and the [Pro Git](https://git-scm.com/book) book — the canonical documentation.
- [Git](https://en.wikipedia.org/wiki/Git) — Wikipedia, for overview and history.

---

See also: [Linus Torvalds](/positioning/persons/t/torvalds/)
