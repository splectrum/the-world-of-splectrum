# Page structure — persons and subjects

Standard structure for positioning person and subject pages. Use these as templates when creating new pages.

This doc covers structure only. The voice discipline these pages follow — outside voice, no SPLectrum vocabulary or seed references anywhere on a person or subject page — lives in `tone-of-voice/positioning-section.md`, which is authoritative where the two overlap.

## Person page

1. **Front matter**: title as "Firstname Lastname (born–died)", description, layout
2. **Breadcrumb**: Home > Positioning > Persons > Name
3. **Heading**: full name with dates
4. **Intro paragraph**: what the thinker did and why it matters, in their own terms. Let the thinker speak first — no seed connection, no quiet pointer, no SPLectrum vocabulary, no P-tags. Report the work, don't adjudicate it ("argued", "developed an account of", not "established", "proved"). Internal links to other persons and related subjects
5. **Biographical paragraph**: external SEP link, life and career, one paragraph
6. **Key concepts**: bold term + explanation, one paragraph each. Outside voice — no seed references
7. **Closer** (optional, "where X stops"): only when there is something worth carrying, and then only in one of the two safe modes in `tone-of-voice/positioning-section.md` (a named presser of the gap, or a tension in the thinker's own work). Never an absence stated in page voice; never the gap with SPLectrum. No P-tags, no seed vocabulary; keep it compact
8. **Key works**: list with Wikipedia links, at the end before See also
9. **See also**: only pages in direct relation to what this page says, never links found by looking for neighbours, and not pages the body already links. If nothing relates directly, there is no See also. Within-positioning only — persons and subjects. No SPLectrum-side or blog links. The criteria are in `tone-of-voice/positioning-section.md` § See also on person/subject pages

Reference: [Wittgenstein](/docs/positioning/persons/w/wittgenstein.md), [Rorty](/docs/positioning/persons/r/rorty.md)

### Conventions across person pages

- **Vocabulary boundary.** Terms a sister tradition already in the positioning section uses on its own (CAS's "adaptive agent" on an ecologist's page) are fine; bespoke SPLectrum vocabulary (P-tags, seed terms, retention as SPLectrum uses it) is not. Test: does the term exist independently in the tradition it comes from? Watch for clusters of individually harmless words that together carry the framework's fingerprint.
- **Co-authored work.** One page carries the full treatment of a shared contribution, the other points to it and develops its author's distinct work (spandrels: Lewontin carries, Gould points; punctuated equilibrium: Gould carries, Eldredge points; island biogeography: MacArthur carries, Wilson points).
- **Locus pages for debates.** Where a contested debate has a page that treats it substantively, other pages touching it link there rather than characterising it afresh (group selection: the D. S. Wilson page; the Mendelian–biometrician debate: the integration-with-genetics subject page).
- **Contested legacy.** Voice the question substantively, the critics with their argument and the defenders with theirs; separate the contribution from the contested part; do not adjudicate. Several contested claims are each given their own reception status (the Margulis page). When a new page voices a debate an existing page doesn't reciprocate, the existing page picks up the connection.

## Subject page

The whole page is outside voice — the subject on its own terms, in full breadth, with no SPLectrum vocabulary or seed references anywhere. No "why this matters to SPLectrum" framing; the subject's significance is stated within its own field.

1. **Front matter**: title (with abbreviation if applicable), description, layout
2. **Breadcrumb**: Home > Positioning > Subjects > Name
3. **Heading**: full name with abbreviation
4. **Intro paragraph**: what the subject is and why it matters in its own field, with internal links to persons and related subjects
5. **Origin section**: where the concept comes from — the field it belongs to, but also where the pattern resonates beyond that field
6. **Core sections**: the substance — what the concept is, how it works, key distinctions, its internal conflicts and contested receptions. Internal links to persons and other subjects where relevant
7. **Meaning section**: what makes the concept more than technical — the semantic or philosophical weight of its constructs, framed within the subject's own field
8. **See also**: the only link section at the end — no separate Persons list; persons are linked in the body where the page discusses them (Wikipedia for external, internal for persons with pages). Only pages in direct relation to what this page says, never links found by looking for neighbours, and not pages the body already links. If nothing relates directly, there is no See also. Within-positioning only — subjects and persons. No SPLectrum-side or blog links. The criteria are in `tone-of-voice/positioning-section.md` § See also on person/subject pages

Reference: [Domain Specific Languages](/docs/positioning/subjects/d/domain-specific-languages.md)

## Index pages

Both persons and subjects have an A–Z index page.

- **Persons**: Surname, Firstname (born–died) link · person type `<br>` keywords
- **Subjects**: Name (abbreviation) link · field `<br>` keywords
- Entries within a letter section get `li + li` spacing (handled by CSS)
- New entries are inserted in their correct alphabetical position, not prepended. A new person or subject page does not exist for readers until it is linked from its A–Z index.

## Predecessors and provenance

When a person page's central contribution built on, generalised, or reacted to an identifiable predecessor's work, name the predecessor — even if the predecessor does not yet have their own page. The page's instinct is to start the story at the named figure; full-breadth honesty usually wants it started one step earlier. Examples: Boveri-Sutton before Morgan's chromosome proof; Wiesner before Bennett's BB84; Robertson before Price's covariance equation; Anscombe's "Modern Moral Philosophy" before Foot's virtue ethics; Mayr's population thinking before Ghiselin's species-as-individuals.

This is not a requirement to trace every intellectual lineage to its origin — touchstone over comprehensive still applies. Name the predecessor when the contribution is a proof, formalisation, development, or naming of something already in the air; omit when the contribution is genuinely novel.

## General

- Descriptions go in front matter on every page
- `lastmod` goes in front matter on creation (today's date) and is bumped only on a substantial update (`posting-guide.md` § Sitemap lastmod) — both sitemaps auto-generate from it
- Internal links preferred over external; external links (SEP, Wikipedia) on the person/subject page itself, not scattered through posts
- Key works get Wikipedia links
- The page title in front matter matches the `# heading` on the page
