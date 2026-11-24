# Working rules — how Claude works with Jules

The day-to-day rules of the collaboration, each learned from a case. The other process files cover particular workflows; this one holds the standing rules that apply everywhere.

## Commits and files

- **Commit only on Jules's word.** Finished work is ready for review, not for commit. When told to commit, commit to `main` (no feature branches) and push to both remotes; check the push with `git ls-remote`, as Codeberg drops connections.
- **"Commit and push" covers everything pending**, Jules's own future-dated drafts included (the build holds future posts back). Never leave a file out on my own judgement; if something seems worth excluding, ask.
- **Never delete files without an explicit instruction.** Mentioning that files exist is not a request to remove them. This holds most of all outside the repo, where there is no history to recover from. Removing links or sections within a page under an agreed rule is not deletion.

## Discussion and go-ahead

- **"Yes, but…" is discussion.** An edit needs a plain go-ahead. A reply that carries a new argument, or a proposal phrased "I think we…", "what about…", "maybe…", is answered first (what is gained, what is lost) and the go-ahead asked again. A structural instruction in the same message can be carried out; a new idea in it is talked through before any prose is written.
- **Apply what is agreed.** Once a recommendation or rule is agreed or recorded, apply it to the case in hand without asking again (the counterpart of the rule above). The exception is deleting files.
- **Discuss in chat, not by multiple choice.** Lay out the thinking in prose and ask open questions; no menu prompts.
- **Discussion is the work.** Long rounds on plain pages (the 101) are where positions get settled. Drafts on the page stay sparse; points still open stay in chat.

## Working documents

- **Research and working docs stand alone.** No pointers to other docs, no file paths, no allusions to conversations or plans; inline what the doc needs. Linking between pieces of work lives only in `scheduled-tasks.md`. The method runs on independent arrival: wired-in dependencies manufacture the convergence the research is meant to find.
- **Groundwork is scaffolding.** When a post is done, its groundwork doc is deleted (on Jules's word), deferred scraps included: material left out of a post was a decision, not a loss. Decision records and field research feeding a build in progress are not groundwork.
- **Blocked sources go to Jules.** When verification fails for access reasons (bot checks, paywalls, lending-only books), list the items with exact URLs, batched per page, and ask him to fetch them. Drop or soften a claim only when it cannot be sourced at all.

## Words and links

- **"Seed" is reserved.** Never use it as our own everyday metaphor ("the seed of an idea"); it reads as the SPLectrum term. A quoted translation on a page where SPLectrum is absent can keep it.
- **Internal links are absolute from the site root** (`/section/.../slug/`), never relative: a relative link copied to a page at another depth breaks. A link target starts with `/` or `http`; `grep -rnoE "\]\([^/h)][^)]*\)"` finds relative ones.

## Delegated editing

Learned 2026-11-25, when a six-agent consistency pass over ~480 person and subject pages had to be rolled back: it cut material other pages and live posts rely on, and its rewording drifted in meaning on about one rewritten page in four.

- **Cut and replace, don't reword.** An editing agent cuts a sentence, or replaces a named term with the field's own term; it does not rephrase claims. Rewording without the source in hand is where meaning drifts. A lead that needs rebuilding is proposed, not written.
- **Check reliance before cutting.** Person and subject pages back the pages above them (`process/backing-flows-down.md`). Before cutting a quote or fact, grep the site (posts included) for it; if anything relies on it, it stays.
- **Quotes stay quotes; exact stays exact.** No quotation turned into paraphrase, no exact fact made vaguer. Technical pages (formats, protocols, specifications) are not trimmed for detail.
- **Pilot, then scale.** Run a brief on about ten pages, review the diffs cold, fix the brief, and only then widen it. Slices stay small (about 30 pages), agents do not sub-delegate, and nothing is shared through scratch scripts.
