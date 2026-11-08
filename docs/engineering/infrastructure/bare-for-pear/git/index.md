---
layout: default
lastmod: 2026-05-03
title: "git — Git CLI Wrapper"
description: "A git CLI wrapper for the Bare runtime: structured output, subtree lifecycle management, a two-reality model, and hosted repo operations."
---

[Home](/) > [Engineering](/engineering/) > [bare-for-pear](/engineering/infrastructure/bare-for-pear/) > Git

# git — Git CLI Wrapper

A git CLI wrapper for the [Bare](/engineering/third-party-software/bare/) runtime. Provides programmatic access to git with structured output, subtree lifecycle management, and configurable hosted repo operations.

**Source:** [github.com/bare-for-pear/git](https://github.com/bare-for-pear/git)

---

## What git Is

A JavaScript module that wraps the git CLI for the Bare runtime. It does not reimplement git internals — git is the authority on git. The module adds structure on top: parsed output, validated subtree operations, and a consistent API for common git workflows.

All operations use `spawnSync`. Output is returned as structured data — status as `{ branch, files }`, log as `[{ hash, author, timestamp, message }]` — not as text to parse.

## Features

### Subtree Management

Git subtree doesn't persist prefix-to-remote mappings. The operator must remember which prefix goes with which remote and branch — one wrong flag and you're pushing to the wrong place.

The module introduces `.gittrees`, a committed flat file at repo root mapping prefix to remote and branch:

```
lib/avsc          bare-for-pear-avsc          main
lib/avsc-rpc      bare-for-pear-avsc-rpc      main
lib/git           bare-for-pear-git           main
lib/rpc-server    bare-for-pear-rpc-server    main
```

`subtrees.add()` does the full workflow in one call: add remote, fetch, add subtree, register in `.gittrees`.

### Two-Reality Model

Position determines scope. Invoking from repo root gives full repo scope. Invoking from inside a registered subtree scopes operations to that subtree — its remote, its branch, its prefix.

`detectReality()` compares the caller's working directory against `.gittrees` entries. If it falls inside a registered subtree prefix, push becomes subtree push, pull becomes subtree pull, status scopes to the prefix.

### Remote and Hosted Repo Operations

Remote management (add, list, remove, rename) combined with hosted repo creation. GitHub is the default platform (uses the `gh` CLI). The platform is pluggable — provide a `createRepo` and `repoUrl` function and switch.

## Design Decisions

**Synchronous execution.** Git commands are fast. Solving sync/async once in the module is cleaner than managing it in every consumer.

**Structured output.** Consumers get data, not text to parse.

**Subtree cache.** The `.gittrees` file is loaded once and cached. Correct for request-handling processes where the file doesn't change during a request. Invalidated on `register()`.
