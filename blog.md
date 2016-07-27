---
layout: page
title: Blog
permalink: /blog/
---

<div class="blog ng-hide" ng-show="!loading" ng-controller="BlogCtrl">
  <ul class="list-unstyled">
      <li ng-repeat="post in posts">
        <h2>
          {{ 'post.title' | angular }}
          <small class="post-meta">{{ 'post.date | date: "short"' |angular}}</small>
        </h2>
        <article ng-bind-html="parseContent(post.content)"></article>
      </li>
  </ul>
</div>
