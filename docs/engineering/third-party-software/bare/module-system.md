---
layout: default
lastmod: 2026-11-08
title: "Bare Module System"
description: "Module resolution and loading in Bare via bare-module: supported types, package.json fields, conditional exports, the CJS/ESM API, custom protocols and the loader."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [Bare Runtime](/engineering/third-party-software/bare/) > Module System

# Bare Module System

Module resolution and loading in Bare, powered by
bare-module (7.5.0; version 7 is in Bare from 1.33 and
needs Bare 1.35 or later).

---

## Supported Module Types

- CommonJS (`.cjs`, or `.js` when `"type"` is not
  `"module"`)
- ECMAScript Modules (`.mjs`, or `.js` when
  `"type": "module"`)
- JSON (`.json`)
- Bundles (`.bundle` — bare-bundle format)
- Addons (native, `.bare`)
- Binary and text files
- Assets

The types are named script, module, json, bundle,
addon, binary and text (`Module.constants`). Bare 1.30
added TypeScript modules, through the built-in
`bare-type-stripper`.

CJS and ESM have bidirectional interoperability by
default.

---

## Package.json Fields

### "exports" — entry points

Supports subpath exports, conditional exports,
self-referencing, and sugar syntax.

```json
{
  "exports": {
    ".": {
      "bare": "./lib/bare.js",
      "default": "./lib/node.js"
    },
    "./promises": "./lib/promises.js"
  }
}
```

### "imports" — private import mapping

Maps import specifiers within the package. Supports
conditional syntax. Permits mapping to external
packages. The `#` prefix is supported but not
required (unlike Node.js).

```json
{
  "imports": {
    "fs": {
      "bare": "bare-fs",
      "default": "fs"
    }
  }
}
```

### "engines" — version requirements

```json
{
  "engines": {
    "bare": ">=1.0.5"
  }
}
```

---

## Conditional Export Conditions

In order of specificity (most specific first):

| Condition | Matches when |
|-----------|-------------|
| `"import"` | loaded via `import` or `import()` |
| `"require"` | loaded via `require()` |
| `"asset"` | loaded via `require.asset()` |
| `"addon"` | loaded via `require.addon()` |
| `"bare"` | running in Bare |
| `"node"` | running in Node.js |
| `"<platform>"` | equals `Bare.platform` |
| `"<arch>"` | equals `Bare.arch` |
| `"simulator"` | compiled for simulator |
| `"default"` | fallback, always matches |

Order matters: more specific conditions must come
before less specific ones in the definition.

---

## CJS API

- `require(specifier[, options])` — load module.
  Options include `{ with: { type: 'json' } }`,
  `{ with: { imports: '...' } }`, and for WebAssembly
  addons `host` (e.g. `'wasi-wasm32'`) and `wasi`
  (Bare 1.36). An unknown `type` is refused.
- `require.main` — entry module
- `require.cache` — module cache
- `require.resolve(specifier[, parentURL][, options])` —
  resolve to path (options: `with`)
- `require.addon([specifier][, parentURL])` — load
  native addon
- `require.addon.host` — platform-arch string
- `require.addon.resolve()` — resolve addon path
- `require.asset(specifier[, parentURL])` — resolve
  asset path

## ESM API

- `import.meta.url` — module URL string
- `import.meta.dirname` / `import.meta.filename`
- `import.meta.main` — boolean, is entry script?
- `import.meta.cache` — module cache
- `import.meta.resolve(specifier[, parentURL])` —
  resolve to URL string
- `import.meta.addon()` — load native addon;
  `import.meta.addon.host`, `import.meta.addon.resolve()`
- `import.meta.asset(specifier[, parentURL])` —
  resolve asset URL

## Custom require

```js
Module.createRequire(parentURL[, options])
```

Create a preconfigured require function. Useful for
REPL, tooling, or custom loaders. Options include
`referrer` and `builtins`. Since version 7 the default
protocol has no backing store and cannot read from the
file system: a library calling `createRequire` passes a
protocol that can.

---

## Custom Protocols

Module resolution can be extended with custom
protocols — for example, loading modules from a
Hyperdrive:

```js
new Module.Protocol(methods, context)
```

Methods (version 7): `resolve`/`resolveSync`
(post-processes a resolved URL), `exists`/`existsSync`,
`read`/`readSync`, `list`/`listSync`. The version 6
methods `preresolve`, `postresolve`, `addon` and
`asset` are gone. `protocol.extend(methods)` derives a
protocol; an incompatible protocol version fails with
`PROTOCOL_INCOMPATIBLE`.

---

## Loader

Version 7 adds a loader:

```js
new Module.Loader()
```

with `link`/`linkSync`, `instantiate`,
`import`/`importSync`, `patch(bundle)` and `evict`.

---

**Source:**
[github.com/holepunchto/bare-module](https://github.com/holepunchto/bare-module)
and [docs.pears.com/bare/reference/bare/modules/bare-module](https://docs.pears.com/bare/reference/bare/modules/bare-module/)

