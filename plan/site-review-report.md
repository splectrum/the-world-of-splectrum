# Site Review Report — full consistency sweep

*Review date: 2026-09-07. Scope: all 675 source pages under `docs/` (excluding the generated `_site/`). Method: mechanical link/structure checks over the whole site, plus three deep content reviews — register/standards audit of the positioning section, factual cross-page checking, and framework coherence across reality/seed.*

Overall: the site is in good shape. Terminology, dates, breadcrumbs, alphabetization, and trailing slashes are almost entirely clean. The findings below are ordered by severity: things actually broken for readers, content contradictions, places where the site breaks its own stated rules, and minor observations. Clean bills of health are listed at the end.

---

## 1. Actually broken for readers (worth fixing first)

### 1.1 Parked 2030 posts cross-link with 2026/06 URLs
`2030-01-02-the-wrapper.md` and `2030-01-03-is-like-is.md` link to `/blog/2026/06/the-seed-and-category-theory/` and `/blog/2026/06/the-wrapper/` — URLs that assume the originally intended publication dates. They will need updating when the posts are unparked to real dates.

---

## 2. Content contradictions (the philosophy itself)

### 2.1 "Being as tension" has two incompatible relata
- `docs/seed/original.md:15` (P0, canonical statement) grounds the tension in *the other*: "Being is what stands apart from its context — the other. The tension between being and the other is the origin of language."
- `docs/positioning/seed/being-as-tension.md:11` grounds it in *non-being*: "there is no being without its complement, without non-being."
- `docs/seed/philosophical.md:15` contains both in a single sentence: "no being without not-being (Fichte)" followed immediately by "separation requires the other to precede it" — which can't both hold, since non-being cannot be "already there" and cannot "precede."

The being-as-tension page's own nine formulations (Saussure's sign-to-sign, Nagarjuna's dependent relation, Yin-Yang) mostly support the *other/complement* reading, against the page's own opening frame.

### 2.2 Discovery-vs-creation settled in one place, open in another
- `docs/seed/discovery.md:14` (lastmod 2026-07-04): whether boundary-drawing is discovery or genuine creation "is open territory; more to come"; discovery is "finding the key, not adding to the storehouse."
- `docs/reality/discovery/index.md:21` (lastmod 2026-07-20) settles it: "Both characters hold at once… The newness is real"; "the walked path… comes into reality in the walking."

The seed page's "open territory" caveat appears stale.

### 2.3 Who names the bifurcation of nature
- `docs/_posts/2026-06-04-whiteheads-process-theory.md:13` credits *The Concept of Nature* (1920).
- `docs/positioning/subjects/p/philosophy-of-organism.md:12` and `docs/positioning/seed/two-pronged-anti-representationalism.md:18` both credit *Science and the Modern World* (1925).

(Historically the diagnosis is in the 1920 book; the two site pages agree with each other against the post. The Whitehead person page hedges between both at `persons/w/whitehead.md:45-46`.)

### 2.4 Small date slips
- `docs/positioning/persons/h/hofstadter.md:20` gives *The Age of Reform* as 1956 and *Anti-Intellectualism in American Life* as 1964 (the Pulitzer award years), while the same page's body (lines 40, 42) and bibliography (lines 60–61) say 1955 and 1963.
- `docs/_posts/2026-05-01-the-relational-reality-of-rqm.md:35` dates quantum teleportation to 1997; `persons/b/bennett.md:40` correctly has 1993 proposal / 1997 experimental confirmation.

### 2.5 `seed/language.md` silently skips P2
The page walks P0, P1, P3, P4 (lines 14, 17, 22, 25) — no P2. Every sibling seed page that walks the principles covers the full run, and P2 (language as medium) is the pillar the reality section rests on. If the omission is deliberate, nothing on the page (or in the seed index's description of it, `seed/index.md:21`) says so.

---

## 3. The site breaking its own rules

### 3.1 The coin's vocabulary rule
`docs/seed/pluralism-and-the-coin.md:24` declares the faces are told apart by vocabulary — "A reader can tell which face is speaking by the words it uses." Two content-face pages speak in bare P-vocabulary anyway:

- `docs/reality/discovery/index.md:17,19,27` (P5, P2, P4)
- `docs/reality/evolution/index.md:11,34` (P5, P4)

Every other Reality page holds the line and uses only belonging/privacy/creativity.

### 3.2 Close-affinity register drift (against `tone-of-voice/positioning-section.md`)
`ethics.md` and `politics.md` are written in the compliant field-as-subject mode. Four pages are not — SPLectrum becomes the subject running comparisons, with the standard's own tell-phrases appearing verbatim:

- `close-affinity/epistemology.md:22,28,36,38` — "SPLectrum hooks on," "SPLectrum plants it," "SPLectrum lodges it deeper" (also comparative ranking), "SPLectrum picks up here without strain," "SPLectrum grounds it in…"
- `close-affinity/ontology.md:22,30,34` — "SPLectrum is at home in this rhyme," "SPLectrum keeps the relations between… holds them externally" (explicit contrast against Whitehead), "SPLectrum reads its entities the same way."
- `close-affinity/metaphysics.md:24,32` — "SPLectrum too discloses reality…," "SPLectrum holds the same."
- `close-affinity/core-values.md` — pervasive. Frontmatter description (line 5): "where each account reaches and stops." Per-thinker deficiency-scoring through the body (lines 48, 54, 60, 64, 76, 80, 82: the "gets / does not develop" formula) and a closing four-bullet boundary-scoring list (lines 92–97: "Buber's belonging stays dyadic… Nagel's privacy stays epistemological… Whitehead's creativity stays cosmological…").

### 3.3 Close-affinity landing page: stale and dense with the banned shapes
`docs/positioning/close-affinity/index.md`:

- Line 15: "who works with subsets, who comes close, and where each account reaches and stops" — "comes close" is the scoring register the standard prohibits, on the landing page itself.
- Line 17: advertises "where relativism stops, and the realist contrast" — verbatim the two section titles the standard names as the failure mode. The rewritten `ethics.md` no longer contains those sections, so the index is also stale.
- Line 16: "where standpoint's grounding diverges" — grading framing.
- Line 22: indexes the Wittgenstein *person page* as if it were a ring piece (link-direction breach) and grades him: "The materials for a structural account, without the construction."

### 3.4 "Where X stops" scope on ~7 person pages
These sections report contested reception rather than the thinker's own programme boundary (content that belongs in a body "live disputes" block):

- `persons/d/dennett.md:70` — entirely a defenders-vs-critics dispute
- `persons/s/searle.md:32` — "his critics contend… contested in his reception"
- `persons/s/sumner.md:52` — Hofstadter's framing debate, reception history
- `persons/w/wong.md:34,36` — pure objection-catalogue
- `persons/e/edelman.md:40,44` — "criticised… is debated"
- `persons/b/bradley.md:52` — "Whether Russell's response was a refutation… is debated"
- `persons/g/garfield.md:54,56` — "the central methodological question in Garfield's reception"

Borderline (reception-framed but a real boundary also stated): sober, simard, schumpeter, bohm, turing, eilenberg, smith-adam, de-broglie, boyd, sperber, de-vries, nietzsche. Compliant exemplars for contrast: sole, nagel, james, saussure, buber, bak, dobzhansky.

### 3.5 Known link-direction violations, confirmed still present
- `close-affinity/ethics.md`, `politics.md`, `pluralism/index.md` link up to `/reality/` (the documented existing violation — not to be copied into new pages).
- Four subject pages link up into `/positioning/seed/`: `subjects/s/structuralism.md`, `subjects/g/german-idealism.md`, `subjects/r/relational-quantum-mechanics.md`, `subjects/p/philosophy-of-science.md`.

---

## 4. Minor / observations

- **Pluralism ring page self-aware exceptions.** `close-affinity/pluralism/index.md:12,38` uses "closest" and "what it claims" — against the letter of the register rules, but the page frames itself as a landscape-reading, so it reads as a deliberate exception.
- **Perimeter drift in parked posts.** The 2030-01-25/26 posts use "perimeter" in an epistemic-frontier sense ("the edge of where we have looked so far") vs the coin page's domain-edge sense. Blog register, parked — noted only.

---

## 5. Clean bills of health

- Zero SPLectrum vocabulary on person pages (288 pages swept); zero epigram closers; zero page-voice verdicts (one borderline, § 4).
- Zero upward links from person pages into `/seed/`, `/reality/`, or any affinity ring.
- No same-surname mislinks: both Raos (Jun/Rajesh), both Clarks (James/Andy), both Gibsons, both Huxleys, Batesons, Wilsons, Williamses, Wheelers, Smiths all check out.
- No birth/death date mismatches across 707 inline name-date mentions vs person-page titles.
- No missing image or asset references; no internal links missing trailing slashes.
- Pillar membership and the realm-of-realisation / realm-of-coexistence naming fully consistent everywhere the pillars are enumerated.
- Framework terms "the coin," "historicity," "interrelational pluralism," "disclosure" used consistently.
- Key cross-told stories match: Wittgenstein's Tractatus/Investigations reversal (five pages), autopoiesis dates (four pages), RQM chronology (three pages), Spencer/Darwin "survival of the fittest" (four pages), punctuated equilibrium 1972 (four pages), Baumgarten 1735 (three pages).
- All breadcrumbs match their page's actual location; `sitemap-site.xml` is auto-generated and complete; SPLectrum casing and "interrelational" hyphenation uniform site-wide; A–Z and index alphabetization correct (given "The …" filed by first significant word).
