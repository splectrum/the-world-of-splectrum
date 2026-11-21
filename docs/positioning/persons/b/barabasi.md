---
layout: default
title: "Albert-László Barabási (1967–)"
description: "Hungarian-American physicist of scale-free networks and preferential attachment, who found that many real-world networks share a common topology of hubs."
lastmod: 2026-05-25
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Barabási

# Albert-László Barabási (1967–)

Barabási showed that many real-world networks — the web, protein interactions, airline routes, citation patterns, social connections — share a common topology: a few nodes with very many connections (hubs) and many nodes with very few. The degree distribution follows a power law rather than the bell curve predicted by random-network theory. He called these scale-free networks and proposed a mechanism — preferential attachment — that generates them. The discovery helped establish network science as a discipline and gave [complex adaptive systems](/positioning/subjects/c/complex-adaptive-systems/) research a structural vocabulary for the interaction topologies on which adaptive dynamics play out.

---

## Life

Born 30 March 1967 in Csíkszereda (Miercurea Ciuc), Transylvania, Romania, to an ethnic Hungarian family. Studied physics at the University of Bucharest; PhD in physics from Boston University (1994). Faculty at the University of Notre Dame, where he built the network-science research group. Since 2007, Robert Gray Dodge Professor of Network Science and University Distinguished Professor at Northeastern University, Boston. Director of the Center for Complex Network Research. Founded and directs the Network Science Institute at Northeastern. External faculty at the Central European University, Budapest. Elected member of the National Academy of Sciences (2020).

## Scale-free networks

The foundational paper: Barabási and Réka Albert, "Emergence of Scaling in Random Networks" (*Science*, 1999). The observation: when Barabási's group mapped the topology of the World Wide Web, the degree distribution (the number of links per page) did not follow the Poisson distribution predicted by [Erdős](https://en.wikipedia.org/wiki/Paul_Erd%C5%91s)–[Rényi](https://en.wikipedia.org/wiki/Alfr%C3%A9d_R%C3%A9nyi) random-graph theory. Instead it followed a power law — a few pages had enormous numbers of links, most had very few, with no characteristic scale in between.

The same topology turned up in network after network: protein-protein interactions in cells, metabolic networks, the internet's physical infrastructure, airline routes, scientific citation patterns, actor collaboration networks. The ubiquity suggested a common generative mechanism rather than domain-specific explanations.

## Preferential attachment

The proposed mechanism. New nodes joining a network connect preferentially to nodes that are already well-connected — the rich get richer. A new webpage is more likely to link to Google than to a random personal site. A new scientist is more likely to cite a highly cited paper. The mechanism is simple, local, and self-reinforcing: early hubs attract more connections, which makes them more visible, which attracts more connections.

Barabási and Albert showed mathematically that preferential attachment produces a power-law degree distribution — the signature of a scale-free network. The model requires only two ingredients: growth (new nodes are added over time) and preferential attachment (new links favour well-connected nodes). Neither ingredient is exotic; the claim is that scale-free topology is the natural outcome when networks grow and connections are not random.

The precedent: [Derek de Solla Price](https://en.wikipedia.org/wiki/Derek_J._de_Solla_Price) had identified cumulative advantage in citation networks in 1976, and [Herbert Simon](https://en.wikipedia.org/wiki/Herbert_A._Simon) had studied similar dynamics in the 1950s. Barabási's contribution was to generalise the mechanism, connect it to network topology across domains, and embed it in a broader research programme.

## Network robustness and vulnerability

Scale-free networks have a distinctive failure profile. Random node removal barely affects connectivity — most nodes are peripheral, and removing them changes little. But targeted removal of hubs is devastating: take out a few highly connected nodes and the network fragments. Albert, Jeong, and Barabási, "Error and Attack Tolerance of Complex Networks" (*Nature*, 2000) demonstrated this computationally and analytically.

The implication: scale-free networks are robust against random failure and vulnerable to targeted attack. The internet survives random router failures because most routers are peripheral; it would be fragile against coordinated attacks on major hubs. The same structure applies to biological networks (removal of highly connected proteins is more likely to be lethal) and to epidemiology (targeting hubs in contact networks is more effective than random vaccination).

## Network Science

*Linked: The New Science of Networks* (Perseus, 2002) brought the research programme to a general audience — the power-law discovery, preferential attachment, robustness and vulnerability, small-world properties, and applications from epidemiology to business. The book is accessible and ambitious, arguing that network science is a new discipline rather than a branch of physics or mathematics.

*Network Science* (Cambridge University Press, 2016) is the textbook — the first comprehensive treatment of the field as a unified discipline. It covers random networks, scale-free networks, evolving networks, community structure, spreading phenomena, and network robustness, with mathematical treatment alongside visual and computational tools. The book is freely available online and has become the standard reference.

## Applications

Barabási's group has applied network analysis across domains:

**Biology.** Network medicine — the idea that diseases are not isolated malfunctions but perturbations of the interactome (the full network of protein-protein interactions in a cell). Diseases that affect overlapping network neighbourhoods share genetic origins and may respond to shared treatments. Goh, Cusick, Valle, Childs, Vidal, and Barabási, "The Human Disease Network" (*PNAS*, 2007).

**Epidemiology.** Contact-network models of disease spread. The scale-free structure of social contact networks means that epidemic dynamics differ from what homogeneous-mixing models predict — targeting hubs for vaccination is disproportionately effective.

**Success and creativity.** *The Formula: The Universal Laws Behind Success* (Little, Brown, 2018) applies network-science methods to the dynamics of success — how reputation, timing, and network position shape who succeeds and why. The work is more popular-science than the network-topology research; it extends the brand rather than the core programme.

## Reception and critique

Network science as Barabási frames it has been influential and contested. The influence is clear: scale-free networks, preferential attachment, and network robustness are standard tools across physics, biology, computer science, and social science. The contestation comes on several fronts.

**Are real networks truly scale-free?** [Aaron Clauset](https://en.wikipedia.org/wiki/Aaron_Clauset), Cosma Shalizi, and M.E.J. Newman ("Power-Law Distributions in Empirical Data," *SIAM Review*, 2009) showed that rigorous statistical testing rejects the power-law hypothesis for many networks previously claimed to be scale-free. The degree distributions are heavy-tailed but may follow log-normals, stretched exponentials, or other forms rather than strict power laws. The debate continues; Barabási's group has responded with refined criteria and additional evidence.

**Is preferential attachment the mechanism?** Alternative mechanisms (fitness-based attachment, optimisation, geographic constraints) can produce heavy-tailed distributions without strict preferential attachment. The mechanism may be one of several rather than the universal generator.

**Disciplinary scope.** Some critics argue that "network science" as a single discipline overstates the coherence of what is really a toolkit applied across existing disciplines. Network analysis is a method; whether it constitutes a science is contested.

## Where Barabási stops

Barabási's programme maps the structure of networks — their topology, their growth, their robustness. What it does not centre is adaptation: agents changing their strategies in response to each other and to the network they inhabit. The network in Barabási's models is the scaffold; the dynamics on the scaffold are studied separately. CAS foregrounds adaptive agents whose behaviour reshapes the network they interact through. Where network science and CAS converge — adaptive networks whose topology coevolves with agent behaviour — the boundary between the two traditions dissolves.

---

## Key works

- "Emergence of Scaling in Random Networks" (with Réka Albert, *Science*, 1999) — scale-free networks, preferential attachment.
- "Error and Attack Tolerance of Complex Networks" (with Albert and Jeong, *Nature*, 2000) — robustness and vulnerability of scale-free networks.
- *Linked: The New Science of Networks* (Perseus, 2002) — the general-audience introduction.
- *Network Science* (Cambridge University Press, 2016) — the textbook; the discipline's standard reference.

---

See also: [Complex Adaptive Systems](/positioning/subjects/c/complex-adaptive-systems/)
