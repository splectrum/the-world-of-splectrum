# When a page is done: front matter, then review

Every page gets reviewed when it is done — a new page, or a rework of an existing one. Before the review, its front matter is brought up to date.

## Order

1. **Listed from the start.** A new page goes into its index (the subjects or persons list, the parent page's links) as soon as it is created, so it can be reached and reviewed on the dev site. The gate is the commit, not the listing.
2. **Front matter first.** Update it to match the finished text: `description` (says what the page now holds; 155 characters at most — see `tone-of-voice/standards.md` § Meta descriptions), `lastmod` (only if the update is substantial — see `posting-guide.md` § Sitemap lastmod), and `title` if the page's name changed. Check the breadcrumb and any link labels elsewhere that name the page.
3. **Then review.** A cold review by the reviewer agent against the tone-of-voice guidance for the page's register, with the page's deliberate choices stated so they are not mistaken for errors. The review reads the front matter too.
4. **Then decide and apply.** Jules decides on the findings; the agreed changes are applied — and if they change what the page holds, the front matter is checked again.
5. **Then commit.**

## Why

The front matter is part of the page: it is what search results and link previews show before anyone reads the body. Reviewing a page whose description still describes the old version reviews the wrong thing — the reviews of Start Here and About (2026-10-12/13) both found descriptions that no longer matched the rewritten pages.
