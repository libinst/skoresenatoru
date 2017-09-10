---
layout: post
title:  "Seznam poslanců"
date:   2017-08-19 01:01:41 +0200
categories: poslanci
---

<ul>
{% for poslanec in site.data.poslanci %}
  <li><a class="page-link" href="{{ poslanec.jmeno | datapage_url: '/li/poslanci' }}">{{ poslanec.jmeno }}</a></li>
{% endfor %}
</ul>

<!-- | datapage_url: "/li/poslanci" -->
