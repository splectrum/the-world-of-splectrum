---
layout: default
lastmod: 2026-11-08
title: "Dual-Runtime Config"
description: "How the same code runs on both Bare and Node.js: the three porting routes (bare-node-runtime, the bare-node alias wrappers, direct swaps), the imports field for libraries, and where remapping is not enough."
---

[Home](/) > [Engineering](/engineering/) > [Third Party Software](/engineering/third-party-software/) > [Bare Runtime](/engineering/third-party-software/bare/) > Dual-Runtime Config

# Dual-Runtime Config

Writing code that runs on both Bare and Node.js
without conditional requires or runtime detection.

---

## Three Porting Routes

Bare's documentation sets out three routes for code
written against Node.js, "in decreasing order of how
much they hide":

1. **bare-node-runtime** — reinstates Node's globals
   and supplies an import map for the whole dependency
   tree (below).
2. **bare-node alias wrappers** — install each Bare
   module with a Node.js name pointing at a one-line
   re-export:
   `npm i bare-fs fs@npm:bare-node-fs`. The wrappers
   depend on their bare-* module at version `*`, so
   npm dedupes them. There is no single `bare-node`
   package to install; [bare-node](https://github.com/holepunchto/bare-node)
   is the repository of wrappers.
3. **Direct swaps** — replace `fs` with `bare-fs` and
   so on in the code itself.

A library that has to run on both runtimes uses an
`imports` map in its own package.json; it applies to
that package only, not to its dependencies.

A `node:` prefix is resolved as the bare package name:
`node:fs` reaches whatever `fs` resolves to (an alias
or an import-map entry).

**Source:**
[docs.pears.com/bare/explanation/migrating-from-nodejs](https://docs.pears.com/bare/explanation/migrating-from-nodejs/)

---

## Package.json Imports Field

The `"imports"` field in package.json maps module
specifiers conditionally by runtime:

```json
{
  "imports": {
    "fs": { "bare": "bare-fs", "default": "fs" },
    "net": { "bare": "bare-net", "default": "net" },
    "path": { "bare": "bare-path", "default": "path" }
  },
  "dependencies": {
    "bare-fs": "^4.8.4",
    "bare-net": "^2.3.3",
    "bare-path": "^3.1.2"
  }
}
```

Code writes `require('fs')` — the runtime resolves
to the correct module. The `"bare"` condition matches
when running in Bare. The `"default"` condition is
the fallback (Node.js).

Unlike Node.js, the `#` prefix on import keys is
not required in Bare — it is supported for
disambiguation but optional.

**Source:**
[github.com/holepunchto/bare-module](https://github.com/holepunchto/bare-module)

---

## Third-Party Node.js Packages

Node.js packages use built-in modules internally.
On Bare, their dependency tree needs remapping. The
`bare-node-runtime` package provides this:

```js
// Set up Node.js globals (process, fetch, encoding, ...)
require('bare-node-runtime/global')

// Load Node.js package with full import remapping
const pkg = require('some-node-package', {
  with: { imports: 'bare-node-runtime/imports' }
})
```

The `with: { imports }` mechanism applies the
complete Node.js-to-Bare module map to the entire
dependency tree of the required package. The
package and all its dependencies transparently get
Bare equivalents instead of Node.js built-ins.

`bare-node-runtime/global` installs the abort-controller,
crypto, encoding, events, fetch, performance, process,
stream, worker and ws globals (`Buffer` is already
global in Bare). Since 1.5.0 it also sets
`process.versions.node` to the current Node.js LTS,
which Bare checks against the `engines.node` range of
each package it resolves.

**Source:**
[github.com/holepunchto/bare-node-runtime](https://github.com/holepunchto/bare-node-runtime)

---

## How It Works Together

For your own code: use `"imports"` in package.json.
Map only the modules you actually use.

For third-party packages: use `bare-node-runtime`
with the `with: { imports }` mechanism. This
handles the full Node.js built-in set.

Example combining both:

```json
{
  "imports": {
    "fs": { "bare": "bare-fs", "default": "fs" },
    "net": { "bare": "bare-net", "default": "net" },
    "path": { "bare": "bare-path", "default": "path" }
  },
  "dependencies": {
    "some-node-package": "^1.0.0",
    "bare-fs": "^4.8.4",
    "bare-net": "^2.3.3",
    "bare-path": "^3.1.2",
    "bare-node-runtime": "^1.5.4"
  }
}
```

```js
// In your code
if (typeof Bare !== 'undefined') {
  require('bare-node-runtime/global')
}
const avro = require('avsc', typeof Bare !== 'undefined'
  ? { with: { imports: 'bare-node-runtime/imports' } }
  : undefined
)
const fs = require('fs')   // resolved by imports field
const net = require('net')  // resolved by imports field
```

The runtime detection (`typeof Bare !== 'undefined'`)
is only needed at the boundary where third-party
packages are loaded. Your own application code stays
clean.

---

## Node.js Compatibility Map

Mapping maintained by bare-node-runtime.

### Supported

These modules are mapped and available — which is not
the same as full API parity. *Supported* means the
common subset is present, not that every Node.js API
matches (see [When remapping isn't
enough](#when-remapping-isnt-enough)).

assert, async_hooks, buffer, child_process,
console, crypto, dgram, diagnostics_channel, dns,
events, fs, http, https, inspector, module, net,
os, path, perf_hooks, process, punycode,
querystring, readline, repl, sqlite, stream,
string_decoder, timers, tls, tty, url, util, v8,
vm, worker_threads, zlib.

Some targets have their own names: `util` →
`bare-utils`, `v8` → `bare-v8`, `perf_hooks` →
`bare-performance`, `sqlite` → `bare-sqlite` (since
bare-node-runtime 1.4.0).

The bare-node repository grades each built-in; only
os, querystring, string_decoder and timers are graded
fully supported, most of the rest partially.

### Unsupported

cluster, constants, domain, http2, sea, sys, test,
test/reporters, trace_events, wasi.

Upstream sources differ on `wasi`: the documentation's
table maps it to `bare-wasi`, while bare-node-runtime
and bare-node list it as unsupported.

---

## When remapping isn't enough

The imports map only remaps module *names*. When the
difference between Node.js and Bare is missing
capability rather than a different name, remapping
cannot close it. The cases below need real work, not a
mapping entry.

**Partial support.** A module being mapped does not
mean full API parity. For example, `crypto` →
`bare-crypto` covers hashing, HMAC, symmetric ciphers,
`randomBytes`, `pbkdf2`, and Ed25519 key pairs with
sign/verify (since 1.15) — but not RSA or ECDSA,
Diffie-Hellman, X509, or `scrypt`.
Code that reaches for an API outside the mapped subset
fails even though the module "is supported."

**Native addons.** Node.js N-API / node-gyp addons do
not work through the imports map at all — it routes
JavaScript specifiers, not compiled binaries. Packages
with native bindings must be rebuilt as Bare addons.
[bare-compat-napi](https://github.com/holepunchto/bare-compat-napi)
provides Node-API-compatible headers, so many existing
addons build against Bare with little or no source
change — but a rebuild is still needed.

**Behavioral differences.** Even a mapped module can
behave differently. Bare's streams are `streamx`, not
Node.js streams; error shapes and event ordering are
not guaranteed identical. Code that depends on exact
Node.js behaviour can break despite a clean mapping.

When these bite, reimplementing for Bare beats
remapping. See
[bare-for-pear](/engineering/our-software/bare-for-pear/)
for first-hand examples of where the standard mechanism
breaks and what was done instead.

