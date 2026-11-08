---
layout: default
lastmod: 2026-11-08
title: "React and htm"
description: "React and htm as Splectral's browser shell uses them: JSX-like templates in plain JavaScript, loaded as scripts, no build step."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > React and htm

# React and htm

**[React](https://react.dev/)** and **[htm](https://github.com/developit/htm)** build Splectral's shell in the browser. htm gives JSX-like templates in plain JavaScript, so React is written without a build step; the shell loads both as scripts in the page, served by the Splectral server from the codebase's modules.

---

**Versions.** Pinned at React `18.3.1` (upstream `19.3.1`, npm, November 2026) and htm `3.1.1` (current). Used by `splectral-shell`.

## See Also
- [React](https://react.dev/) and [htm](https://github.com/developit/htm); npm: `react`, `htm`
