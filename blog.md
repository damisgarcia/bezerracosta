---
layout: page
title: Blog
permalink: /blog/
---

<div class="blog">
  <ul class="list-unstyled">
    {% for post in site.posts %}
      <li>
        <h2>
          <small class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</small>
          <br>
          <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
        </h2>
      </li>
    {% endfor %}
  </ul>

  <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>

</div>
