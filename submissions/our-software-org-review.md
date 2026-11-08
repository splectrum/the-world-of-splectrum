---
title: Our Software — org profiles and repository descriptions
type: working-note
status: applied 2026-11-08
---

# Our Software: org profiles and repository descriptions

*Opened 2026-11-08; second round the same day. Proposals for the five GitHub organisations' public profiles and their repository descriptions. Nothing has been changed on GitHub.*

- **[A]** — the author's position or decision.
- **[C]** — proposal from Claude, to be confirmed.

## What the profiles and descriptions are for

- **[A]** A profile gives the organisation's purpose and a bit of context, and can link to the SPLectrum site. Not a detailed listing of its contents.
- **[A]** bare-for-pear: outside software we have cloned and adapted. `git` and `rpc-server` carry the barification changes too; `rpc-server` is an extract, not a full clone.
- **[C]** A profile: what the organisation is for; where it sits among the others (the one rule: engines in pear-full-square, what is made with an engine in its layer's organisation); the context it comes from, with a link to the site; the licence. Broad strokes about the contents (the families by prefix), no module lists, versions or sizes, except where a profile is a starting point (HAICCing keeps its install command).
- **[C]** A repository description: one line saying what the repository is, in the same form across the organisation.
- **[C]** Spelling as on the live profiles: SPLectral, HAICCing.

---

## 1. Profiles (proposed)

### pear-full-square

> # pear-full-square
>
> The engines of the HAICC platform: all of its code, written from the ground up on [Bare](https://github.com/holepunchto/bare) and Holepunch's peer-to-peer stack, one module a repository. The modules come in families, named by their prefix: `mycelium-` for the data repository, `p2p-` for the swarm and its nodes, `splectral-` for the SPLectral platform, `haicc-` and `pkgm-` for deployment and packages.
>
> One rule keeps the organisations apart: the engines live here, and what is made with an engine lives in the organisation of its layer. Packages and projects are in **[HAICCing](https://github.com/haiccing)** (start there), SPLectral's components in [SPLectral](https://github.com/splectral), and later SPLectrum's language modules in [splectrum](https://github.com/splectrum). Everything depends on this organisation; it depends on nothing outside itself and the third-party code it takes in.
>
> The platform is built with AI autonomy in mind: an AI working from a need to running software, within simple, consistent rules, on units that carry what they need. It is part of [SPLectrum](https://splectrum.world), where its [engineering](https://splectrum.world/engineering/) is described. All modules MIT licensed.

### SPLectral

> # SPLectral
>
> Components for SPLectral, the platform for seeing and working with running systems in the browser. The components work in SPLectral's own abstract world (hosts, nodes, resources named by URI, and their activity) and know nothing of what runs underneath. The first system they show is a peer-to-peer swarm, live, with scenarios recorded and replayed: views and scenarios, one a repository.
>
> SPLectral itself, its engine, is in [pear-full-square](https://github.com/pear-full-square); the components are put to use in the projects of **[HAICCing](https://github.com/haiccing)**: start there.
>
> Part of the engineering of [SPLectrum](https://splectrum.world). All components MIT licensed.

### HAICCing

> # HAICCing
>
> Projects you can run, and the packages they need, ready to run. Everything is managed with HAICC, which declares what a project needs, checks it, and makes it so.
>
> HAICC stands for human-AI creative collaboration: the way the [SPLectrum](https://splectrum.world) project is made, and now also the name of the platform built that way, with AI autonomy in mind. A project here is a whole: a swarm of nodes in containers, SPLectral to see it run, and what it is meant to show. The two demos are the first: a node goes quiet and the swarm notices; a node joins from another host by invitation.
>
> ## Start here
>
> *(the install block and its notes as they are; "about 36 MB" → "about 39 MB", the size of the latest setup)*
>
> Part of the engineering of [SPLectrum](https://splectrum.world).

### bare-for-pear

> # bare-for-pear
>
> Outside code brought to the [Bare](https://github.com/holepunchto/bare) runtime. Bare is Holepunch's small JavaScript runtime, the ground the HAICC platform stands on, while much of the JavaScript world assumes Node.js. The repositories here are cloned from outside code and barified: changed to run on Bare. Some are whole clones (avsc for Avro, isomorphic-git), some extracts (avsc-rpc and rpc-server, from avsc's RPC layer).
>
> They come from the first rounds of work on Bare and rest while the platform does not need them; Avro, which avsc carries, is on the way for SPLectrum's language layer. One of them has grown into our own: the git engine p2p-git began here, as a clone of isomorphic-git, and now lives in [pear-full-square](https://github.com/pear-full-square).
>
> Part of the engineering of [SPLectrum](https://splectrum.world). All modules MIT licensed, as their originals.

*[C] checked 2026-11-08: all five repositories are MIT (GitHub licence metadata).*

### splectrum

> # SPLectrum
>
> SPLectrum began as a software engineering idea, a DSL engine for language and meaning, and has grown into a philosophy with language as the medium: [splectrum.world](https://splectrum.world). Its engineering is an effort to build a technological reality in the same image, on three pillars: **HAICC**, human-AI creative collaboration, and now the platform that runs; **Mycelium**, the data repository; and **SPLectrum** itself, the language fabric, a DSL engine still to be built. They run on peer-to-peer swarms, and are built with AI autonomy in mind: from a need to running software.
>
> This organisation is where the work is planned and done: the roadmap, the development environments, and the site. The language modules will live here once the language layer is built. The engines are in [pear-full-square](https://github.com/pear-full-square), SPLectral's components in [SPLectral](https://github.com/splectral), the outside code adapted for Bare in [bare-for-pear](https://github.com/bare-for-pear), and what you can run in **[HAICCing](https://github.com/haiccing)**: start there.

---

## 2. Repository descriptions (proposed)

**[C]** Only those that are wrong, empty or out of step with their organisation.

**pear-full-square**
- `haicc-base-boot`: lists Node.js as a host prerequisite (the host runs Bare only). → "HAICC's boot: plain shell, then Bare; checks the host and fixes what is missing with your yes. Kept tiny and stable."
- `p2p-git`: "for P2P native Mycelium" (Mycelium knows nothing of p2p). → "A git engine on Hyperdrive: stripped isomorphic-git plumbing, behind mycelium-git's backend contract."
- `p2p-node`: "The p2p node module." → "The node application: a swarm node, as it runs in its container."
- `p2p-channel`: lowercase, out of step. → "Messages and requests on a p2p connection, not stored."
- `mycelium-topic`: "The module managing a Kafka topic". → "Mycelium's Kafka layer: topics of records."
- `splectral-*` (11): "Splectral" → "SPLectral".
- `hyperdrive-fuse`, `p2p-docker-dev`: from the earlier design and the first proof of concept; not archived. Archive, or mark as resting.

**SPLectral**
- `base-demo-liveness`, `base-demo-other-host`: same names as the HAICCing demo projects. → begin "The liveness scenario: …", "The other-host scenario: …".

**HAICCing**
- `base-package-haicc`: also where the platform's releases are published; could say so.

**bare-for-pear**
- `avsc`, `isomorphic-git`: still upstream's descriptions; neither says it is a clone. → "Avro for JavaScript, barified for Bare." / "isomorphic-git, barified for Bare; where p2p-git began."
- `git`: "… subtree management, two-reality model": the earlier design's vocabulary. → "Git operations for Bare, barified." (origin to confirm)
- `rpc-server`, `avsc-rpc`: fine as they are; both say they are extracts or what they do.

**splectrum**
- `dev-env-2-p2p-cluster` (archived): could say what it became: "Phase 2: the HAICC platform, built and released."
- `the-world-of-splectrum`: "Home of The World of Splectrum and The Conversation": Jules's call.

---

## 3. Open

1. `git` in bare-for-pear: what was it cloned from?
2. `hyperdrive-fuse` and `p2p-docker-dev`: archive?
3. Who applies the changes on GitHub: Jules by hand, or Claude with `gh` on his word.

## 4. Applied (2026-11-08)

- **[A]** No licence lines in the profiles (unnecessary detail). hyperdrive-fuse and p2p-docker-dev left as they are. Jules asked Claude to make the GitHub changes.
- **[C]** `git` checked: not a clone. 376 lines wrapping the official git command line through `bare-subprocess`, written in spl5 on 2026-04-17 (`2b07186`, "Standalone module — no spl dependency"), copyright SPLectrum contributors; its only predecessor is spl2's own passthrough wrapper (`tools/git`). The bare-for-pear profile says it "wraps the official git command line for Bare".
- Profiles pushed: pear-full-square `fc23d68`, splectral `8ba3555`, haiccing `eb73785`, bare-for-pear `0a914f1`, splectrum `08ec07e`.
- Descriptions changed: haicc-base-boot, p2p-git, p2p-node, p2p-channel, mycelium-topic, the ten splectral-* engines (SPLectral), splectral's two demo scenarios, base-package-haicc, bare-for-pear's avsc, isomorphic-git and git. Not changed: dev-env-2-p2p-cluster (archived), the-world-of-splectrum (Jules's call).
