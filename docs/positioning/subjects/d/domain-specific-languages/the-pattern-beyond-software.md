---
layout: default
lastmod: 2026-05-13
title: "The Pattern Beyond Software"
description: "Purpose-built vocabularies beyond software — from Lavoisier's chemical nomenclature and Linnaeus's taxonomy to mathematical notation, musical notation, and the vocabularies philosophers build for domains ordinary language cannot reach."
---

[Home](/) > [Positioning](/positioning/) > [Subjects](/positioning/subjects/) > [DSL](/positioning/subjects/d/domain-specific-languages/) > The Pattern Beyond Software

# The Pattern Beyond Software

The practice of building a purpose-built vocabulary for a specific domain is not an invention of software engineering. It is a recurring pattern across the sciences, the arts, and philosophy — emerging under different conditions in different fields. Sometimes the trigger is clarity: a domain becomes well enough understood that its structure can be formalised (Linnaeus's taxonomy, modern chemical nomenclature). Sometimes it is resistance: ordinary language cannot articulate what the domain requires (Heidegger's vocabulary for Being, Merleau-Ponty's for embodied perception). Sometimes it is scale or precision: the domain's complexity outgrows what informal notation can handle (mathematical symbolism, musical staff notation). Software engineering's contribution is the formal treatment: explicit grammar, defined operators, parsable syntax, and a body of practice around design and implementation. But the impulse is far older.

## Iverson's argument

[Kenneth Iverson](https://en.wikipedia.org/wiki/Kenneth_E._Iverson)'s 1979 Turing Award lecture, *[Notation as a Tool of Thought](https://www.jsoftware.com/papers/tot.htm)* (published 1980), is the most explicit bridge between software DSLs and this longer history. Iverson argued that the choice of notation shapes what can be thought — that a good notation is not merely convenient but cognitively enabling, and that a poor one actively obstructs reasoning.

He drew on examples from outside computing. [Cajori](https://en.wikipedia.org/wiki/Florian_Cajori)'s *A History of Mathematical Notations* showed how symbolic algebra replaced rhetorical algebra and made new mathematics possible. [Lavoisier](https://en.wikipedia.org/wiki/Antoine_Lavoisier)'s reformed chemical nomenclature replaced inconsistent alchemical names and enabled systematic chemistry. The argument was that programming languages sit in this lineage — they are notations designed to make certain kinds of thinking visible and tractable — and that the design of notation deserves the same care and scrutiny as the design of algorithms.

APL, the language Iverson created, was itself an embodiment of the argument: a notation for array mathematics designed to be read and reasoned about, not just executed.

## Lavoisier's chemical nomenclature

In 1787, [Antoine Lavoisier](https://en.wikipedia.org/wiki/Antoine_Lavoisier), together with [Guyton de Morveau](https://en.wikipedia.org/wiki/Louis_Bernard_Guyton_de_Morveau), [Berthollet](https://en.wikipedia.org/wiki/Claude_Louis_Berthollet), and [Fourcroy](https://en.wikipedia.org/wiki/Antoine_Fran%C3%A7ois_de_Fourcroy), published the *Méthode de Nomenclature Chimique*. The reform replaced a vocabulary of inherited names — oil of vitriol, flowers of zinc, butter of antimony — with a systematic nomenclature where names encoded composition. Oxygen meant "acid-former." Hydrogen meant "water-former." Sulphuric acid named its constituents.

The reform was both linguistic and conceptual. The old names carried no structural information — knowing that a substance was called "oil of vitriol" told the chemist nothing about what it was made of or how it related to other substances. The new names made relationships visible: sulphuric acid and sulphurous acid were evidently related; oil of vitriol and spirit of wine were not evidently anything. The nomenclature was a purpose-built vocabulary for a domain that had outgrown its inherited language.

## Linnaeus's binomial nomenclature

[Carl Linnaeus](https://en.wikipedia.org/wiki/Carl_Linnaeus)'s binomial system, established in the 1750s, gives every organism a two-part name: genus and species (*Homo sapiens*, *Quercus robur*, *Escherichia coli*). The system is a classification DSL — a controlled vocabulary with defined rules of formation that makes comparative biology possible.

Before Linnaeus, organisms were described with polynomial names — long descriptive phrases that varied between authors and provided no consistent way to determine whether two descriptions referred to the same organism. The binomial system imposed structure: a fixed format, a hierarchical classification, and rules for priority (which name takes precedence when multiple names exist for the same organism). The vocabulary enabled the practice. Comparative biology, biogeography, and evolutionary taxonomy all depend on the ability to name organisms consistently across time and geography, and that ability is a product of the nomenclature.

## Mathematical notation

The history of mathematical notation is a history of DSL evolution. [Cajori](https://en.wikipedia.org/wiki/Florian_Cajori)'s two-volume *A History of Mathematical Notations* (1928–29) documents the long transition from rhetorical algebra (problems stated in words) through syncopated algebra (abbreviated words) to symbolic algebra (dedicated symbols with rules of combination).

The most famous case of notation shaping a research programme is the divergence between [Leibniz](/positioning/persons/l/leibniz/)'s and [Newton](/positioning/persons/n/newton/)'s calculus notations. Both developed the calculus independently; both invented notations for it. Leibniz's notation (dy/dx, the integral sign ∫) treated differentials as manipulable quantities and made the chain rule, substitution, and multivariate calculus notationally natural. Newton's notation (dots and primes) was adequate for the problems Newton worked on — primarily mechanics — but did not extend as smoothly to the generalised calculus that followed. Continental mathematics, which adopted Leibniz's notation, developed more rapidly in the directions that the notation made easy. The notation was not a cosmetic difference — it shaped what could be seen and pursued.

Modern mathematics continues to develop domain-specific notations. [Category theory](/positioning/subjects/c/ct/)'s arrow notation, tensor calculus's index notation, Feynman diagrams in quantum field theory — each is a visual and symbolic vocabulary designed to make the structure of a specific domain visible.

## Musical notation

Western musical notation is a DSL for performance. The five-line staff, note values (whole, half, quarter, eighth), dynamics markings (piano, forte, crescendo), tempo indications (allegro, andante, adagio), articulation marks (staccato, legato, accent) — each is an operator that carries meaning within the practice of musical performance and has no meaning outside it.

The notation evolved alongside the music it served. Neumes (9th–12th centuries) indicated melodic contour without fixed pitch. The four-line staff (Guido d'Arezzo, 11th century) introduced precise pitch representation. Mensural notation (13th century) added rhythmic precision. The system grew as the demands on it grew — polyphony required independent voices, orchestral music required score layout, dynamics required expression marks. Each extension was driven by a compositional or performance need that the existing notation could not express.

The notation makes certain things visible and others invisible. Pitch and rhythm are represented with precision; timbre, the quality of sound, has almost no notational representation. What the notation can say, performers can communicate precisely across time and distance. What it cannot say is transmitted through tradition, teaching, and recorded performance — outside the language.

## Chemical structure notation

Modern chemistry uses several domain-specific notations for molecular structure, each making different aspects visible:

**[SMILES](https://en.wikipedia.org/wiki/Simplified_molecular-input_line-entry_system)** (Simplified Molecular Input Line Entry System) represents molecules as character strings. Benzene is `c1ccccc1`. Ethanol is `CCO`. The notation is compact, machine-parsable, and searchable — designed for databases and computational chemistry rather than human reading.

**[InChI](https://en.wikipedia.org/wiki/International_Chemical_Identifier)** (International Chemical Identifier) provides canonical identifiers — a single unique string for each molecular structure, independent of how the molecule was drawn or named. InChI is a DSL for identity: its purpose is to determine unambiguously whether two descriptions refer to the same molecule.

**[IUPAC nomenclature](https://en.wikipedia.org/wiki/IUPAC_nomenclature_of_organic_chemistry)** provides systematic names for organic compounds — names that encode the molecular structure according to defined rules. 2,4,6-trinitrotoluene tells the chemist where the nitro groups are. The nomenclature is Lavoisier's project extended and formalised.

Each notation serves a different purpose. SMILES is for computation. InChI is for identification. IUPAC nomenclature is for communication between chemists. The same molecule may be described in all three, and each description reveals something the others do not.

## The philosophical strand

Philosophy has repeatedly produced purpose-built vocabularies for domains that ordinary language cannot reach.

[Heidegger](/positioning/persons/h/heidegger/) built a vocabulary for the question of Being — *Dasein* (being-there), *Zuhandenheit* (readiness-to-hand), *Vorhandenheit* (present-at-hand), *Geworfenheit* (thrownness), *Erschlossenheit* (disclosedness). Each term does specific work that no existing German word could do. The vocabulary is not decoration — it is the means by which Heidegger's analysis proceeds. Without *Zuhandenheit*, the distinction between using a tool transparently and staring at a broken tool as an object cannot be made with the precision the analysis requires.

[Wittgenstein](/positioning/persons/w/wittgenstein/)'s later work runs on its own vocabulary — *Sprachspiel* (language game), *Lebensform* (form of life), *Familienähnlichkeit* (family resemblance), *Regelfolgen* (rule-following). Each term names something that ordinary philosophical language either misses or misdescribes. "Language game" is not a metaphor — it is a technical term for a specific claim about how language works within activities. The vocabulary is the philosophy.

[Merleau-Ponty](/positioning/persons/m/merleau-ponty/) coined *le corps propre* (the lived body, as distinct from the objective body), *la chair* (flesh, the element from which both perceiver and perceived are made), and the chiasm (the intertwining of touching and being touched). Each term carves out a phenomenon that the inherited philosophical vocabulary — subject, object, mind, body — could not articulate without distortion.

In each case, the philosopher found that ordinary language, and the inherited technical language of the discipline, could not say what needed saying. The response was to build a purpose-built vocabulary — terms with defined meanings, used consistently within the work, governed by rules of combination, forming a system that makes the domain's structure visible. The parallel with software DSLs is structural: in both cases, expressive gaps produce specialised vocabularies with defined terms, consistent usage, and combinatorial rules that reflect the domain's structure.

## The underlying pattern

What these cases share is not a single trigger but a common response. A domain — chemistry, biology, mathematics, music, philosophy, computation — reaches a point where its inherited language cannot express what its practitioners need to say. The gap may come from clarity (the domain's structure is now understood well enough to formalise), from resistance (ordinary language distorts the phenomena), or from scale (the complexity exceeds what informal notation can manage). The response is the same: a purpose-built vocabulary — terms, symbols, or constructs designed for the domain, carrying meaning within it, governed by rules of combination that reflect the domain's structure.

The formal treatment that software engineering brought to this pattern — explicit grammar, parsable syntax, defined semantics, implementation frameworks — is one chapter in a much longer story. The impulse to build a language when ordinary language falls short is not a technical invention.

## Sources

- Iverson, K. E. (1980). [Notation as a tool of thought](https://www.jsoftware.com/papers/tot.htm). *Communications of the ACM*, 23(8), 444–465.
- Cajori, F. (1928–1929). *A History of Mathematical Notations*. Open Court.
- Lavoisier, A., Guyton de Morveau, L., Berthollet, C., & Fourcroy, A. (1787). *Méthode de Nomenclature Chimique*.
- Weininger, D. (1988). SMILES, a chemical language and information system. *Journal of Chemical Information and Computer Sciences*, 28(1), 31–36.
- Heller, S. R., McNaught, A., Pletnev, I., Stein, S., & Tchekhovskoi, D. (2015). InChI, the IUPAC International Chemical Identifier. *Journal of Cheminformatics*, 7, 23.
