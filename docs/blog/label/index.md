---
layout: default
lastmod: 2026-07-24
title: "Labels"
description: "Browse blog posts by label on The World of SPLectrum."
---

[Home](/) > [In Wonder](/blog/) > Labels

# In Wonder — Labels

<div class="label-grid">
  <div>
    <h3>Series</h3>
    <ul>
      <li><a href="conversations">conversations</a> ({{ site.posts | where_exp: "p", "p.labels contains 'conversations'" | size }})</li>
      <li><a href="creativity">creativity</a> ({{ site.posts | where_exp: "p", "p.labels contains 'creativity'" | size }})</li>
      <li><a href="formalisation">formalisation</a> ({{ site.posts | where_exp: "p", "p.labels contains 'formalisation'" | size }})</li>
      <li><a href="language">language</a> ({{ site.posts | where_exp: "p", "p.labels contains 'language'" | size }})</li>
      <li><a href="positioning">positioning</a> ({{ site.posts | where_exp: "p", "p.labels contains 'positioning'" | size }})</li>
      <li><a href="preamble">preamble</a> ({{ site.posts | where_exp: "p", "p.labels contains 'preamble'" | size }})</li>
      <li><a href="reality">reality</a> ({{ site.posts | where_exp: "p", "p.labels contains 'reality'" | size }})</li>
      <li><a href="seed">seed</a> ({{ site.posts | where_exp: "p", "p.labels contains 'seed'" | size }})</li>
    </ul>
  </div>
  <div>
    <h3>Category</h3>
    <ul>
      <li><a href="engineering">engineering</a> ({{ site.posts | where_exp: "p", "p.labels contains 'engineering'" | size }})</li>
      <li><a href="mathematics">mathematics</a> ({{ site.posts | where_exp: "p", "p.labels contains 'mathematics'" | size }})</li>
      <li><a href="philosophy">philosophy</a> ({{ site.posts | where_exp: "p", "p.labels contains 'philosophy'" | size }})</li>
      <li><a href="science">science</a> ({{ site.posts | where_exp: "p", "p.labels contains 'science'" | size }})</li>
    </ul>
  </div>
</div>
