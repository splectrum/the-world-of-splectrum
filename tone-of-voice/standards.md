# Standards — quality rubric and SEO

Operational standards for reviewing and publishing. The quality rubric is a checking tool (after drafting, not during); the SEO standards are authoring habits.

---

## Quality rubric

### External yardstick: Google E-E-A-T and Page Quality

Google's [Search Quality Rater Guidelines](https://static.googleusercontent.com/media/guidelines.raterhub.com/en//searchqualityevaluatorguidelines.pdf) give a common-sense definition of quality. E-E-A-T: Experience, Expertise, Authoritativeness, Trustworthiness (Trust at the centre). Page Quality on a 5-point scale: Lowest / Low / Medium / High / Highest.

### Purpose check: Diataxis

[Diataxis](https://diataxis.fr/) separates content by what the reader needs: Tutorial, How-to, Reference, Explanation. Most of splectrum.world is Explanation with some pure Reference. Staying in type per mode — explanation shouldn't slide into how-to; reference shouldn't carry opinion.

### Three profiles

**Ref lib (canonical):** Single narrator persona. All external and internal standards apply in full. Touchstone discipline over comprehensive. "Is like" not "is". A piece is publishable when no applicable criterion scores below 3. Below 3 on Trust or Stays-in-type is blocking.

**Topnav (lightweight):** Author voice. Confidence allowed. The check is honesty vs performance — no slogan-creep, no humble-bowing, no promotional tics. Expertise and Authoritativeness omitted; ref-lib standing-back does not apply.

**Blog (persona-grouped):**
- **Group A — SPLectrum speaks.** Full standing-back discipline. Explicit vocabulary matters.
- **Group B — Narrator speaks of others.** Restraint about applying the seed. Fidelity to subject. Learning tone.
- **Group C — Person speaks.** Most direct first person. Substance = genuine observation, not mini-manifesto.

Score each criterion 1–5 using Google PQ anchors. Comments are where the review lives — a number on its own is a signal, not a verdict.

---

## Linking — internal vs external

The site links internally in most sections. Positioning persons and subjects use internal links where an internal page exists, external links (Stanford Encyclopedia, Wikipedia, institutional pages) where not. The applied sections (blog, real life, engineering) have their own mix of internal and external, specified further when needed.

### The threshold test

When a name or subject enters the text, a threshold decision is made: does it live internally (has or will have its own persons/subjects page) or is it an external reference only? This decision governs whether the link points inward or outward.

- **Internal link** = the name lives on the site. A persons or subjects page exists or is being committed to.
- **External link** = the name is cited as context. No internal page exists or is planned.

Don't mention persons or subjects for the sake of it — only if important enough to warrant a persons/subjects entry or an external citation that serves the page.

### Best effort and transitions

Threshold decisions are best effort at the time of writing. When a completed set of new person or subject pages is reviewed, external links to those names are replaced with internal links across the site. When a name crosses the threshold in either direction — gaining an internal page, or having one removed — the change is applied site-wide. No half-states where the same name is internal on one page and external on another.

---

## SEO standards

Every published page should be discoverable by someone who doesn't yet know SPLectrum exists. SEO is making sure the page carries enough structural signal for search engines to match it to the right query.

### Meta descriptions
- Every page and post must have a `description:` field in front matter.
- 120–155 characters. One sentence. Unique per page.
- Include the core concept the way a searcher would type it.

### Page length
- Blog posts: 300–600 words (one argument, one point).
- Reference pages: 300+ words, `##` headings to structure. Touchstone principle governs upper length.
- Landing/hub pages may start lighter and grow organically.

### Internal linking
- Link text should be descriptive, not "click here".

### Titles
- Clear and specific. Under 60 characters where possible.
- Reference pages: name the subject. Blog posts: name the insight or question.

### Images
- Every `<img>` must have an `alt` attribute describing what the image shows.

### Sitemap
- Every new page gets `lastmod` in frontmatter at creation. The sitemaps (site, library, blog) generate from it automatically.

### What not to do
- Don't write for search engines at the expense of the reader — tone-of-voice principles take precedence.
- Don't stuff keywords. Don't duplicate content across pages for SEO purposes.
