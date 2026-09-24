# Blog Posting Guide

## Setup

- Site: splectrum.world (GitHub Pages from docs/)
- Blog: splectrum.world/blog/ (Jekyll posts in docs/_posts/)
- Reference library: splectrum.world/ (Jekyll pages in docs/)
- Theme: minima with custom head.html, header.html, footer.html, post.html, home.html

## Publishing

Posts live in `docs/_posts/` as Jekyll markdown with front matter. Future-dated posts are hidden by Jekyll until their date arrives. To publish: commit to main and push.

## Cadence

Blog cadence is layered: roughly weekly as a minimum schedule looking four months ahead, every four days as a target schedule with a two-month ahead window, and when there is additional material posts slot in between — creating a local two-day cadence. Posts are rescheduled as needed so the storyline makes sense.

- **The day-number grid.** Posts sit on two monthly tracks so day numbers repeat every month: **track A — 1, 8, 16, 24**; **track B — 4, 12, 20, 28**. One track alone is the weekly minimum; both tracks interleaved give the four-day target. When scheduling or rescheduling, place posts on grid days — a series runs down one track; the other track carries the interleave.
- **Current operation (2026-07-23).** Reduced availability: the schedule runs track A only — one post per week. Track B is dormant until time allows.
- **Parking.** Posts not yet scheduled are parked on fictitious 2030 dates, grouped in series blocks, and brought back when ready. On unparking: rename the file to the real date, set the frontmatter `date:` to match (it overrides the filename), and re-point any internal cross-links to the post's new URL.
- Schedule time: 02:00 UTC.
- Active schedule tracked in `scheduled-tasks.md`.
- Main and topnav update as the work evolves, not on a cadence.

## Markdown Format

Jekyll front matter:

```yaml
---
layout: post
title: "Post Title"
date: YYYY-MM-DD
labels: [category, series]
description: "One-sentence description for SEO and listings"
status: ready
words: NNN
---
```

- **description** — one sentence, used in meta tags and blog listings
- **status** — `storyline`, `draft`, `review needed`, `Mandatory review`, `final revision`, `final review`, `ready`
- **words** — body word count (target 600 average, range 300–900). Update after edits.
- **labels** — 1–2 category labels, 0–1 series label, max 3 total. What each series is for (2026-07-24):
  - **positioning** — high impact only: the load-bearing engagements where SPLectrum places itself against existing thought (e.g. Whitehead — process and anti-representationalism).
  - **conversations** — lighter meetings with thinkers and traditions: portraits, one-off engagements that accompany the main storylines without carrying them.
  - **formalisation** — formal approaches to the seed as an umbrella: category theory first, physics-of-meaning and kin later.
  - **seed** / **reality** / **creativity** / **language** — the core storylines: the principles, the metaphysics, the generative value, the language work.
  - **preamble** — posts from before SPLectrum; closed, do not add.
  - A new series must earn its place — prefer an existing series or no series over minting one. The registration points are the label page, the label index, and the two hardcoded series lists (`blog-entries.html`, `post.html`).

Filename: `YYYY-MM-DD-slug.md` in `docs/_posts/`.

## Publishing Workflow

### Pipeline

```
submissions/   — raw material arrives here, uncategorised
      ↓
  conscious thought handling — analyse, discuss, decide destination
      ↓ draft-ready
drafts/        — accepted, being worked on (flat folder, category in frontmatter)
      ↓
  production   — structure, write, edit, image, links (collaborative)
      ↓
  scheduling   — compose the blog storyline (autonomous). Draft deleted.
      ↓
docs/_posts/   — published posts, date-prefixed
```

Each stage deletes on transition — git history is the archive.

### Submission frontmatter

```yaml
---
title: Submission title
type: post-topic | series | substantial
status: new | in-progress | research | draft-ready
destinations: seed, positioning, language, reality, engineering
---
```

- **type**: `post-topic` (single post), `series` (multiple posts), `substantial` (footprint not yet defined).
- **status**: `new` (just arrived), `in-progress` (being worked through), `research` (needs outside context), `draft-ready` (ready to move to drafts/).
- **destinations**: reference library areas where the material lands. Optional.

### Conscious thought handling

Submissions are raw material that has surfaced. Before becoming a draft, each goes through:

1. **Analysis** — read the submission, understand what's in it.
2. **Discussion** — refine, split, restructure, enrich.
3. **Decision** — research/postpone, draft-ready, or rejected.

Submissions stay in `submissions/` during this process; frontmatter tracks status. A submission may be split, restructured, or absorbed. The thinking is the work — not triage, intellectual processing.

### Scheduling strategy

**Cadence.** Roughly weekly as a minimum looking four months ahead. Every four days as target with a two-month window. When there is additional material, posts slot in between — creating a local two-day cadence. Currently running the weekly minimum only (track A — see § Cadence).

**Composition.** Alternate categories for variety, or cluster the same topic for depth. Not too many heavy core posts in a row. Engineering posts spaced out. Thinking posts as breathers. Topical bunching when posts build on each other.

**Movement.** Posts are rescheduled as needed so the storyline makes sense.

## Production — Way of Working

### Conscious thought handling

Collaborative. Submissions go through analysis, discussion, and decision before becoming drafts. The submission's frontmatter tracks status: `new → in-progress → draft-ready`.

### Draft template

The draft file is the single workspace. The post section is extractable as-is on scheduling.

```markdown
---
title: Post title
series: e.g. mycelium, language
category: e.g. engineering, philosophy
persona: e.g. SPLectrum, comment, thought
status: storyline | draft | review-ready
---

# Post Title
Labels: label1, label2, label3

<img src="IMAGE_URL" alt="ALT" style="float:left;margin:0 15px 10px 0;width:50vw;max-width:350px;" />

[post content]

<small>This post is part of the [series name](/blog/label/series). More in the <a href="https://splectrum.world/area/">area of the reference library</a>.</small>

---
<small>Photo: <a href="https://unsplash.com/@photographer">Name</a> / Unsplash</small>

---

# Notes

## Storyline

### 1. Section
- point
- point

---

## Reference page — docs/path/to/page.md

[page content ready to copy]

---

## Vocabulary updates

- **Term** — definition

---

## Tasks on scheduling

- [ ] task
```

### Collaborative flow

1. **Scope** — discuss what the draft produces: post, reference pages, vocabulary updates
2. **Storyline** — Claude proposes storyline items (points, not prose). Jules steers, adds, corrects. Iterative until agreed
3. **Reference pages** — Claude organises reference page content in the draft, drawing from storyline and submission
4. **Narrative** — Jules writes the flowing text from the storyline
5. **Improve** — Claude improves on the narrative
6. **Edit cycles** — collaborative until review-ready
7. **Production tasks** — image selection, links, final review

### On scheduling

The draft produces its outputs and is then deleted:

1. Create/update reference pages in `docs/`
2. Update the relevant vocabulary page under `docs/vocabulary/`
3. Update reference library index pages
4. Ensure new pages have `lastmod` in frontmatter (today's date) — the sitemap auto-generates from it
5. Render diagrams to images if any
6. Create clean post file in `docs/_posts/` (Jekyll front matter + prose, no notes)
7. Delete draft from `drafts/`
8. Delete submission from `submissions/` (if not already deleted)
9. Commit and push

### Link direction: blog → site only, never site → blog

**Links run one way: a blog post may link into the reference library; a reference-library page must not link into a blog post.** The blog is the moving, time-ordered layer — posts are scheduled, rescheduled, and their URLs are derived from their date. The ref lib is the stable layer. A stable page must not point into a moving one: the moment a post is rescheduled its URL changes and the link breaks, and a link to a future-dated post is dead on the live site until the post publishes. Both failures are structural, not accidental — so the rule removes the whole class.

- **From a blog post:** link out to the ref lib freely for depth — the post tells the story, the library holds the reference. This is the encouraged direction.
- **From a ref lib page:** do **not** link into the blog. If a ref lib page wants to gesture at "the story behind this," state it as plain text without a link, or leave the connection to the reader — the blog post itself carries the link back to the library. Never a markdown link, never an include, into `/blog/…`.
- **The old `pending-link` include is retired.** It existed only to let ref lib pages point at not-yet-published posts by emitting the link after the publish date. Under the one-way rule there is no such link to emit, so the mechanism is unnecessary. Do not add new `pending-link` includes; existing ones are being removed.

### Blog post review checklist

When reviewing existing or new posts, check:

1. **Front matter** — layout: post, title, date, labels (1–2 category, 0–1 series, max 3)
2. **Image** — no inline float styles (CSS handles sizing). Just `<img src="..." alt="..." />`
3. **Internal links** — use absolute paths (`/seed`, `/engineering/splectrum/mycelium/`). No old Blogger URLs, no `jules-tenbos.github.io`, no `.html` extensions
4. **External links** — People and subjects with internal person/subject pages → use internal links. External (SEP/Wikipedia) only for names without a page. Works → Wikipedia links on person pages, not in posts
5. **Series footer** — `<small>This post is part of the [series name](/blog/label/series). See also <a href="/area/page">Page Title</a>.</small>` Use "See also" with the page title, not "More in the reference library"
6. **Photo credit** — `<small>Photo: <a href="...">Name</a> / Unsplash</small>` separated by `---`
7. **No old Blogger artefacts** — no `Blogger-ID:`, no `Labels:` line (use front matter), no bold date lines in body, no `/search/label/`, no `/p/xxx.html`
8. **Voice** — consistent with the post's series and category
9. **No headings** — posts are continuous prose, no `##` section headings (those belong to reference pages)

## Tweets

Each post gets a tweet on publication. Draft alongside the post, tracked in `scheduled-tasks.md`.

- **URL format — `splectrum.world/blog/YYYY/MM/slug/`. Year and month only, NEVER the day.** The permalink (`_config.yml`) is `/blog/:year/:month/:title/`. A tweet like `/blog/2026/07/08/evolution-and-brain/` is a **broken link** — the correct URL is `/blog/2026/07/evolution-and-brain/`. Get the slug from the filename (strip the date prefix), not by guessing.
- **Length — target ≤ 270 characters total, hard max 280** (text + URL + hashtags). Leave a margin; do not sail up to 280. Count the URL as its literal character length (≈40–50 chars for these), not a t.co estimate.
- **State the real character count for each option**, and if unsure, count conservatively — an option that "reads short" is not the same as one that is short. Better a genuinely tight tweet than a padded one at the limit.
- 3–4 hashtags, always including `#SPLectrum`.
- Offer 2–3 options with different angles.

## Images

- Use Unsplash URLs with size/crop parameters (e.g. `w=350&h=230&fit=crop&crop=center`)
- No inline styles — CSS handles sizing (80% centered on desktop, responsive on mobile)
- Place `<img>` tag directly in markdown — passes through to HTML

### Comment template

All comment posts use the same image and credit:

```markdown
<img src="https://images.unsplash.com/photo-1421789665209-c9b2a435e3dc?q=80&w=350&h=230&auto=format&fit=crop&crop=center" alt="Comment" />
```

Credit footer:
```markdown
---
<small>Photo: <a href="https://unsplash.com/@whale">Matthew Smith</a> / Unsplash</small>
```

## Line Breaks

- Paragraph breaks: empty line between paragraphs (standard markdown)
- Line breaks within a paragraph: use `<br>` explicitly
- Trailing two-space trick does NOT work (spaces get stripped by tooling)

## Labels

Two dimensions: **category** and **series**.

- **Category** (1–2) — the domain: philosophy, science, engineering, mathematics
- **Series** (0–1, optional) — groups posts into a journey: category-theory, evolution, language, positioning, preamble, seed

Every post has at least one category. Series is added only when the post belongs to a named journey. Max 3 labels total.

### Adding a new label

Three things to update:

1. **Label page** — create `docs/blog/label/<label>.md` (copy an existing one, change the label name)
2. **Label index** — add the label to the right section (Series/Category) in `docs/blog/label/index.md`
3. **Series lists** — if the new label is a series, add it to the hardcoded series list in two places:
   - `docs/_layouts/post.html` (the `{% assign series = ... %}` line) — controls the post page header
   - `docs/_includes/blog-entries.html` (the `{% assign series = ... %}` line) — controls the blog listing

## Reference Library

The reference library lives in `docs/` and is served at `splectrum.world/`. Content roles:

- **Ref lib** — reference style. Concise, structural. No event narratives or stories.
- **Blog** — the conversation. Happenings, events, the stories behind how things evolved.
- **Documentation** — depth material, downloadable when needed (not on the live site).

Keep each surface doing its own job. If a page starts telling a story, that material belongs in a blog post — and the *blog post* links back to the ref lib page, not the other way around (see "Link direction" above). If a ref lib page needs depth beyond reference style, the depth belongs in a separate document.

### Sitemap lastmod

Both sitemaps are auto-generated from frontmatter:

- `sitemap-site.xml` — generated from `site.pages`, uses `page.lastmod`
- `sitemap-blog.xml` — generated from `site.posts`, uses `post.lastmod` (falls back to `post.date`)

**When editing a page or post:** bump `lastmod: YYYY-MM-DD` in the frontmatter. Cast the net wide — if in doubt, bump it. Crawlers use lastmod to prioritise re-crawl.

**New pages** get `lastmod` in their frontmatter on creation (today's date). No manual sitemap edits needed — the template picks them up automatically.

**Excluding a page** from the sitemap: add `sitemap: false` to its frontmatter.

### Page template

Every reference library page follows this structure:

```markdown
[Home](/) > [Area](/area/) > Page Title

# Page Title

Content...
```

- **Breadcrumb** at the top — absolute links. Root `index.md` has no breadcrumb.
- **Footer** — handled by template (footer.html). No inline footer in pages.
- **Links to blog** — **not allowed.** A ref lib page must not link into a blog post (see "Link direction: blog → site only" above). The blog is the moving layer; linking a stable page into it breaks when posts are rescheduled and dangles when they are future-dated. The blog post carries the link *to* the ref lib page; the ref lib page does not link back. If a ref lib page wants to gesture at the story, do it as plain text without a link.
- **External links** — SEP, Wikipedia for stable references.

### Linking from blog posts

- Series label link: `/blog/label/<series>` (Jekyll label page)
- Reference library link: `https://splectrum.world/<area>/`
- Post footer pattern: `<small>This post is part of the [series](/blog/label/series). More in the <a href="url">area of the reference library</a>.</small>`

## Links

### Trailing slashes

All internal links must use trailing slashes. `/seed/` not `/seed`. No exceptions.

GitHub Pages serves everything at trailing-slash URLs. Non-slash URLs redirect. Google indexes the trailing-slash version and complains about the redirect. Sitemap entries, markdown links, HTML hrefs — always trailing slash.

**Corollary — file↔directory moves need no redirect.** Because every internal link carries the trailing slash, converting a page file to a directory index (`pear.md` → `pear/index.md`) keeps the same URL (`/…/pear/`). Correctly-written links keep working unchanged, so no redirect stub is required for this kind of move. Only add a redirect when a non-slash path or an external URL was shared somewhere outside the repo.

### Sources blocks & freshness

Reference pages (e.g. the infrastructure hub) end with a **Sources** block pointing at where the material lives upstream — `Docs`, `Repo`, `npm` — so refreshes are cheap. Do **not** add a `Snapshot:` / `verified` / `reviewed` date line to the body: freshness is tracked by the `lastmod` frontmatter, which is machine-readable and updates whenever the page is touched. A hand-written body date only duplicates `lastmod` and rots independently. Keep substantive non-date facts (e.g. "checked against bare 1.28.5") if useful, but drop the date itself.

### General
- Maximum 5 links per post (internal + external combined)
- Link on first mention, not every mention
- Not in the first sentence — let the reader settle in
- Every link should add value — if the reader wouldn't learn anything useful by clicking, don't link

### Internal links
- No forward links to future/scheduled posts
- Back-references to other posts: prefer series label link (`/blog/label/<series>/`) over direct post links
- Reference library links for depth — the blog points into the library
- Series/reference footer at the bottom when applicable

#### Backfill when a new person/subject page is created
Creating a page is only half the job. The figure was almost always already mentioned elsewhere — as plain text or an external Wikipedia link — and those mentions should now point inward. After adding a person/subject page:
- `grep` the whole `docs/` tree for the name (and surname variants). Convert the **first mention** on each page from plain text / external link to an internal link; leave later mentions on the same page unlinked.
- Don't forget bold-name list entries on subject pages (e.g. structuralism's "**Roland Barthes** extended…") and inline prose on *other person pages* (e.g. Kreps naming his Kafka co-creators).
- Add the new figure to the relevant subject pages' **Persons** row and, where they're a genuine neighbour, to **See also** — and add reciprocal See-also links back from related person pages.
- Skip kw spans (index keyword text), `description:` frontmatter, and second mentions — those stay plain.
- Then verify: every internal link resolves to a file, and any external link used for a still-pageless figure returns 200 (drop to plain text if the Wikipedia article 404s, per the no-broken-links rule).

### External links
Three categories, all for the curious reader, woven into text, never academic:

1. **People** — first mention of a philosopher/scientist links to a biography (SEP preferred for philosophers if an entry exists, Wikipedia otherwise)
2. **Key works** — when mentioned by name, link to accessible version (arXiv, publisher, SEP)
3. **Topics/theories** — important concepts link to accessible explanation (Wikipedia, SEP)

No footnotes, no bibliography, no academic citation apparatus.
