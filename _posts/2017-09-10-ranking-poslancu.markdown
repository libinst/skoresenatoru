---
layout: post
title:  "Ranking poslanců"
date:   2017-08-19 01:01:41 +0200
categories: poslanci
---

<ul>
<li>rankujem</li>
{{ site.data.ranking}}
{% for poslanec in site.data.ranking %}
  {{ poslanec }}
  <li><a class="page-link" href="{{ poslanec.jmeno | datapage_url: '/li/poslanci' }}">{{ poslanec.jmeno }} ({{ poslanec.rank }})</a></li>
{% endfor %}
</ul>

<!-- | datapage_url: "/li/poslanci" -->
