---
layout: post
title:  "Ranking poslanců"
date:   2017-08-19 01:01:41 +0200
categories: poslanci
---

<h1>Deset nejlepších</h1>
<ul>
{% for poslanec in site.data.ranking limit:10 %}
  <li><a class="page-link" href="{{ poslanec.jmeno | datapage_url: '/li/poslanci' }}">{{ poslanec.jmeno }} ({{ poslanec.rank }})</a></li>
{% endfor %}
</ul>

<h1>Deset nejhorších</h1>
<ul>
{% assign reversed_ranking = site.data.ranking | reverse %}
{% for poslanec in reversed_ranking | limit:10 %}
  <li><a class="page-link" href="{{ poslanec.jmeno | datapage_url: '/li/poslanci' }}">{{ poslanec.jmeno }} ({{ poslanec.rank }})</a></li>
{% endfor %}
</ul>

<!-- | datapage_url: "/li/poslanci" -->
