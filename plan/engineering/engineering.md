# Engineering — on hold

*Working document, opened 2026-10-13. The Engineering section holds work that is currently on hold — stalled, not for a bad reason. A record of where it stands and what is wanted from it.*

## How to read this document

- **[A]** — the author's claim or decision, verbatim or near-verbatim.
- **[C]** — a formulation supplied by Claude in discussion, to be confirmed.

---

## 1. Where it stands

- **[A]** A number of ideas in engineering still hold and are wanted to be worked on, but there is no time for it at the moment. The AI (agent) scene is evolving so rapidly that it feels like building on shifting ground.
- **[A]** Engineering in general, P2P, Cardano and Midnight remain on the wish list.
- **[A]** The name SPLectrum originated in engineering, as a DSL engine — together with Mycelium, a novel data repository, and HAICC, the human-AI linking.

## 2. What is wanted from it

- **[A]** Work out in engineering the language medium, and reality as SPLectrum sees it — subject experience, the shared tools and language, and so on.
- **[C]** The tone-of-voice guidance already names the vocabulary shift for engineering: Being → Entity, Language → Protocol, Subject → Owner, Reality → Data state. The subject's experience modelled as an owner with a private data state and shared protocols is the engineering counterpart of the seed.

## 3. Three kinds of material

**[C]**

1. **Ideas that hold regardless of technology** — engineering as one more language for the same seed; the owner with a private data state and shared protocols; Mycelium as a repository where data lives with its owner; SPL as a DSL engine; HAICC as the link between human and AI. Concepts that can be written to last.
2. **Work done and resting** — the Bare/Pear modules, avsc, the platform pages: a record of what was built, fine as it is if marked as resting.
3. **The wish list** — the P2P platform, Cardano, Midnight, agent integration: what is wanted when time allows and the ground has settled.

## 4. How to deal with it in writing on the site

- **[A]** This needs figuring out.
- **[C]** Proposal: the Engineering landing opens with one honest paragraph — engineering is where SPLectrum began, the ideas still hold, building is paused while the thinking matures and the AI field settles; what follows is a record, not a running build. The About page carries the origin story in the author's voice. The P2P page speaks of what is wanted, not of what is being built.

## 5. The coming rework

- **[A, 2026-11-05]** The section gets a rework to the new P2P cluster work, not yet: it waits until the click-and-run demos are available. Unscheduled.
- **[C]** Likely in scope when it comes:
  - The structure: Platform, Components and Solutions rest on the older picture (bridgehead, federation, seed nodes), against the swarm, managers, nodes and projects that now run. Rethink the structure before updating pages.
  - New or changed: Splectral (absent from the section), HAICC as tools as well as personas, Mycelium as built, data in topics.
  - What runs is written as fact; directions not settled stay marked as directions.
  - Outside the section: the lines in About and P2P that say progress is slow and that P2P is a wish list. They stand until the rework.

## 6. The structure, agreed 2026-11-08

On the phase 2 rework request (`plan/engineering/phase-2-rework-request.md`).

- **[A]** Three pillars: SPLectrum, HAICC and Mycelium. They sit on core languages and run on P2P swarms. SPLectrum is the language fabric (not yet started), HAICC is now the platform, Mycelium the data repository. It is being built with AI autonomy in mind.
- **[A]** The landing's entries:
  - **Engineering Principles**, in place of the Engineering Commitments (changed from "Engineering Rules" 2026-11-08): the platform's principles are better than the previous commitments. A principle says why it is built the way it is; a rule is short and checkable, the form a principle takes in practice. At `/engineering/engineering-principles/`, the old URL redirected. The page: each principle with a short explanation, grouped (design, structure, running, working), linking the repository's `docs/rules.md` for the consistency rules.
  - **HAICC Platform**: P2P is part of it, its structure; SPLectral is within it, the user interaction platform (in the browser); components and solutions are now part of it.
  - **Mycelium Repository**: a multi-paradigm repository built on the five languages (URI, XPath, Git, AVRO, Kafka), which sit in this subsection. The languages are optimised for a P2P sublayer; Mycelium itself has no notion of that layer.
  - **SPLectrum DSL Engine**: SPLectrum is expressed with Mycelium data structures, as are all applications.
  - **Our Software**, in place of SPL Software: an overview of the GitHub organisations and what they are for. At `/engineering/our-software/` (the old `/engineering/spl/software/` and `/engineering/infrastructure/bare-for-pear/` redirected): one section per organisation (purpose, link, broad strokes); bare-for-pear's pages under it, with each module's upstream; p2p-git under it as ours; hyperdrive-fuse and the archived mycelium module marked as from the earlier design.
  - **Third Party Software**: stays, updated; title and URI changed (`/engineering/third-party-software/`, the old `/engineering/infrastructure/` redirected); missing third-party software added.
  - **[A]** bare-for-pear is third-party software we have cloned and adapted; pear-full-square is software we write from the ground up. Both go in Our Software; for bare-for-pear, Our Software deals with the upstream each module was cloned from.
  - The Components and Solutions links go.
- **[A]** Source (2026-11-09): `splectrum-dev-env-3-mycelium`, where the work continues; dev-env-2 gets no further commits. The rework request's `dev-env-2-p2p-cluster@c6b73bb` stands for the platform as released; the principles are taken from dev-env-3 (`rules.md`, `docs/rules.md`, `docs/design/`), checked at its head when the page is written.
- **[C]** Open:
  - Functionality as metadata, the one old commitment not built: to the Mycelium or SPLectrum page, as a direction.
  - The landing's order.

## 7. The rework from the engineering update (2026-11-28)

Source: `plan/engineering/engineering-update.md` (the development side's check of the seven haiccing documentation packages, with drafts; received 2026-11-28).

- **[A]** The brief: update the section to the new direction of development, without going into detail. Base it on where development is now and point to the documentation packages in a general way. Those docs change continually as development goes on, and the section here is updated regularly.
- **[A]** The section is written from our point of view, using the update. The development side then brings its documentation in line with the section. The documentation is still being brought up to standard, and some parts are not there yet.
- **[A]** The five languages (URI, XPath, Git, AVRO, Kafka) stay. Each gets a platform-specific interpretation, not the standard one; that is what makes them interesting. The documentation packages are an example of the parts not yet up to standard (packages exist for URI, XPath and AVRO, none yet for Git and Kafka).
- **[A]** The shape, agreed 2026-11-28: Landing, Engineering Principles, Mycelium (the five languages as its subsection), Vision, Our Software, Third Party Software. No separate Design Patterns page; its material goes mostly into Mycelium, the rest into the landing or Vision.
- **[A]** Mycelium is the data repository concept, and is now a lot about git, the layers, the linking, the protocols, AVRO and XPath. HAICC is the management plane. The other planes are in the pipeline; SPLectral has already started.
- **[A]** Mycelium is very much the five languages at the moment. What it does not include is p2p, but p2p can be seen as the substrate on which the five languages become active.
- **[A]** For the development side, when the section is done: separate documentation packages for Git and Kafka, as there are for URI, XPath and AVRO.
- **[A]** The shape amended 2026-11-28: a **HAICC** page next to Mycelium, the management pillar: mrepos, the request as the unit of change, the lifecycle, self-describing installs, protocols. HAICC is the pillar furthest in development, and the big change is from the SPLectrum platform to the HAICC platform. The landing stays short, the aim and the pillars a line each. SPLectral a line on the landing and in Vision until there is more to say.
- **[A]** Linking (shortcuts, hops across mrepos) is very much Mycelium, and Mycelium only.
- **[A]** Protocols are our way of doing APIs: actions bundled under a single concern.
- **[A]** The split holds: git is about state, a slow heartbeat of checkpoints and commits; Kafka is about data in motion. (The docs' two levels, objects and records side by side, sit alongside it.)
- **[A]** The five language pages move from `/engineering/spl/platform/substrate/<language>/` to `/engineering/mycelium/<language>/`, redirected, where it makes sense.
- **[C]** Mycelium sketch (2026-11-28): the landing short (the data repository concept; the five languages each a platform-specific reading, P2P the substrate they become active on; the ground of myctral and myctrans); a page per language, its reading now in broad strokes; linking a section of its own. The current substrate index's framing (adapted to P2P, each adopted as a subset, the standard side on the positioning subject pages) stays; "data change events" becomes "records"; the swarm-first framing and "decentralised, no single source of truth" go.
- **[A]** Mycelium review (2026-11-28): Mycelium is *built on* five languages, each a set of concepts, mixed together; not written in five in parallel. Kafka for streaming; Git for layered state in time, now and before; AVRO the data structure contracts for the base layer (not the base layer itself); URI sets the URI standards, XPath the XPath standards. The logical/physical split made clearer, as what lets Mycelium link in and layer remote and structurally different repositories; layering is XPath querying through layers in an assigned order (much of it future, touched on lightly). The execution planes (myctral, myctrans) are not part of Mycelium: they belong to the structure of processing.
- **[A]** After the cold review (2026-11-28): layering as the vision has it (an overlay: what is seen is the combination, what is stored stays apart, a write to the local side only), with several read-only layers possibly in an assigned order. Not "Mycelium has no notion of that layer": `main`, the data layer, has no notion of the metadata layers, which are internal to the mrepo; seen from outside, a Mycelium repository has no layers. Mycelium is the data fabric, the data structure construct the mrepo implements. Decentralisation is the P2P substrate's. The subject pages linked with a short summary each.
- **[A]** Old pages are removed once the new set covers them, with a redirect and inbound links updated (done for the old Mycelium page and the substrate index, 2026-11-28).
- **[A]** Git page (2026-11-28): Git is the low-heartbeat checkpoint/commit engine. Layering is separation of concerns: static layers (`main`, `avro`, …) and dynamic ones (request, execute). The layers other than `main` stay on the peer, not "the machine".
- **[C]** For the development side, with the Git and Kafka packages: the vision's "two planes on Mycelium" and "a functional split on it" read the planes as Mycelium's; the section places them with processing.
- **[C]** Reading of the update against the brief: the landing, Principles and Vision drafts fit. Design Patterns and the snapshot facts (the working set named package by package, commit pins, package families, "built in part" per item) go into more detail than the brief wants; say where development is in broad strokes. The update's part A is the record behind the drafts, not site material.
