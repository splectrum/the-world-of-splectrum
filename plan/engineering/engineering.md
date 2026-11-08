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
  - **Engineering Rules**, in place of the Engineering Commitments: the platform's rules (single concern first, the consistency rules) are better than the previous commitments.
  - **HAICC Platform**: P2P is part of it, its structure; Splectral is within it, the user interaction platform (in the browser); components and solutions are now part of it.
  - **Mycelium Repository**: a multi-paradigm repository built on the five languages (URI, XPath, Git, AVRO, Kafka), which sit in this subsection. The languages are optimised for a P2P sublayer; Mycelium itself has no notion of that layer.
  - **SPLectrum DSL Engine**: SPLectrum is expressed with Mycelium data structures, as are all applications.
  - **Our Software**, in place of SPL Software: an overview of the GitHub organisations and what they are for. At `/engineering/our-software/` (the old `/engineering/spl/software/` and `/engineering/infrastructure/bare-for-pear/` redirected): one section per organisation (purpose, link, broad strokes); bare-for-pear's pages under it, with each module's upstream; p2p-git under it as ours; hyperdrive-fuse and the archived mycelium module marked as from the earlier design.
  - **Third Party Software**: stays, updated; title and URI changed (`/engineering/third-party-software/`, the old `/engineering/infrastructure/` redirected); missing third-party software added.
  - **[A]** bare-for-pear is third-party software we have cloned and adapted; pear-full-square is software we write from the ground up. Both go in Our Software; for bare-for-pear, Our Software deals with the upstream each module was cloned from.
  - The Components and Solutions links go.
- **[C]** Open:
  - How much of the rules the page carries: single concern in full, the consistency rules as short groups with what each ensures, the repository's `docs/rules.md` linked as the authority.
  - Where the old commitments that are not rules go (data first, functionality as metadata, logical over physical): proposed to the Mycelium and SPLectrum pages, as design intent.
  - The name's spelling on the site: Splectral (the request, the GitHub organisation) or SPLectral.
  - The landing's order.
  - The source commit `dev-env-2-p2p-cluster@c6b73bb` is not in the local clone: fetch before writing from it.
