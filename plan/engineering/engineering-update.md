# Engineering section update: check and initial subset

Drafted 2026-11-27, read only. Sources: the seven documentation packages in
`splectrum-dev-env-3-mycelium/haiccing/base-docs-*` (READMEs read whole, and
`base-docs-package/mrepo/` pages), the site's rules (`CLAUDE.md`,
`tone-of-voice/tone-of-voice.md`, `process/page-structure.md`), the plan
(`plan/engineering/engineering.md` §6, `phase-2-rework-request.md`) and
`docs/engineering/`.

Status words used below: **built** (the package docs say so), **partly
built**, **parked** (built on an earlier release, not yet brought to the
new request structure), **agreed direction** (vision, agreed with the
human), **proposed** (vision, marked proposed or "ours"), **not in the
docs**.

---

## A. The check

### A.1 The opening argument

| Claim | Where in the docs | Status | Note |
|---|---|---|---|
| The aim: full AI autonomy, need to running software | `base-docs-hdlc`, intro: "The aim is full AI autonomy, from a need to running software that satisfies it: KISS, consistent rules and self-containment make it possible." | stated aim | Matches. |
| "An AI can only work autonomously in a system it can read whole and trust; each principle makes it readable, trustworthy or workable in parts" | Not said. Nearest: hdlc intro (KISS, consistent rules, self-containment); hdlc "Working demos": "An AI is the documentation's primary user"; vision "Agents" ("It sees only what is there ... the help cannot be stale, so it does not guess"), marked **ours, not agreed**. | not in the docs | Our formulation. Safer to use the docs' own three enablers (KISS, consistent rules, self-containment). If the owner wants the "read whole and trust" line, it is theirs to say. |

### A.2 Principles (proposal: eight)

| # | Claim | Where in the docs | Status | Note |
|---|---|---|---|---|
| 1 | Self-contained: a package carries code, tests, docs and types | hdlc "Principles": "Self-contained units ... Built: sealed packages, their reports"; hdlc "Single concern": "Shared in development, copied into packages ... Packages share nothing at run time"; hdlc "Products": "A package is self-contained, and so is everything done with it"; package "A structure unit" (`modules/`, `test/`, `README.md`, `types/`) | built | Docs add: instrumentation and audit carried too, and "done is decided mechanically from execution data". |
| 1b | An install knows itself: docs read from its own packages | haicc "Levels": the docs mrepo, "every package in its store, built at its `initialise`"; haicc "Terms", docs mrepo: "any other mrepo answers about itself" | built on the earlier release; the docs as a *boot fixture* not built | vision "Solutions": boot sequence step 4 "the docs: deployed"; "Built ... Not built: ... the other fixtures; 'booted'". The `info` package is in the migration order but not in the working set. |
| 1c | ... its schema registry gathering their types | vision "Type system": "A package self-contained, collated upward ... collated by the schema registry, from the packages in the install's store"; vision "Solutions", "Built (2026-11-27)": registry deployed by the boot mrepo, `avro-registry/load` from the store into its `main`, strict | built (new, 2026-11-27) | Fine to say. |
| 2 | One concern, one place | hdlc "Single concern": "Every part has one concern"; "One concern, one place: implemented once, in a module of its own ... never copied by hand" | rule, in use | Pair it with "copied into packages" so it does not read as contradicting principle 1 (the docs resolve it: shared in development, copied into packages by the tooling, never by hand). |
| 3 | Idempotency: every action can be repeated; a restart or retry is safe | hdlc "Principles": "Every action is idempotent ... A restart, a retry, a commission run again are then safe. In part: the boot protocol's deploy and teardown, the service's transitions, the container's actions"; haicc "Terms", idempotent | partly built | Docs nuance: "a repeat is allowed and may raise a warning; what it does again is the action's own to say". Use "in part". |
| 4 | Visible data state: everything is data, in plain sight; nothing hidden | hdlc "Principles": "A state change is visible through a commit"; "Outcomes are data, on `main`"; package `mrepo/` "The rules": "The repository is the truth; a folder on disk is a view of a commit"; vision "Type system": the registry's "type data is in its `main`, its visible state" | built (as commits) | "Everything is data ... nothing hidden" is stronger than the docs. The docs also have deliberately hidden things: hidden names (`.node.json`, `.layer.json`) no URI can name; local, unreplicated layers (`links`, `avro`); secrets encrypted in a private repository (hdlc "Private instance data", not built; package `mrepo/` "Records": "Never a secret in any property of any record"). Suggested wording: "state is data, and every change to it is a commit". |
| 5 | Data-driven processing: processes act on the data state and are woken by its changes, not orchestrated | Not a principle in the docs packages. Nearest: vision "Pipelines", "The core of myctrans": "Started by a request, or by a commit ... changes flow through an application with no coordinator"; "Proposed, not agreed: the completion of a step places the next one ... (no coordinator process)"; package `mrepo/inbox`: "The runtime watches the folder: a record is taken in as it is written". The old site principle "State driven, not process driven" came from the dev-env-2 rules. | agreed direction (myctrans), parts proposed | Not publishable as a principle "of the platform as built". Move to Design patterns / Vision, marked direction. |
| 6 | A request is the unit of change: nothing changes without one; each recorded | hdlc "Principles": "A request is the unit of change ... Built"; "Only a request changes a repository ... Built: the inbox, the protocols"; package `mrepo/` "The rules": "No log of its own: a request is its own record ... `request/done` the history" | built (in the working set) | Matches. |
| 7 | Strict schema contracts: every value typed, checked where it enters, no leniency; trusted inside | avro intro: "Every value the family keeps has an AVRO schema"; avro "Data shapes": "Rules for what is written from now on; checked once the schemas are there"; avro "What stays JSON": the inbox records "checked at the inbox by their types ... strict"; vision "Solutions", registry load: "Strict (the human: 'There is no leniency on contracts.')"; vision "Type system": "Checked at the boundary, trusted inside"; hdlc "Single concern": "Validation at the boundary" | partly built | Built: the inbox check by the runtime's three types; the registry's strict load. Not built: documents checked against their kind (`crud/create`), a type asked of the registry; most packages parked. "Every value typed" is the rule and the aim, not yet the state. |
| 8 | Decided as a team, reviewed cold: docs are the decisions; each step cold-reviewed, then together | hdlc "Autonomy": "Structure and design are decided as a team ... The team is its members, human and AI alike"; hdlc "Work": "Every task step: a cold review, then a collaborative review, mandatory"; "The documentation is the decisions made" | in use | The cold-review rule dates from 2026-11-27 (today). Stable enough? Owner's call. Docs also: "Autonomy first. Collaboration only where it is required" — the owner asked for **AI autonomy** as a principle; the proposal has it only in the opening. Suggest folding it in: "Autonomy first, decided as a team". |

**In the docs, not in the proposal** (candidates, or for the owner to drop
knowingly): KISS (hdlc intro); "Cascading links: down authoritative, up
informative" (hdlc "Principles", built); "Ids, not versions" (built);
"Validation at the boundary" (hdlc "Single concern"); "Documentation follows
the implementation" (hdlc "Documentation"); "Deploy and teardown, no upgrade
in place" (hdlc "Products"); "Execution is repeatable exactly" (not built);
"Private instance data in a repository of its own" (not built).

**Contradictions with the current site page** (`engineering-principles.md`):

- "**Decentralised.** No central database, no single source of truth"
  contradicts the docs: the schema registry is "the authoritative point
  for schemas" (vision "Type system"); the install has one registry of its
  mrepos, `mrepos/` (haicc "Terms", registry); a swarm's lookup db is kept
  at its master (haicc "Terms", master). Drop it, or narrow it to what
  holds (no central broker: vision "Mycelium", Kafka on Hypercore, a
  direction).
- "**Don't anticipate**": not in the docs; nearest is hdlc "Validation at
  the boundary: ... inside, the happy path. A failure stops the work and
  says why", and the package spec's "Logging and handling".
- The link to `splectrum-dev-env-3-mycelium/blob/main/docs/rules.md` is
  broken: there is no `docs/` folder in dev-env-3 now; the rules are the
  documentation packages.
- "Logical over physical" as phrased ("physical implementation is where AI
  takes the most autonomy") is not the docs' meaning; the docs' is XPath's
  (below, A.3).

### A.3 Design patterns

**The four planes.** Not in the docs: no "plane", no "administration
plane". The docs have **three pillars, haicc on top** (vision "Distributed
applications": "Three component types are enough: data, transformation,
interaction ... haicc is one way of working across the three: the same
commands and records, install and lifecycle, the registry, routing"; haicc
"Platforms": `myctral` (data), `myctrans` (transformation), `splectral`
(interaction)). The mapping administration = haicc is close to the docs
(vision "Deployment": "Its concern is deployment"; haicc "Terms",
registry: "for the install's system administration"). Caveat:
`myctral` and `myctrans` "have their organisations, no packages yet"
(haicc "Platforms"); today the data repository is Mycelium's modules and
the mrepo, in `pear-full-square` and `haiccing`, not `myctral`. So the
planes are a fair organising device for the page, but should be
introduced as *our grouping*, and myctral/myctrans named as where they
are going, not what runs.

#### Data repository

| Pattern | Where in the docs | Status | Note |
|---|---|---|---|
| Multi-paradigm repository: objects and topic records side by side | package `mrepo/` "Records": "Two levels, side by side in a repository. Records in topics are the lower level. Objects ... the higher level ... An object may also be generated from records"; vision "Mycelium", "Multi-paradigm data": "Built up as mycelium matures" | partly built | Topics built (`inbox`, `outbox`, `request/done` are topics: haicc "Terms", topic); objects in `main` built; objects generated from change logs not built. |
| Logical over physical: a query navigates structure; storage hidden and swappable | xpath "Logical and physical": "A query is logical ... What a logical reading hides is the storage"; xpath "The result": "Another way of storing ... is another such reference; readers do not change"; xpath "The node set" (structure types `tree`, `offset-files`); xpath "Both visible" (the physical side's log in the `xpath` layer); package `mrepo/` "Modes and storage" (`filesystem`, `p2p`, `git`) | built | Strongest-supported pattern. Note "both visible": the physical work is logged, not hidden from inspection. |
| Multi-paradigm storage: one type system, an encoding per storage (JSON in git, AVRO in topics, Parquet for tables) | vision "Mycelium": "One type system, an encoding per storage (the team, 2026-11-21) ... a document in git stays JSON, a record in a topic AVRO's binary, a table Parquet's columns"; avro "Why AVRO": "One schema, every form" | agreed direction, partly built | Built: the encoding, packages carrying types, the registry, the `avro` layer. **But** today's topics (inbox, outbox, request layers) are JSON documents (avro "What stays JSON"); AVRO binary is inside attachments; request history in AVRO containers is agreed, not built. Parquet: **proposed** (vision "Tables in Parquet files"). The docs say "one type system, an encoding per storage", not "storage is multi-paradigm". |
| Git for checkpointing and separation of concerns: layers as branches; a request on its own branches, squashed into targets | haicc "Terms", layer: "one branch of an mrepo, with a mode"; package `mrepo/execute`: "A request is processed on branches of its own ... squashed into that target only"; package `mrepo/` "The rules": "Layers are disjoint ... One writer per branch ... Writes are commits only"; hdlc "A state change is visible through a commit"; vision "Mycelium", mycelium-git: "objects, trees, checkpoints" | built | Matches. |
| Streaming data change records, not events | package `mrepo/` "Records": the Kafka record the elementary container; "State is never written directly: it is built from topics"; vision "Distributed applications": "Streaming applications. They work on immutable data change records" (agreed direction); vision "The core of myctrans": "each commit there, a change record" | topics built; change-record streaming between repositories a direction | **"Not events" is not the docs' wording**, and the docs list "events" among what is kept as records (package `mrepo/` "Records", scope: "configuration, audit, metrics, events, state"). The current site's Kafka page says "data state change events". The contrast is the owner's; it should be said in their terms, or as "change records" without the negation. |
| Strict contracts, an unusual schema registry | avro "Names" (types by URI, AVRO name derived "under the hood"); avro "The registry": "No subjects bound to topics, no global ids, no compatibility modes"; avro "Fingerprints": one schema per URI within an install, "the registry refuses another fingerprint under a URI it holds", fingerprint of the contract form, not Parsing Canonical Form; vision "Type system": collated from packages, a fixture at `local/avro-registry`, its type data in its `main`; package `mrepo/avro`: each mrepo's `avro` layer, "a cache, this machine's"; avro "Is and is-like" | partly built | Built: types by URI, the registry component and its strict load, the three essential types in every mrepo's `avro` layer. **Not built**: an mrepo asking the registry for a type and caching it (package `mrepo/avro`: "Not built yet: a type not held is refused"); variants; versions; the `avro` protocol (`validate`, `is-like`). is-like exists in the `mycelium-avro` module's code, not yet as a protocol. Say "each mrepo keeps a register of the types it uses" as the design, the caching as next. |

#### Administration

| Pattern | Where in the docs | Status | Note |
|---|---|---|---|
| Forward visibility in URI space; links down authoritative, up informative | uri "Relative": "No `..`: a running mrepo sees only forward; outside it is reached through a mapping"; uri "Segments": "A request submitted to an mrepo forgets its path outside it"; hdlc "Principles", "Cascading links ... Built"; haicc "Terms", link: "in forward visibility only" | built | Proposal's "sees only below itself" is close; the docs' "outside is reached through a mapping" (the package store, the registry's link) should not be lost. |
| Data linking and replication: links, lazy loading, a replica a verified cache | haicc "Terms", shortcut and link (built); vision "P2P": "a node holds links and loads lazily what it reads"; vision "Data is local": "Replicated lazily, such a store works as a cache: a block fetched on first read, verified"; vision "Cluster": "A deployment links to packages ... rather than containing them"; package `mrepo/packages`: bundles hard linked from the store, "The layer commits the list and the hashes, not the bytes"; avro "The cascade": "A request sent on ... linked, not copied" | links built; lazy replication **parked** (swarm, Hypercore) and partly direction | The swarm's replicated lookup db (haicc "Terms") ran on the earlier release and is parked. Write linking as built, replication as having run and being brought back. |
| Fractal lifecycle: boot, commission, service, teardown at every level | haicc "Terms": lifecycle, hook, commission ("its components deployed, each commissioned by its own, the cascade"); haicc "Levels"; vision "Help and haici": "our setup is recursive and fractal" (the human) | built (hooks in the working set; `service` in the migration order, parked for most) | Fine as a pattern. |
| Self-describing installs: docs and schema registry as fixtures built from the packages present | vision "Solutions": "The fixtures, proper components ... the schema registry, the mrepo registry, the docs"; "A fixture has a fixed position"; "Repaired by a rebuild: ... what it holds is derived from the packages in the store"; vision "Agents" (help "tailored to each specific mrepo", the human) | partly built | Registry: built. Docs mrepo: built (earlier release), not yet as a boot fixture. Mrepo registry as a component, "booted": not built. |

#### Processing

| Pattern | Where in the docs | Status | Note |
|---|---|---|---|
| The request as data: self-contained, its processing recorded in it, answered through an outbox | avro "The cascade" (record, request, attachment, each self-contained); package `mrepo/` "A request"; package `mrepo/outbox`; vision "Request realms": every sender through two calls, `drop` and `answered` | built (working set) | Matches. Request realms beyond the first: direction. |
| Pipelines kept with their data, ending in a proposal the repository accepts or refuses | vision "Pipelines" (the human: "But that is for later"); vision "The core of myctrans" (agreed 2026-11-18): "Its end, a proposal ... The repository validates, merges and commits it, or refuses and says why" | agreed direction, nothing built | Docs tension: "kept with their data" (associated with the data structures) vs myctrans: "the pipeline's state is no longer a branch of the data's `main`", it lives in the myctrans component's own repository. Phrase: "a pipeline associated with the data it produces, its state in its own repository". |

#### Interaction

| Pattern | Where in the docs | Status | Note |
|---|---|---|---|
| The terminal equivalent: components issue the commands a person would | vision "Distributed applications": "Splectral ... starts with components that issue commands through its server, the terminal's equivalent"; haicc "Levels", Splectral: "its server is the data layer, running the commands a component asks for as a terminal does" | built as proof of concept; **parked** | Interaction "is the boundary with anything outside: a person through a UI, an AI agent, another system, a device, a timer" (vision): a good one-liner. |

**Owner-named patterns the docs support but the proposal under-weights:**
"visible data state" (as a pattern: the registry's type data in `main`, its
visible state; both logical and physical visible in XPath); "structure where
operationally necessary, natural language where appropriate" (avro "Structure
or language"), arguably the most unusual design choice for an AI-first system.

### A.4 Other claims in the proposal

| Claim | Where | Status | Note |
|---|---|---|---|
| Pillars: HAICC the platform, Mycelium the repository, SPLectrum the language layer | site plan §6 [A]; vision "Organisations": "mycelium the repository layer, splectrum the language layer, haicc the project layer" | agreed | Docs call haicc "the project layer" in "Organisations" and "the haicc platform" in `base-docs-haicc`. SPLectrum's language layer: "will have a tool of its own" — not started. |
| base as the first concept build | haicc "Terms", family: "packages that follow one package specification: `base`"; avro "The family": "We develop within a 'family' scope (base at the moment)" | stated | "First concept build" is the owner's phrase; the docs say family. Fine. |
| Development state: working set = boot, runtime, schema registry, haicc command; swarm, Splectral, demos parked | hdlc "Schema migration": "The working set grows ... A parked package ... stays at its last release" | stated | The docs do not list the working set's members by name; the brief and `CLAUDE.md` do. |
| avsc in use, pinned at 27bebb2, its text encoder fixed (texts over 4096 bytes cut short) | Not in the docs packages. Confirmed in code: `pear-full-square/mycelium-avro/package.json` and `mycelium-value-avro` pin `bare-for-pear/avsc#27bebb2c...`; `mycelium-avro/test/avro.test.js`: "the library copy for Bare once wrote such a text cut short: bare-for-pear/avsc, fixed at 27bebb2" | built | True. The site's bare-for-pear page says the modules "rest ... none is used by it now": now wrong for avsc. |
| Vision items (request realms, pipeline engine/myctrans, myctral, distributed applications, private data, devices, model shaping) | vision: each a section | each as marked there | Private data, Devices, Connectivity: **research, not done**. Request realms: first realm built. Model shaping: the direction the human's, the rest "ours". |

---

### A.5 What changed (the owner's decisions, 2026-11-27, commit 7ea6ad7f)

The documentation now says what was missing or different in A.1 to A.4:

| Item in A | Now in the docs | Effect |
|---|---|---|
| A.2 #4 Visible data state ("nothing hidden" went too far) | hdlc "Principles", **Visible data state**: "no state is hidden in code; data and metadata alike are in the repository. `main` is the data layer; the other layers hold metadata, some local to the machine, some with a larger scope. Built: an mrepo's layers." | Settled. Hidden names and local layers are no longer a contradiction: they are metadata, in the repository. |
| A.2 #5 Data-driven processing (not in the docs) | vision "Mycelium", **Data-driven processing**: "woken by data change records and by patterns in the data, never orchestrated from outside; the direction of `myctrans`" | Now documented. A direction, so it goes in the patterns, marked as a direction. |
| A.3 "Change records, not events" (not in the docs) | vision "Mycelium", **Data change records, not events**: "what streams is a record of what changed in the data, immutable; the word 'event' is not used for it" | Settled. The site says "data change records" and never "events". The older line in package `mrepo/` "Records" ("events" in its scope list) is still there: a small inconsistency in the docs, for the dev team. |
| A.3 The four planes (not a term) | vision, new section **The four planes**: "New, embryonic, developing". Administration (haicc, being built out now), data repository (`myctral`), processing (`myctrans`), interaction (`splectral`), "each its own: its packages, its server, its request plane" | Settled. Publish them as embryonic. |
| A.1 / A.2 #8 AI autonomy (only in the opening) | vision "Agents", **AI a component of the platform**: "across the whole lifecycle ... outside, driving the platform as a user does; inside, a component of it, self-contained as every unit is, the documentation it works from inside the install with it" | A principle of its own. |
| (new) Air-gapped | hdlc "Principles", **Air-gapped, from self-containment**: "inside, nothing reaches the internet; what comes from outside comes through a boundary process, validated and checked there. Built in part: an install deploys from its sources folder only" | New principle, partly built. |
| (new) Lazy and functional | vision "Mycelium", **Lazy and functional**: a request completed by its processing, not answered (built); an XPath result completed as it is read (partly built); just-in-time processing; lazy replication | New pattern. Built in part. |
| A.2 #8 "Reviewed cold" (one day old) | hdlc "Collaboration", **Continuous improvement through dialogue**: "each member does the work as they see it and asks for feedback; the cold review and the collaborative review are that cycle made a rule" | Replaces "reviewed cold" as the working principle. |
| Links (A.4, D.12) | The owner: link only to the haiccing documentation packages, top level; never to the dev environment | All section anchors are gone from the drafts. |
| p2p patterns (A.3 "Links over copies", lazy replication) | The owner: p2p's own patterns are not clear yet | One line at most. |

Still as in A: strict contracts are only partly built; the registry's dynamic
caching, variants, versions and the `avro` protocol are not built; the swarm,
SPLectral and the demos are parked; the "decentralised, no single source of
truth" line on the current site still contradicts the authoritative schema
registry and goes.

---

### A.6 The owner's answers to the open questions (2026-11-27, commit e24bb3d6)

| Question | Now in the docs, or the owner's answer | Effect on the drafts |
|---|---|---|
| "Events" | vision "Mycelium": "'Event' only where the data change is clear from its context ... never for orchestration" | "Data change records" stays the main wording; "event" is allowed where the data change is clear. |
| Names and case | haicc "Terms", **Names, two forms**: in prose HAICC, SPLectral, SPLectrum; as a URI, command, package or organisation name, lowercase (`haicc`, `splectral`, `haicc . boot/deploy`) | Prose uses the capitalised forms. Organisation, package and command names are lowercase in code format, and Our Software's headings become `haiccing`, `splectral` and so on. |
| Mycelium's place | vision "Mycelium", opening: "Mycelium is the data repository concept ... stream processing and data change records first; XPath over it, logical apart from physical; AVRO the base layer of its data; the paradigms built on top. The data repository plane and the processing plane are a functional split on it" | The landing now names four pillars: HAICC, Mycelium (with myctral and myctrans as its two planes), SPLectral and SPLectrum. The Data repository and Processing groups in the patterns are introduced as Mycelium's. |
| myctral, myctrans | vision "The four planes", **Two planes on Mycelium**: "their organisations public, their development to start in due course" | Both are named and linked, with a note that development starts in due course. |
| Personas | The owner: used in our continuous improvement cycle; they stay, without much emphasis | One line under the dialogue principle, plus a small page moved out of `splectrum/`. Not a landing entry. |
| Process models | The owner: fold into Vision as data-driven processing | Added to the Vision page's data-driven paragraph; the old URLs redirect to Vision. |
| First-person lines | The owner's own | Marked in C as **[owner writes]**; I have not written them. |

---

## B. The drafts

Register: SPLectrum, with the engineering vocabulary shift (Being to Entity, Language to Protocol, Subject to Owner, Reality to Data state). Prose names are HAICC, SPLectral and SPLectrum; system names are lowercase in code format. Links go only to the top level of GitHub organisations and of the haiccing documentation packages.

### B.1 Engineering (landing): `/engineering/`

```markdown
---
layout: default
lastmod: 2026-11-27
title: "Engineering"
description: "SPLectrum engineering: HAICC, a platform for system management built for AI autonomy, with base as its first concept build."
---

[Home](/) > Engineering

# Engineering

The aim is full AI autonomy: from a need to running software that meets it. AI is not just a helper outside the system. It is a working part of the platform for the whole lifecycle, and the documentation it works from comes inside each install.

What is being built now is **HAICC**, a platform for system management. Software runs as *mrepos*, repositories that run. An mrepo holds its data state in layers: `main` holds the data, and the other layers hold its metadata. Nothing changes except through a request, and each request is kept as a record. An install describes itself, gathering its documentation and its schema registry from the packages it is made of.

**base** is the first concept build: a family of self-contained packages on GitHub. It is partway through a move to strict schema contracts, made one package at a time. What runs on the new structure today is the boot, the runtime, the schema registry and the `haicc` command. The swarm, SPLectral and the demos ran on earlier releases, and each returns once it is brought over.

Next to HAICC sit three further pillars. **Mycelium** is the data repository concept: streams of data change records, queries that keep the logical apart from the physical, and AVRO as the base layer. It has two planes: myctral for the repository itself and myctrans for transformation. **SPLectral** handles interaction. **SPLectrum**, the language layer, is still to come.

The detail is kept with the code, in the documentation packages. The way in is [base-docs-haicc](https://github.com/haiccing/base-docs-haicc).

---

**[Engineering Principles](/engineering/engineering-principles/)**: what the platform is built on.

**[Design Patterns](/engineering/design-patterns/)**: the less usual choices, plane by plane.

**[Vision](/engineering/vision/)**: where it is going.

**[Our Software](/engineering/our-software/)**: the GitHub organisations and what each one is for.

**[Third Party Software](/engineering/third-party-software/)**: runtimes, platforms and modules, as they come from upstream.
```

(The body runs to about 270 words. To bring it to 250, the first sentence of the Mycelium paragraph can be shortened.)

### B.2 Engineering Principles: `/engineering/engineering-principles/`

```markdown
---
layout: default
lastmod: 2026-11-27
title: "Engineering Principles"
description: "The principles the HAICC platform is built on: AI autonomy, self-containment, air-gapping, visible data state, requests, idempotency, strict contracts, dialogue."
---

[Home](/) > [Engineering](/engineering/) > Engineering Principles

# Engineering Principles

The aim is full AI autonomy, from a need to running software. Each principle helps make a system that an agent can understand, run and change on its own.

**AI as a component.** AI takes an active part in the whole lifecycle. From outside, it drives the platform the way a user does. Inside, it is self-contained like every other unit, and its documentation sits in the install with it. [base-docs-vision](https://github.com/haiccing/base-docs-vision)

**Self-contained.** A package carries its own code, tests, documentation and types. It is built, tested and released on its own, and within it each concern is implemented once. [base-docs-hdlc](https://github.com/haiccing/base-docs-hdlc)

**Air-gapped.** Because each unit is self-contained, nothing inside the platform reaches the internet. Whatever comes from outside passes through a boundary process, where it is validated and checked. [base-docs-hdlc](https://github.com/haiccing/base-docs-hdlc)

**Visible data state.** No state is hidden in code. Data and metadata both live in the repository. `main` is the data layer; the other layers hold metadata, some local to the machine and some shared more widely. [base-docs-hdlc](https://github.com/haiccing/base-docs-hdlc)

**A request is the unit of change.** Only a request posted to a repository changes it. Each request is kept as its own record, and together those records make up the repository's history. [base-docs-hdlc](https://github.com/haiccing/base-docs-hdlc)

**Idempotency.** Any action can be run again. A repeat is safe, and it says what, if anything, it did again, so a restart or a retry holds no surprises. This is built in part so far. [base-docs-hdlc](https://github.com/haiccing/base-docs-hdlc)

**Strict contracts.** Every value has a schema. Data is checked where it enters, with no leniency, and trusted once it is inside. Packages are being brought to this one at a time. [base-docs-avro](https://github.com/haiccing/base-docs-avro)

**Continuous improvement through dialogue.** Nobody tries to be right the first time. Each team member, human or AI, does the work as they see it and then asks for feedback. Every step is reviewed cold, then talked through together. Some of this work is done in [personas](/engineering/personas/). [base-docs-hdlc](https://github.com/haiccing/base-docs-hdlc)
```

### B.3 Design Patterns: `/engineering/design-patterns/` (new)

```markdown
---
layout: default
lastmod: 2026-11-27
title: "Design Patterns"
description: "An introduction to the less usual design choices in the HAICC platform and Mycelium, grouped by four planes: administration, data repository, processing and interaction."
---

[Home](/) > [Engineering](/engineering/) > Design Patterns

# Design Patterns

The work falls into four planes: administration, the data repository, processing and interaction. Each plane is meant to have its own packages, its own server and its own request plane. The idea is young and still developing. Administration belongs to HAICC and is being built out now. The data repository (myctral) and processing (myctrans) are two planes on Mycelium, its internal functions and its transformations. Interaction is SPLectral's. Where a pattern below is still a direction, it says so.

## Administration

**One lifecycle at every level.** Every mrepo, from the boot down, goes through the same steps: deploy, commission, service, teardown. Each mrepo commissions whatever it deployed.

**Installs that describe themselves.** The schema registry and the documentation are fixtures of an install, built from the packages it holds. The schema registry is already in place.

**Forward visibility.** A running mrepo can only look forward in its URI space. Its link down to what it deployed is authoritative; the link back up is only informative.

## Data repository: Mycelium

**Data change records.** The foundation is a stream of immutable records of what changed in the data. Today they carry the request streams; flowing between repositories is a direction.

**Logical over physical.** A query moves through the data state as it finds it and knows nothing of how that state is stored. The storage can change without the reader noticing.

**Git for checkpoints and separation.** Each layer is a git branch with a single writer. A request works on branches of its own and lands as one commit.

**AVRO underneath, many paradigms on top.** One schema types a value in whatever form it is stored. Objects and records already sit side by side; other paradigms are built on top of them.

**An unusual schema registry.** Types are named by URI. There are no global ids and no compatibility modes. Whether data can be read as a given type is for the reader to decide.

## Processing: Mycelium

**Lazy and functional.** A data structure is completed by processing, not answered in a separate reply. A request is filled in as it is processed, and a query result as it is read. Processing more generally just in time is a direction.

**Data-driven processing.** *A direction.* Processing is woken by data change records and by patterns in the data, never orchestrated from outside. It ends in a proposal, which the data repository accepts or refuses.

## Interaction

**The terminal equivalent.** A SPLectral component issues the same commands a person would type. Interaction is the boundary with anything outside: a person, an agent, another system. It ran as a proof of concept and is parked for now.

Peer-to-peer has its own patterns, lazy replication among them. They are not settled yet.

The detail is in [base-docs-vision](https://github.com/haiccing/base-docs-vision), [base-docs-avro](https://github.com/haiccing/base-docs-avro) and [base-docs-xpath](https://github.com/haiccing/base-docs-xpath).
```

### B.4 Vision: `/engineering/vision/` (new)

```markdown
---
layout: default
lastmod: 2026-11-27
title: "Vision"
description: "Where the HAICC platform is going: the planes as platforms, data-driven processing, private data, devices, model shaping and the language layer."
---

[Home](/) > [Engineering](/engineering/) > Vision

# Vision

These are directions, not yet built, and they change as the work does. The current picture, with each part marked as agreed or not, is kept in [base-docs-vision](https://github.com/haiccing/base-docs-vision).

**The planes as platforms.** Data repository, processing and interaction each become a platform: myctral and myctrans on Mycelium, and SPLectral. HAICC works across all three. Applications are built from components of the three kinds.

**Data-driven processing.** In myctrans, processing has no coordinator. Pipelines are woken by data change records and by patterns in the data, and each ends in a proposed change that the data repository accepts or refuses. Processes can then evolve the way discovery does elsewhere: each change in the data state can set off a wave of scanning, of diverse independent responses, and of keeping what works.

**Private data.** Each owner's private data sits in a repository of its own, encrypted and replicated only between their paired devices. Still research.

**Devices.** A full peer on every device, the phone included. Still research.

**Model shaping.** Small open models, each tuned for one task and placed where the hardware suits it. The first would be an operator that turns an intention into `haicc` commands.

**The language layer.** SPLectrum's own: capabilities named by URI and typed with AVRO, growing into a platform for building protocols. Not started.
```

Note: the scan, diversify and evolve sentence comes from the old process-model pages. The docs packages do not have it, so it is the site's own carry-over. Keep it only if the owner wants it (see D).

### B.5 Our Software: changes only

1. **Opening.** Change "five GitHub organisations" to seven, and give the organisation names lowercase in code format. Add:
   - **`myctral`** ([github.com/myctral](https://github.com/myctral)): the data repository plane on Mycelium. Public, development to start in due course.
   - **`myctrans`** ([github.com/myctrans](https://github.com/myctrans)): the processing plane, data transformation on Mycelium. Public, development to start in due course.
2. **Headings.** Use `bare-for-pear`, `pear-full-square`, `haiccing`, `splectral`, `splectrum` (system names). Prose keeps HAICC, SPLectral and SPLectrum.
3. **bare-for-pear** (on `our-software/index.md` and `our-software/bare-for-pear/index.md`):
   - Replace "rest while the platform does not need them" / "none is used by it now" with: "avsc is in use again: the platform's type system runs on it, pinned at commit 27bebb2, where its text encoder was fixed (texts over 4096 bytes were written cut short). The others rest."
   - Add one line to the same effect on `bare-for-pear/avsc/index.md`.
   - Drop "Avro ... is a direction for SPLectrum's language layer".
4. **pear-full-square.** The families are now `mycelium-`, `mrepo-base-` (the code behind each protocol package), `p2p-`, `splectral-`, `haicc-` and `pkgm-`.
5. **haiccing.**
   - Remove "Projects you can run ... The two demos are the first" and the line about base-package-haicc's setup file.
   - Add: "The base family, the first concept build of the HAICC platform: self-contained packages, components and a workbench, with the documentation packages as the way in." Link [base-docs-haicc](https://github.com/haiccing/base-docs-haicc).
   - Add: "The demos ran on earlier releases and return after the schema migration."
6. **splectral.** The components are now the help viewer and the log viewer. The live swarm with recorded scenarios belonged to an earlier release and is parked.
7. **splectrum.** Remove any pointer to the development environments as something to visit. Keep "where the work is planned, and this site".

---

## C. What goes, what stays, redirects, broken links

### Stays
- `docs/engineering/index.md`: rewritten (B.1).
- `docs/engineering/engineering-principles.md`: rewritten (B.2), same URL.
- `docs/engineering/our-software/**`: edited (B.5).
- `docs/engineering/third-party-software/**`: unchanged.
- **Personas, moved:**
  - `splectrum/haicc/personas/index.md` becomes `docs/engineering/personas/index.md`.
  - `.../public-conscious-persona/index.md` becomes `docs/engineering/personas/public-conscious-persona/index.md`.
  - Breadcrumbs are updated. The pages are reached from one line in the Principles page, not from the landing.

### New
- `docs/engineering/design-patterns/index.md` (B.3)
- `docs/engineering/vision/index.md` (B.4)

### Goes, with lines for `docs/_redirects`

Put the specific lines first, because Cloudflare takes the first match:

```
/engineering/splectrum/haicc/personas/*        /engineering/personas/:splat   301
/engineering/splectrum/haicc/process-models/   /engineering/vision/           301
/engineering/spl/platform/haicc/process-models/ /engineering/vision/          301
/engineering/spl/platform/substrate/*          /engineering/design-patterns/  301
/engineering/spl/platform/mycelium/            /engineering/design-patterns/  301
/engineering/spl/platform/splectrum/*          /engineering/vision/           301
/engineering/spl/platform/swarm/               /engineering/design-patterns/  301
/engineering/spl/platform/*                    /engineering/                  301
/engineering/spl/components/                   /engineering/                  301
/engineering/spl/solutions/                    /engineering/                  301
/engineering/splectrum/mycelium/*              /engineering/design-patterns/  301
/engineering/splectrum/*                       /engineering/vision/           301
```

The pages removed (apart from the moved personas):
- `spl/platform/`, all of it, both `process-models.md` among them;
- `spl/components/` and `spl/solutions/`;
- `splectrum/`: its index, top-level-design, `haicc/index`, `haicc/process-models`, `mycelium/*` and `splectrum/namespace`.

### Incoming links outside the section

| File | Link | Suggested |
|---|---|---|
| `docs/about.md:18` | `/engineering/spl/platform/mycelium/` | `/engineering/`. **[owner writes]**: the sentence is first person ("a triangle ... Mycelium — a data fabric"), and Mycelium is now the data repository concept |
| `docs/haicc.md:20` | `/engineering/spl/platform/haicc/` | `/engineering/`. **[owner writes]**: first person |
| `docs/language/types/software/index.md:36` | `/engineering/spl/platform/substrate/avro/` | `https://github.com/haiccing/base-docs-avro` |
| `docs/reality/discovery/index.md:40` | `/engineering/splectrum/haicc/process-models/` | `/engineering/vision/` |
| `docs/_posts/2026-05-04-blog-as-public-conscious-persona.md:31,35` | `.../splectrum/haicc/personas/...` | `/engineering/personas/public-conscious-persona/` and `/engineering/personas/`. The redirects cover them anyway; editing a post is the owner's call |
| `docs/positioning/index.md:29` | `/engineering/` works, but "its substrate and infrastructure sections" is stale | reword: "its design patterns" |
| `docs/engineering/engineering-principles.md` | the dev-env-3 `docs/rules.md` link, already broken | removed by B.2 |
| `docs/about.md`, `docs/p2p.md` | the lines saying progress is slow and P2P is a wish list (plan §5) | **[owner writes]**: first person |

These keep working: `p2p.md` and `language/types/software` link to `/engineering/third-party-software/bare/`, and `_includes/area-grid.html` links to `/engineering/`.

---

## D. Still open

Nothing substantive. Two small choices for the owner:

1. **Vision, data-driven processing.** Keep or drop the scan, diversify and evolve sentence brought over from the process-model pages. The docs packages do not have it.
2. **Personas.** Is the new URL `/engineering/personas/` acceptable, with the pages moved as they are?

The owner's own first-person lines are listed in C as **[owner writes]**.
