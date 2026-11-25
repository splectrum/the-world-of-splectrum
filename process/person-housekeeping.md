# Person housekeeping — keeping person pages relevant

Person pages make information available to SPLectrum, so the site is self-contained (`tone-of-voice/positioning-section.md` § What person and subject pages are for). As the site evolves they need regular upkeep: the overview kept current, depth kept where it is useful, gaps filled where SPLectrum's pages lean on the person. This is the regular research update the positioning rules count on. It is recurring work, done person by person in small batches, not a one-off sweep. Subject pages follow the same pattern after the person pilot, in three kinds (ordinary, meta and technical subjects), with breadth in place of the person-and-work scope.

## The checks, per person

1. **Is the comprehensive treatment up to date?** The overview carries all the headlines of the person and their work, including the ones SPLectrum does not use, with current facts.
2. **Where there is more detail, does it link in with SPLectrum?** Depth earns its place only where it is useful to SPLectrum. Detail that is neither overview nor useful depth (staged disputes, CV minutiae, edition apparatus, anecdote) is a candidate to cut.
3. **Do SPLectrum's references to the person need more detail here?** Where a post, ring, reality, seed or Real Life page leans on the person, the page backs it. Gaps are filled from checked sources, in the neutral register (`process/backing-flows-down.md`).
4. **What relies on the page.** List everything that points to it — posts, rings, reality, seed, subjects, the 101 — and what each uses. Material something relies on is not cut.
5. **Accuracy.** Dates and living status, birth years (sourced or absent, never inferred), attributions, and quotations checked at source or attributed to a named secondary source.
6. **One home per story.** A debate told on several pages is told once, on the page where it lives; the others point there (`process/page-structure.md` § Conventions across person pages).
7. **The link network.** Who links to the person (and whether nothing does); internal links where pages exist; labels that name their target; same-surname slugs checked; See also supported by the body.
8. **Against the rules.** The tone of voice and the positioning rules: the field's voice, no SPLectrum vocabulary, no page-voice verdicts or self-narration, closer only in its safe modes, headlines not details.
9. **Index entry and front matter** match the page: label, keywords, dates, description.
10. **Does the person still earn a page?** Raised with Jules for discussion when doubtful, never decided alone (positioning-section, on who earns a person page).

## How it runs

1. **Pick a batch** of about five persons. Order: the persons SPLectrum leans on most first (most inbound links from posts, rings, reality and seed); persons with no inbound link come last or are raised under check 10.
2. **Research.** A research agent (`.claude/agents/researcher.md`) reads each page and everything that links to it, checks against sources, and writes one note per person under the checks above: what is current or wrong, what detail does not connect, which gaps SPLectrum's references open, what relies on what. Marks [C]/[U] (`process/working-notes.md`); blocked sources listed for Jules.
3. **Edit** from the note, under `process/working-rules.md` § Delegated editing: cut and replace, no rewording of claims without the source in hand, reliance checked before any cut, quotes stay quotes, exact stays exact. New material goes in from [C] findings only. `lastmod` moves when the page gains or loses substance (`posting-guide.md` § Sitemap lastmod).
4. **Cold review** of the diffs by the reviewer agent; agreed fixes applied.
5. **Report** to Jules per batch: what changed, what needs his call (content, who earns a page, sources to fetch). Commit on his word.

A first batch is a pilot: review it with Jules before widening the batch size or handing editing to agents.
