---
layout: post
title: "Let's Talk Software Languages"
date: 2026-04-11
lastmod: 2026-05-06
labels: [language, engineering]
description: "From binary to Python, how higher level languages make the power of binary accessible — growing in expression, not in power."
status: ready
words: 831
---
<img src="https://images.unsplash.com/photo-1625459201773-9b2386f53ca2?q=80&w=700&h=460&auto=format&fit=crop&crop=center" alt="Software code" />

SPLectrum has a very broad view of language and recognises a wide variety of language categories. Natural languages and software languages are two categories that we as humans have a close affinity with. By nature, natural languages can be ambiguous, context-dependent, evolving, full of implication and unspoken meaning. This is a real strength. Software languages on the other hand are not. They are fully explicit. Every rule is written down, all is well-defined by definition. Software languages are languages in the way that [Russell](/positioning/persons/r/russell/) always wanted them to be. That is their strength and it makes them a good one to learn from.

Let's take a look using a simple addition as an example. In the Python language it is written as `x = 3 + 4` — calculate three plus four and assign it to variable x. It's a straightforward instruction. But the computer processor can't read it that way. At the execution level a computer processor only reads binary — a language with an alphabet of two symbols: 0 and 1. Its vocabulary — the instruction set — is preconfigured and fixed. Note that the instruction set depends on the specific processor.

For our example `x = 3 + 4` the translation of the instruction in binary language (for a [6502](https://en.wikipedia.org/wiki/MOS_Technology_6502) 8-bit processor) is:

```
10101001 00000011
01101001 00000100
10000101 00010000
```

Three instructions, six bytes. Each instruction is two bytes: an opcode (what to do) and an operand (with what). The result is 7, stored in memory. Binary is not very readable to humans. So the first step is to humanise the binary language and to assign human-readable mnemonics to the instructions — the assembly language. A computer then uses a program — the assembler — to convert the assembly into binary instructions which can then be executed.

```
LDA #$03    ; Load 3 into accumulator
ADC #$04    ; Add 4 to accumulator
STA $10     ; Store result in memory (variable x)
```

A one-to-one mapping with the binary. Same instructions, different notation. Already more readable without having 0s and 1s to decode. Next level up are the higher level programming languages using compilers to transform them all the way down into assembly.

Three languages, one computation. Python, assembly and binary instructions all yielding the same result: 7.

If binary already has the full power, why do we need higher languages? Because with full power and control comes complexity of expression. It is not easy to think in such language, to solve problems. Higher languages are there to reduce complexity of expression, to make complex operations simple. `x = 3 + 4` absorbs six bytes of binary instructions into five characters. The complexity hasn't disappeared — it is encapsulated and unpacked by the compiler. This allows the programmer to think and solve problems with simplicity.

Each language is a different language game. The binary game: every bit matters, nothing is hidden, the raw power, all of it. The assembly game: instructions with names, but still raw power. The Python or any other higher language game: thinking in higher-level concepts, the details encapsulated. The rules of the game set the shape of how to think.

The first binary computers started with only binary language — everything directly written in the most basic instruction set. The first assembler — mnemonics mapper — was 31 instructions long written by hand in binary — [David Wheeler](https://en.wikipedia.org/wiki/David_Wheeler_(computer_scientist)). Those 31 words, loaded into the machine, were all that was needed to allow the computer to accept programs in a more human-readable form. Next followed higher level languages that used compilers to rewrite the instructions into assembly.

Soon higher level languages were used to rebuild the lower level tools. Evolution in action. The concept of intermediate language (IL) appeared, an assembly-like instruction set that is not processor specific. Higher level languages get compiled to IL, and then from IL to assembly. An ever-growing interrelated ecosystem of languages building a web of complexity.

All languages have this in common: none of them self-founding. It takes one language to spawn another — [domain specific languages](/positioning/subjects/d/domain-specific-languages/) in action. But wait, what about the beginning? What is the language used to create the first one, the primordial binary instruction set from which all other languages are created? The binary instruction set is hardwired into the processor. That is a different language game altogether but it is a language spawning a language. Likewise we are now seeing another emergence: AI using natural language. Gone is the formal straitjacket, a computer can now be addressed in natural language, ambiguities included. One can only guess how that will change the landscape.

The primordial hardwired language brings the raw power of execution. Higher languages bring the power of thought through the clarity and simplicity of its concepts and grammar. As thinking evolves, so do languages. It's only natural.

<small>This post is part of the [language series](/blog/label/language/). See also <a href="/language/types/software/">Software languages</a>.</small>

---
<small>Photo: <a href="https://unsplash.com/@carlgonz">Carl Gonzalez</a> / Unsplash</small>

