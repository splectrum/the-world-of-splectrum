# Thermodynamics bundle — research record

Research rounds run 2026-09-13 for a planned subject bundle. Findings only; the build is not scoped here. Everything below is sourced unless marked otherwise. **Section 6 is the writing checklist** — the sentences that would state a contested claim as settled.

## 1. What the field is about — contested, and the landing page must not pick

There is no single standard formulation. Five framings, all held:

- **Constraints on possible processes** — Einstein's own; the lineage runs through Uffink and Lieb & Yngvason (adiabatic accessibility axiomatics). Best-sourced option.
- **Macroscopic behaviour of systems in equilibrium** — the neutral textbook-adjacent statement (Werndl & Frigg 2015, SEP).
- **The direction of time** — but Uffink's "Bluff Your Way in the Second Law of Thermodynamics" (2001) exists largely to complicate this, separating time-reversal non-invariance from irreversibility, which are routinely conflated.
- **The macro/micro relation** — really a claim about *statistical mechanics*; conflating the two already takes a side in the autonomy dispute.
- **Control theory** — Wallace, "Thermodynamics as Control Theory," *Entropy* 16(2) (2014): what an agent with limited control over a system's degrees of freedom can and cannot make it do. Live and distinctive.

**Uffink's headline finding, and the landing page's best friend: there is no single second law.** Clausius, Kelvin, Planck, Carathéodory and Lieb–Yngvason give formulations that are not straightforwardly equivalent. This lets the page report disagreement rather than choose.

**Where thermodynamics sits on the map of physics.** It is anomalous: not indexed to a scale, speed or energy regime the way mechanics, relativity and quantum theory are. Two supports for treating this as recognised rather than our observation: the cGh (Bronstein) cube has no thermodynamic axis at all — hence Baez's proposed k_B fourth axis — and Einstein's **principle theory / constructive theory** distinction (1919, *The Times*) makes thermodynamics his paradigm principle theory: it starts from empirically discovered general constraints and deduces what any process must satisfy, rather than constructing phenomena from a hypothesised micro-scheme. That is *why* it is substrate-indifferent — it never commits to a substrate. Scholarship: Giovanelli, "'Like Thermodynamics before Boltzmann'", *SHPMP* 71 (2020). Attribute the reading to Einstein; it is philosophically live, not a neutral fact.

**The Einstein quote**, from "Autobiographical Notes" (written 1946, published 1949, Schilpp ed.): thermodynamics is "the only physical theory of universal content concerning which I am convinced that, **within the framework of applicability of its basic concepts**, it will never be overthrown." The hedge is usually stripped; keep it. The quote is also the conclusion of a general claim about what makes any theory impressive, not free-standing praise.

## 2. The autonomy question — contested; "reduces to statistical mechanics" is a slogan

It covers three separable claims: (1) every thermodynamic quantity has a statistical-mechanical counterpart; (2) the laws are derivable; (3) thermodynamics has no autonomous explanatory value once (1) and (2) are done. One can accept (1) and deny (3). **Keeping these apart is the most useful thing a page can do here.**

- **Reductionist side:** Weinberg (*Dreams of a Final Theory*, 1992); Albert (*Time and Chance*, 2000) and the Mentaculus programme with Loewer.
- **Callender, "Taking Thermodynamics Too Seriously"** (*SHPMP* 2001) — easy to miscite in either direction. He is *deflationary about thermodynamics*, not triumphalist about reduction: philosophers err by taking thermodynamic laws too literally as reduction targets, and he denies thermodynamics is "universally true and somehow independent of the statistics of the micro-constituents."
- **Anti-reduction:** Batterman (*The Devil in the Details*, 2001/2002) — phase transitions emergent, asymptotic explanation *deletes* information rather than supplying it, singular limits block reduction. **Norton (2012) counters directly**: no actual infinity is needed, so the reduction route stays open. Named, live, unresolved.
- **Middle:** Katie Robertson — functionalism about thermodynamic quantities (define by nomological role, find whatever plays it in statistical mechanics); *Reductive Aspects of Thermal Physics*. Wallace, "Asymmetry, Abstraction, and Autonomy" (*BJPS* 71(2), 2020) — coarse-grained dynamics can be autonomous, argued technically rather than asserted. Lavis, Kühn & Frigg (2021) and Yi (2003): even a successful reduction would not exhaust thermodynamics's autonomous value.
- **Cartographers, not partisans:** Uffink; Frigg's "A Field Guide to Recent Work on the Foundations of Statistical Mechanics" (2007) is the standard survey and the right citation for a neutral page. Sklar, *Physics and Chance* (1993), earlier canonical.

## 3. The interpretation of entropy — the highest-risk area

**Formal facts (solid):** Boltzmann entropy S_B = k log μ(X_M), micro-state counting. Gibbs entropy S_G = −k ∫ ρ log ρ. **The Gibbs entropy is a constant of the motion — a theorem, and the engine of the whole dispute.** Coarse-graining is the usual escape, but coarse-grained entropy increases only if the system is mixing, which Uffink calls "a very demanding condition" many real systems fail. Gibbs entropy is **formally identical** to Shannon's; nobody disputes the formula.

**What the identity means — disputed:**

- **Objective/Boltzmannian** — Goldstein, Lebowitz, Tumulka & Zanghì (2020) argue Boltzmann and Gibbs entropies agree to leading order for macroscopic equilibrium systems; **Werndl & Frigg (2020) dispute even that reconciliation.**
- **Epistemic/Jaynes** — "Information Theory and Statistical Mechanics," *Phys. Rev.* 106, 620 and 108, 171 (1957). Statistical mechanics is "about our knowledge of the world and not about the world itself"; MaxEnt picks equilibrium. His own phrase: "subjective statistical mechanics."
  - **The canonical objection:** Redhead (1995), Albert (2000), Loewer (2001) — processes happen because of how molecules behave, "not with what we happen (or fail) to know about them." Ice melts unobserved.
  - Sklar (1993): the dynamics drops out. Lavis & Milligan (1985): measurement-conditioned entropy increase is non-monotonic or depends on arbitrary time instants. MaxEnt itself contested — Denbigh & Denbigh (1985), Uffink (1995, 1996), Seidenfeld (1986).
- **Gibbsian ensemble-relative readings** — a distinct family.
- **Rovelli's relative entropy** — see §4; a third option, neither objective-only nor epistemic.

**Are thermodynamic, Boltzmann/Gibbs and Shannon entropy one quantity?** Not straightforwardly. The neutral framing: thermodynamic entropy is the *target*; Boltzmann and Gibbs are **candidate definitions aiming to recover it**, and whether either succeeds is under active dispute (Dizadji-Bahmani, Frigg & Hartmann 2010; Myrvold 2011). Gibbs and Shannon are formally identical *in expression*; whether formal identity transfers meaning is the dispute. **Maroney (2005) argues thermodynamic and information-theoretic entropy are conceptually different** and that generalisations of Landauer's principle fail.

**Note for the site:** the existing seed page `the-arrow-of-time` describes entropy as "dependent on the system having hidden degrees of freedom" — the objective reading, stated without flagging it as one of two. Not wrong, but if the bundle reports the dispute, that page is taking a side silently. Check when the bundle lands.

## 4. Rovelli's relative entropy — verified 2026-09-13, and it is the strong claim

Primary source: **"Is Time's Arrow Perspectival?", arXiv:1505.01125 (2015), published as ch. 14 in Chamcham, Silk, Barrow & Saunders (eds.), *The Philosophy of Cosmology*, CUP 2017, pp. 285–296.** Restated and extended in **"Where Was Past Low-Entropy?", *Entropy* 21(5), 466 (2019)** and "The Layers That Build Up the Notion of Time" (arXiv:2105.00540, 2021).

**He explicitly rejects the truism reading** (that entropy merely depends on a choice of coarse-graining) and rejects the epistemic reading with it:

> "A cup of hot tea does not cool down because of what I know or do not know about its molecules. The 'choice' of macroscopic observables is dictated by the ways the system under consideration couples."

> "It is not our abstract 'knowledge' on the relative abundance of Oxygen and Nitrogen that matters: it is the presence or not of a physical coupling of this quantity to the exterior."

The 2019 taxonomy states it as **"objective but relative to O"** — the ignorance reading "stripped of its anthropocentric and subjectivist aspects." So: **observer-relative without being knower-relative.** A third option, and the distinction is one he draws deliberately and repeatedly.

**The conjecture (the arrow half):** "In a sufficiently complex system, there is always some subsystem whose interaction with the rest determines a coarse graining with respect to which the system satisfies the second law... That is: low past entropy can be fully perspectival." And: "the arrow of time is real, but it is perspectival, like are real but perspectival the rotation of the sky or the setting of the sun."

**Two hedges that must travel with any use of this:**
1. **He grades his own claims.** "So far, I think all this is solid. Let me now take a speculative step." The relative-entropy claim is asserted; the perspectival *arrow* is a conjecture, resting on what he calls "a mild use of anthropic reasoning."
2. **Reception is thin.** 42 citations; **no published reply from any past-hypothesis principal.** The objections in §IV are ones Rovelli reports from the 2014/15 Tenerife conference (Wald on thermalisation timescales, Albert on the limited number of fundamental interactions, Hartle on quasiclassical domains) and answers himself — **never cite these as published critiques.** The traffic runs the other way: he cites Wallace and Callender; they do not appear to cite him. Describe it as a standing proposal, not a debated position.

**RQM is never named in these papers** and there is no citation to Rovelli 1996. He reaches the quantum case through entanglement entropy and the tensor-product split instead. The connection is **structural kinship, not his stated derivation** — do not write it as RQM extended to thermodynamics. His named philosophical allies are Ismael (*The Situated Self*) and Price (*Naturalism without Mirrors*).

He works in **Gibbs deliberately, not Boltzmann**, because Boltzmann presupposes a split into many identical subsystems, which fails for field theory, general relativity and the universe as a whole.

The **thermal time hypothesis** (Connes–Rovelli 1994) is a *different thread* — not cited in either entropy paper. Adjacent, not merged.

## 5. The areas — established material, disputes attached

### 5.1 Classical and statistical
Four laws; the zeroth named last (Fowler, 1930s), after the others were numbered, once transitivity of thermal equilibrium was recognised as logically prior to defining temperature. **Maxwell's demon: two details usually got wrong.** Maxwell never used the word "demon" — he wrote "finite being" (letter to Tait, 11 December 1867, Cavendish archive PH-CAVENDISH-P-00092, wanting "to pick a hole" in the second law); **William Thomson introduced "demon" in *Nature* in 1874**, meaning Greek *daimon*, a background agent, not a malevolent one. Public presentation came in *Theory of Heat* (1872).

**Gibbs vs Boltzmann entropy is live** and became so when small-system thermodynamics did — the two agree in the thermodynamic limit and differ only for small systems. Trigger: Dunkel & Hilbert (*Nature Physics* 2014) arguing Gibbs volume entropy is correct and negative temperatures are an artefact; against, Frenkel & Warren (arXiv:1403.4299) that Gibbs fails the zeroth-law requirement Boltzmann satisfies; Swendsen & Wang, Hilbert–Hänggi–Dunkel in reply.

**Irreversibility:** Loschmidt's reversibility objection (1876), Zermelo's recurrence objection (1896). The H-theorem does **not** derive irreversibility from mechanics alone — the *Stosszahlansatz* smuggles in a time-asymmetric probabilistic assumption.

**The past hypothesis is one position among several, not the standard answer.** Proponents: Albert (*Time and Chance*), Loewer. **Critics with names:** Earman, "The 'Past Hypothesis': Not even false" (*SHPMP* 37:399–430, 2006) — it cannot be given a precise coordinate-independent formulation in general relativity; Price's "temporal double standard" charge. Spread of positions: past hypothesis / typicality / perspectival (Rovelli) / branch systems / dynamical (GRW).

### 5.2 Non-equilibrium — and the Prigogine problem
Onsager reciprocal relations (1931, Nobel 1968); linear regime; Onsager–Casimir antisymmetric relations when time-reversal symmetry is broken.

**Prigogine must be separated into three things usually credited as a block:**
1. **Dissipative structures and the Brusselator — solid and lasting.**
2. **Minimum entropy production — narrow validity, proof disputed.** Holds only near equilibrium with *constant* phenomenological coefficients, and the criticism is that no real material meets that condition. **Landauer (1975) showed it fails for simple electrical resistances.** Published critiques: "On the incorrectness of the traditional proof of the Prigogine principle" (*Technical Physics Letters*, 2003); *Int. J. Heat Mass Transfer* (2007).
3. **Fundamental irreversibility and the arrow of time — a minority position, criticised in detail.** Named critic: **Jean Bricmont, "Science of Chaos or Chaos in Science?"** (*Annals NY Acad. Sci.* 775:131, 1996). Reply literature: Näpinen & Müürsepp (*Foundations of Science*, 2002).

**The gap between Prigogine's standing with general readers (Nobel, bestseller) and with foundations specialists (low for the later programme) is one of the widest in the bundle.** His page exists on the site; check it against this when the bundle lands.

**Non-equilibrium thermodynamics is not one field but several competing frameworks:** Classical Irreversible Thermodynamics (Onsager/Prigogine/de Groot–Mazur), Extended Irreversible Thermodynamics (Jou, Casas-Vázquez, Lebon), Rational Extended Thermodynamics (Müller & Ruggeri), Rational Thermodynamics (Truesdell, Coleman–Noll), GENERIC (Grmela & Öttinger), maximum/steepest entropy production (Beretta), and stochastic thermodynamics as the newest. Unification attempts exist, which is itself evidence it is not unified.

### 5.3 Stochastic thermodynamics
Sekimoto, "Langevin Equation and Thermodynamics" (*Prog. Theor. Phys. Suppl.* 130:17, 1998) and *Stochastic Energetics* (2010) — heat along a single trajectory. **Seifert, *Rep. Prog. Phys.* 75:126001 (2012)** — canonical review. Jarzynski equality (*PRL* 78:2690, 1997); Crooks fluctuation theorem (*Phys. Rev. E* 60:2721, 1999).

**Relationship:** Crooks is the stronger, more detailed statement; **Jarzynski follows from Crooks by integrating over W.** Crooks compares full work distributions of a forward protocol and its time-reverse; Jarzynski is that comparison integrated to a single exponential average.

**The "second-law violation" framing, stated precisely:** fluctuation theorems do not say the second law is violated. They quantify the probability of negative entropy production **along individual trajectories**, exponentially suppressed in the entropy produced — small systems, short times — and the second law is recovered exactly as an ensemble average (the theorems *imply* ⟨ΔS⟩ ≥ 0 by Jensen's inequality). **The right register: they refine the second law from an inequality about averages into an equality about distributions.** Wang et al. (2002) is literally titled as demonstrating "violations of the second law"; that title is the source of most of the sensationalism.

**Experiments:** Liphardt et al. (*Science* 296:1832, 2002, RNA/optical tweezers, Jarzynski); Wang et al. (*PRL* 89:050601, 2002); Collin et al. (*Nature* 437:231, 2005, Crooks).

**Thermodynamic uncertainty relations:** Barato & Seifert (*PRL* 114:158101, 2015); general proof Gingrich, Horowitz, Perunov & England (*PRL* 116:120601, 2016). **Precision costs dissipation**, quantitatively — and it is a constraint *not derivable from the second law*, which is why it matters. Caveats: holds for classical Markovian steady states; **violated in quantum systems** and under time-dependent driving; a family of generalised TURs now exists with different validity domains.

**Live disputes:** the definition of heat itself (Itô-vs-Stratonovich ambiguity under multiplicative noise); validity limits of the Jarzynski equality (convergence dominated by rare trajectories); whether the framework extends cleanly to the quantum domain.

### 5.4 Information thermodynamics
Landauer (1961); Bennett on reversible computation (1973, 1982); Szilard engine (1929); **Parrondo, Horowitz & Sagawa, "Thermodynamics of information," *Nature Physics* 11:131–139 (2015)** — canonical review; **Bérut et al., *Nature* 483:187–189 (2012)** — experimental verification.

**The dispute, accurately:** Earman & Norton, "Exorcist XIV," **two parts** — Part I *SHPMP* 1998, Part II 1999. Norton, "Eaters of the lotus" (*SHPMP* 36:375–411, 2005): Landauer's principle is neither necessary nor sufficient against the demon, and standard derivations illicitly import thermodynamic assumptions. Norton continued in "Waiting for Landauer" (2011). **Bennett (2003, *SHPMP* 34:501–510) concedes the principle is "in a sense a straightforward consequence or restatement of the second law"** while maintaining it has "considerable pedagogic and explanatory power" in showing where the compensating entropy goes. **Chronology: Bennett 2003 precedes Norton 2005** — he is responding to the earlier Earman–Norton papers, not to 2005.

Others in the dispute: Maroney (2005); Ladyman, Presnell, Short & Groisman (2007); **Ladyman & Robertson, "Landauer defended: reply to Norton"** (*SHPMP* 2013); Katie Robertson; Sagawa & Ueda (generalised second law with feedback — the constructive alternative to arguing about erasure); Shizume and Piechocinska on proofs. Anthology: **Leff & Rex, *Maxwell's Demon 2* (2003)** — essential citation.

**Framing note:** this is substantially a physics-vs-philosophy-of-physics split. Experimentalists regard the principle as verified; the philosophical objection is not that the experiments are wrong but that the principle does not do the *foundational* work claimed for it. **A page treating Bérut 2012 as settling Norton's objection would conflate two different claims.**

**Thermodynamics of computation is now genuinely distinct from information thermodynamics** — Wolpert, "The stochastic thermodynamics of computation," *J. Phys. A* 52:193001 (2019): entropic costs of circuits, logically reversible circuits, information ratchets and Turing machines, as against the single-bit/single-demon setting.

### 5.5 Quantum thermodynamics
**A recognised field.** Reviews: Vinjanampathy & Anders (*Contemporary Physics* 57:545, 2016); Goold, Huber, Riera, del Rio, Skrzypczyk (*J. Phys. A* 49:143001, 2016); Binder et al. (eds.), *Thermodynamics in the Quantum Regime* (Springer, 2018); Lostaglio (arXiv:1807.11549) for the resource-theory strand.

**Family of second laws:** Brandão, Horodecki, Ng, Oppenheim & Wehner, "The second laws of quantum thermodynamics," *PNAS* 112(11):3275 (2015). For microscopic or highly-correlated systems in cyclic processes, a one-parameter family of generalised free energies must *each* be non-increasing; the familiar single second law is one member, recovered in the thermodynamic limit. Precursor: Brandão, Horodecki, Oppenheim, Renes & Spekkens (*PRL* 111:250404, 2013) — **Renes and Spekkens are on the 2013 paper, not the 2015 one.**

**Quantum Landauer / negative erasure cost:** del Rio, Åberg, Renner, Dahlsten & Vedral, "The thermodynamic meaning of negative entropy," *Nature* 474:61–63 (2011) (note the published erratum). An observer entangled with the system has negative conditional entropy and can *gain* work while erasing. **The precision that matters: this does not violate the second law, because the erasure process is not cyclic** — the negative cost is paid by consuming entanglement, restorable only by doing work. **The most commonly mis-popularised result in the area.**

**ETH:** Deutsch (*Phys. Rev. A* 43:2046, 1991); Srednicki (*Phys. Rev. E* 50:888, 1994); the name and its promotion came with Rigol, Dunjko & Olshanii (*Nature* 452:854, 2008). Reviews: D'Alessio, Kafri, Polkovnikov & Rigol (*Advances in Physics* 65:239, 2016). **It is a hypothesis, not a theorem** — very well supported numerically, partially proven in restricted settings, with known breakdowns (integrable systems, many-body localisation, quantum many-body scars, long-range interactions).

**Coherence and ergotropy:** ergotropy (Allahverdyan, Balian, Nieuwenhuizen, 2004) = maximum work extractable by unitary operations; its decomposition into incoherent and coherent parts is definitional and solid. **Whether coherence delivers a net thermodynamic advantage is contested** — the coherence had to be created, and that cost is often excluded from the accounting; and coherence is also a *constraint* (Lostaglio, Jennings & Rudolph, arXiv:1405.5029, on second laws for coherence).

**Quantum engines:** real experiments (Klatzow et al., *PRL* 2019, NV centres; Kim et al., *PRL* 128:180602, 2022, superabsorption, Θ(N²) vs Θ(N) power scaling). **But "quantum advantage" has no single agreed definition** — advantage in power, efficiency, efficiency-at-maximum-power and fluctuations are different claims with different verdicts, and a device can win on one and lose another. The certification literature exists *because* bare performance claims were judged unconvincing.

**ETH vs einselection — different territory, relation open.** Einselection (Zurek, *Rev. Mod. Phys.* 75:715, 2003) is an **open-system** story about the **preferred basis**; ETH is a **closed-system** story about **which values**, with the system as its own bath. Both entanglement-driven, both about classical-looking behaviour, but answering different questions. Bridging work exists (an "eigenstate decoherence hypothesis") but is an **open programme, not a settled identification**.

**Also live: the definition of work in quantum mechanics.** There is no uncontroversial quantum work operator; the two-point-measurement scheme is standard but criticised for destroying the very coherence the field wants to study. A foundational dispute underneath everything else in the area.

### 5.6 Black hole thermodynamics
Bekenstein entropy (1972–73), S = A/4; Hawking radiation (1974–75); **Bardeen, Carter & Hawking, "The four laws of black hole mechanics," *Comm. Math. Phys.* 31:161 (1973)** — presented by its authors as a formal *analogy*, with Hawking's radiation result converting him.

**Literal or analogy — live, with names.** Dougherty & Callender, "Black Hole Thermodynamics: More Than an Analogy?" — "the analogy is not nearly as good as is commonly supposed"; it rests on a caricature of thermodynamics, is ambiguous about which systems it covers, and presupposes a controversial epistemic conception of entropy (note the tie to §3). Technical points: temperature is intensive and size-independent whereas surface gravity is not; entropy normally scales with volume, not area. Against: **Wald and Wallace**, "The case for black hole thermodynamics" Parts I and II (arXiv:1710.02724). Also Curiel (2017), Prunkl & Timpson (2017); continuing in *Australasian Journal of Philosophy* (2025).

**The information paradox — do not state as resolved.** Penington (2019); Almheiri, Engelhardt, Marolf & Maxfield (2019); Almheiri, Hartman, Maldacena, Shaghoulian & Tajdini, "Replica wormholes and the entropy of Hawking radiation" (arXiv:1911.12333). The island formula reproduces the **Page curve** via replica wormholes. **Established:** the entropy calculation gives the unitary answer, largely in 2D JT gravity and holographic setups. **Not established:** the mechanism by which information escapes — the formula computes an entropy, it does not exhibit state recovery. Also live: replica-symmetry-breaking cases where the formula has been argued to compute radiation entropy incorrectly; and whether 2D/holographic results extend to four-dimensional astrophysical black holes. **Safe formulation:** a major advance reproduces the Page curve and is widely taken as strong evidence for unitarity, but whether the *paradox* is resolved, as opposed to the entropy being correctly computed, remains disputed.

## 6. Writing checklist — sentences that would state a contested claim as settled

1. "Entropy is disorder / missing information." — picks the Jaynes side; Redhead, Albert, Loewer object.
2. "Thermodynamic = Boltzmann = Gibbs = Shannon entropy." — formal identity is not identity of quantity; Maroney denies the transfer.
3. "Thermodynamics reduces to statistical mechanics." — a slogan over three separable claims.
4. "Thermodynamics is the theory of time's arrow." — Uffink's 2001 paper exists to complicate exactly this.
5. "The past hypothesis explains the arrow of time." — one position; Earman calls it "not even false."
6. "The H-theorem proves the second law." — it does not; the *Stosszahlansatz* is a time-asymmetric assumption.
7. "Prigogine showed that systems far from equilibrium minimise entropy production." — narrow validity, proof disputed, Landauer's 1975 counterexample.
8. "Fluctuation theorems show the second law is violated in small systems." — they refine it; trajectory-level, ensemble average recovers it.
9. "Landauer's principle resolves Maxwell's demon." — Norton and Maroney deny it; Bennett concedes it is a restatement rather than an independent exorcism.
10. "Quantum erasure can have negative cost." — only with entanglement to a reference *and* a non-cyclic process.
11. "Quantum engines demonstrate quantum advantage." — figure-of-merit dependent, and what counts as advantage is itself disputed.
12. "ETH explains thermalisation." — leading account, unproven in general, with known breakdown classes.
13. "Quantum thermodynamics explains the emergence of classicality." — conflates ETH with einselection.
14. "Black hole entropy is entropy." — Dougherty & Callender vs Wald/Wallace, unresolved.
15. "The information paradox was resolved in 2019–20." — the Page curve was reproduced; resolution is disputed.
16. "Maxwell called it a demon." — he called it a finite being; Thomson coined "demon" in 1874.
17. "Thermodynamics nests classical → statistical → non-equilibrium → stochastic → information." — an imposed ladder; see §7.
18. Rovelli's perspectival arrow stated without his own "speculative step" hedge, or its thin reception.

## 7. Structure — the ladder was an imposition

**The field does not see itself as a single nesting.** Two independent axes were being collapsed: a **foundational** axis (phenomenological → statistical mechanics, a genuine and contested reduction) and a **regime** axis (equilibrium → near-equilibrium → far-from-equilibrium → small systems). Stochastic thermodynamics is not a rung below non-equilibrium — it is a *small-system reformulation cutting across*, which has largely **superseded** the Prigogine lineage at the mesoscale. Information thermodynamics is not a fifth rung but a **cross-cutting reading** applied at several rungs at once (Szilard at the classical, Landauer at the statistical, Sagawa–Ueda at the stochastic). Chemical and engineering thermodynamics are not rungs at all — they are the mature applied trunk the foundational debates barely touch.

A structure the field would recognise:
- **Core** — classical/phenomenological plus statistical mechanics, and the reduction between them
- **Regimes** — equilibrium / near-equilibrium linear response / far-from-equilibrium / small systems
- **Readings** — cross-cutting reinterpretations: information, computation, quantum, gravitational
- **Applied trunk** — chemical, engineering, bioenergetics; settled, large, where nearly all practice lives

**There is no authoritative source presenting "the field's own map of itself"** — no consensus taxonomy exists, which is itself the finding. The two-axis version above is synthesised from how the review literature partitions itself, not quoted. Present any structure as one map among possible ones.

**Areas the first scoping missed:** chemical thermodynamics (the most visible gap — Gibbs free energy, chemical potential, phase equilibria; how most people meet the subject); engineering/applied (Carnot cycles, refrigeration, exergy — and the field's historical origin, Carnot 1824 coming *from* steam engines); thermodynamics of computation as distinct from information thermodynamics; bioenergetics (with the caution that chemiosmosis/ATP and the "thermodynamics of living organisation" strand are very different confidence levels sharing a topic name). Also possible: extended/relativistic thermodynamics, and gravitational/holographic thermodynamics beyond black holes (Jacobson's derivation of Einstein's equations from thermodynamics).

## 8. The map of physics — neighbours, for a later call

No canonical list; divisions track institutions (journal sections, PhySH classification, department structure) as much as content. Present as conventional grouping, not natural kind. One-line characterisations (**these are our formulations, not quotable from a source**): classical mechanics — given the forces, what trajectory? electromagnetism — how do charges and currents produce fields, and those fields act back and propagate as light? relativity — what must hold of space, time and energy given light's invariant speed (special), and how does matter-energy determine spacetime geometry and that geometry the motion of matter (general)? quantum mechanics — what can be predicted of a system whose states superpose and whose observables do not commute? QFT — how do relativity and quantum mechanics combine when particle number is not conserved? condensed matter — what collective states emerge when enormous numbers of particles interact? particle physics — what are the elementary constituents and their interactions? cosmology — the large-scale structure and history of the universe as a whole. Fields omitted from the first pass that physicists would count core or near-core: **nuclear physics, AMO, astrophysics (distinct from cosmology), plasma, biophysics, nonlinear dynamics/chaos, quantum information**.

**The Bronstein (cGh) cube is real but is pedagogy, not working doctrine.** Axes G, 1/c, h; Newtonian mechanics at the origin, quantum gravity at the far corner. **Attribution is contested** — Bronstein (1933–34), roots traced by some to Gamow, Ivanenko & Landau; Zel'manov drew it in 1967; Okun (1991) and Barrow (2002) popularised it. Extensions: Oriti's hypercube (adding degrees of freedom N); **Baez's proposed k_B axis** — which itself implies thermodynamics is not on the standard cube. The standard device for which theory applies where is **regimes**, the familiar 2×2 by speed and action.

**Foundational vs applied is disputed.** Anderson, "More Is Different" (*Science* 177, 1972): "at each new level of complexity, entirely new properties appear, and the understanding of these behaviors requires research which I think is as fundamental in its nature as any other." Historians note the argument was motivated partly by the prestige and funding asymmetry between particle and solid-state physics — state that as historians' reading, not Anderson's stated motive. **The dispute splits:** condensed matter is no longer dismissed as applied particle physics (Anderson won the sociological point), but "higher-level laws are irreducible" is *not* settled (Weinberg on the reductionist side; Laughlin and Pines with Anderson). **Do not let the first carry the second.**
