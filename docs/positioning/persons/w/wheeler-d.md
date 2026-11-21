---
layout: default
lastmod: 2026-05-27
title: "David Wheeler (1927–2004)"
description: "David Wheeler, British computer scientist: the first assembler, the invention of the subroutine, the Wheeler jump, and programming on the EDSAC."
---

[Home](/) > [Positioning](/positioning/) > [Persons](/positioning/persons/) > Wheeler (David)

# David Wheeler (1927–2004)

Wheeler wrote the first assembler — the programme that translates human-readable mnemonics into machine code — and in doing so created the first layer of abstraction between the programmer and the machine. His 31-instruction bootstrap programme for the [EDSAC](https://en.wikipedia.org/wiki/EDSAC) at Cambridge (1949) was, in a precise sense, the first software tool: loaded into the machine in binary, it allowed all subsequent programmes to be written in a more readable form. Wheeler also invented the subroutine — the closed, reusable block of code that can be called from anywhere in a programme and that returns control to the caller when finished. The Wheeler jump (the mechanism by which a subroutine returns to its calling point) solved the practical problem that made subroutines possible. These contributions are foundational to programming as a practical activity: the assembler made programming feasible, and the subroutine made it modular.

---

## Life

Born 9 February 1927 in Birmingham, England. Undergraduate at Trinity College, Cambridge (BA in mathematics, 1948). PhD at Cambridge (1951) — one of the first PhDs in computer science awarded anywhere, with a thesis on programming techniques for the EDSAC.

Wheeler was a member of the team that built and programmed the EDSAC under [Maurice Wilkes](https://en.wikipedia.org/wiki/Maurice_Wilkes) — one of the first practical stored-programme computers. The EDSAC ran its first programme on 6 May 1949; Wheeler's initial orders (the bootstrap assembler) were among the first programmes it executed. The programming environment was minimal: there was no operating system, no high-level language, no editor. Programmes were entered on paper tape in binary or in the mnemonic code that Wheeler's assembler translated.

Postdoctoral work at the University of Illinois (1951–53), working on the ILLIAC I computer. Returned to Cambridge; fellow of Darwin College; professor of computer science. Wheeler spent his entire career at Cambridge, contributing to compiler design, operating systems, security, and the design of the Cambridge computing service. The attribution "All problems in computer science can be solved by another level of indirection" is widely attributed to Wheeler (sometimes with the addition "...except for the problem of too many levels of indirection").

Fellow of the Royal Society (1981). Died 13 December 2004 in Cambridge.

---

## The assembler and the subroutine

**The initial orders.** The EDSAC's initial orders — Wheeler's 31-instruction bootstrap — were the first assembler: a programme that reads a sequence of mnemonics (short alphabetic codes representing machine instructions) and translates them into the binary patterns the machine executes. Before the initial orders, programming the EDSAC required entering binary codes directly. After them, programmers could write in a notation that was still close to the machine but readable by humans. The step is small in hindsight and was revolutionary in practice: it created the first layer of abstraction in programming, and the principle — that programmes can be written in languages that are then translated into machine code — is the foundation of all subsequent programming-language development.

**The subroutine and the Wheeler jump.** A subroutine is a block of code that performs a specific task, can be called from any point in a programme, and returns control to the caller when finished. The concept requires a mechanism for storing the return address (the point in the calling programme to which control should return) and for jumping to that address when the subroutine completes. Wheeler invented this mechanism — the Wheeler jump — for the EDSAC. The subroutine made it possible to write modular programmes: a library of subroutines for common tasks (input/output, arithmetic, mathematical functions) could be maintained and reused across programmes. Wilkes, Wheeler, and [Stanley Gill](https://en.wikipedia.org/wiki/Stanley_Gill) published *The Preparation of Programs for an Electronic Digital Computer* (1951), the first textbook on programming, which documented the subroutine library approach.

---

## Where Wheeler stops

Wheeler's contributions are foundational but infrastructural — they created the conditions for programming as a practical activity without determining what programmes would be written or how programming would develop as a discipline. The assembler and the subroutine are so thoroughly absorbed into the practice of computing that they are invisible: no modern programmer thinks of the subroutine as an invention, because it is part of the conceptual furniture. Whether this invisibility reflects the depth of the contribution (it is so foundational that it disappears into the background) or its narrowness (it is a technique, not a theory) depends on what counts as a contribution to computer science.

The "levels of indirection" observation — that abstraction layers solve problems in computer science — is productive as a design principle but creates its own problems. Each additional layer adds complexity, potential for error, and performance cost. The tension between abstraction (which makes systems manageable) and transparency (which makes systems understandable) is a recurring theme in software engineering. Wheeler's own work was characterised by attention to both: the initial orders were an abstraction layer, but a minimal one — 31 instructions, as close to the machine as possible while still being useful.

---

## Key works

- Wilkes, M. V., D. J. Wheeler, and S. Gill, *The Preparation of Programs for an Electronic Digital Computer* (Addison-Wesley, 1951) — the first programming textbook; the subroutine library approach
- Wheeler, D. J., "The use of sub-routines in programmes," *Proceedings of the ACM National Meeting* (1952) — the subroutine mechanism described

---

See also: [Von Neumann](/positioning/persons/v/von-neumann/) · [Turing](/positioning/persons/t/turing/) · [Shannon](/positioning/persons/s/shannon/)
