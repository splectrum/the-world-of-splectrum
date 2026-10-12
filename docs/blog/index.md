---
layout: default
lastmod: 2026-05-05
title: "In Wonder — The Conversation"
description: "In Wonder — SPLectrum's blog conversations. Exploring language, reality, philosophy, science and engineering from an interrelational pluralism view."
---

[Home](/) > In Wonder

# In Wonder — The Conversation

For more structured browsing of the posts, go to the [labels](/blog/label/) page.

{% assign sorted_posts = site.posts | sort: 'date' | reverse %}
{% include blog-entries.html posts=sorted_posts %}
