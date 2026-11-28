# Request to the development side: bring the documentation in line with the Engineering section

*Drafted 2026-11-28, for the haiccing documentation packages. Status: draft, for Jules to send.*

The Engineering section of the World of SPLectrum (https://splectrum.world/engineering/) has been reworked to the HAICC platform, from the update the development side sent on 2026-11-27. The section is written from the site's point of view, in broad strokes, and links only to the documentation packages at their top level. The documentation is asked to come in line with it. The points below are where the section goes further than the documentation, or where the two differ.

## 1. Two new documentation packages

The section has a page for each of Mycelium's five languages. URI, XPath and AVRO have documentation packages; Git and Kafka do not.

**`base-docs-git`.** What the section says of Git:

- Git is the slow-heartbeat engine: checkpoints and commits. It is about state, the repository as it stands now and as it stood before.
- An mrepo keeps its state in layers, each a branch. Layering is separation of concerns: `main` the data, the other layers its metadata, a concern a layer.
- Static layers (`main`, the protocols, the packages, `avro`) change at the slow heartbeat, not with each request. Dynamic layers (inbox, outbox, the request layers, the execute branches) are where requests pass through; several are topics. The dynamic layers are where Git and Kafka meet in one repository.
- The rules: layers disjoint, one writer per branch, writes are commits only, the repository is the truth.
- A request is worked on branches of its own, squashed into one commit on each target; a failed request leaves nothing.
- Several engines (native Git, p2p-git) under one contract; the same repository runs on any of them.
- The direction: only `main` on the peer-to-peer store, replicated; the other layers stay on the peer, not replicated.

**`base-docs-kafka`.** What the section says of Kafka:

- Kafka is about data in motion: data change records in topics.
- Built: the record as the elementary container (Kafka-compatible, with only the properties needed so far); single-partition topics using Kafka's names; where records are the base, state is built from them.
- The rule, not yet followed by the built topics: a topic is named by the type of what it holds, never by a generic word such as "log" (today: `inbox`, `outbox`, `request/done`, `xpath/log`).
- The direction, Kafka on peers: a partition a Hypercore, no central broker. One writer per log and no global order; subscription and replication, not fetch and push; replicas as verified local caches; every reader its own position; data change records between repositories with no coordinator; records that cross carry their writer's schema fingerprint.
- Open: a record's offset is today the millisecond it arrived; on Hypercore an offset would be a block index. The section says only "a position in it". Which is it to be?

## 2. Framing the documentation should take on

- **Mycelium is the data fabric**: the data structure construct the mrepo implements, built on five languages, each a set of concepts used together.
- **Fabrics and planes are two different splits.** The fabrics: Mycelium the data fabric, SPLectrum the language fabric, HAICC the collaboration fabric. The planes are a functional split: management (HAICC), the data repository (`myctral`), processing (`myctrans`), interaction (SPLectral).
- **The planes are not part of Mycelium.** The vision's "two planes on Mycelium" and "a functional split on it" read them as Mycelium's. In the section, `myctral` and `myctrans` are built on Mycelium, and belong to the structure of the planes.
- **HAICC is the master plane**: it looks after management and brings the other planes to life through deployments. It is where humans and AI meet, built for more AI autonomy: AI the principal user, humans coming in where collaboration is needed, with equal standing.
- **Layers and layering.** Git gives an mrepo its layers. Layering is within `main`: more than one data layer at a position, in a specific order (several read-only layers possibly ordered), navigated by XPath as a stack; what is seen is the combination, what is stored stays apart, a write goes to the local side only. The vision's "overlays" is this.
- **From outside, a repository has no layers**: it shows `main`, its data. `main` has no notion of the metadata layers, which are internal to the mrepo.
- **Decentralisation is the peer-to-peer substrate's.** The schema registry is the authoritative point for schemas; "no single source of truth" no longer applies.
- **A URI is always relative to something**, and can still be unique within the context it is used in (an mrepo's URI within its install).
- **Protocols are our way of doing APIs**: actions bundled under a single concern, the protocol giving generic action names their meaning (`get` in one protocol is not `get` in another). Low emphasis for now, but worth one line beside "one package, one protocol".

## 3. Small inconsistencies in the documentation

- **"Events."** The mrepo's Records scope still lists "events"; elsewhere the documentation settles on "data change records".
- **"Dynamic" for the `avro` layer.** The vision calls it dynamic, meaning filled at run time from the registry. The section calls it static, by heartbeat: it changes rarely and requests do not pass through it. Both hold; the documentation should say which sense it means.
- **"The new structure."** Used for the request structure and the move to strict schema contracts. The section says "brought to strict schema contracts"; a defined term would help.

## 4. Status the section marks, for the documentation to keep consistent

Built in part, as the section says: air-gapped (an install deploys only from its own sources; the boundary checks to come); idempotent; strict contracts (packages brought over one at a time); the docs mrepo deployed beside the boot, not yet as a fixture; continuous improvement (feedback on a command recorded; findings from the request log the direction); AI inside the platform (today an agent drives from outside). Direction: queries across links, layering, the planes beyond SPLectral, swarms returning, private data, devices, the language layer.
