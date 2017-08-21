---
layout: post
title:  "Seznam poslanců"
date:   2017-08-19 01:01:41 +0200
categories: poslanci
---

<ul>
{% for sheet in site.data.sheet %}
  <li><a class="page-link" href="{{ sheet.jmeno | datapage_url: "/li/poslanci"}}">{{ sheet.jmeno }}</a></li>
{% endfor %}
</ul>
