---
layout: default
lastmod: 2026-11-08
title: "isomorphic-git"
description: "isomorphic-git, a pure-JavaScript git, with pako for zlib: taken from npm as they come and run on Bare under Mycelium's git module."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > isomorphic-git

# isomorphic-git

**[isomorphic-git](https://github.com/isomorphic-git/isomorphic-git)** is a pure-JavaScript implementation of git. The HAICC platform takes it from npm as it comes (pinned at `1.44.8`; upstream `1.44.11`, npm, November 2026) and runs it on [Bare](/engineering/third-party-software/bare/) through the `bare-node-*` compatibility aliases. It is used by Mycelium's git module, `mycelium-git`.

---

## pako

**[pako](https://github.com/nodeca/pako)** is a JavaScript port of zlib: deflate and inflate, which git's object storage needs. Pinned at `1.0.11` (upstream `3.0.3`). Used by `mycelium-git`, alongside isomorphic-git.

## See Also
- [isomorphic-git](https://github.com/isomorphic-git/isomorphic-git) and [pako](https://github.com/nodeca/pako) on GitHub; npm: `isomorphic-git`, `pako`
