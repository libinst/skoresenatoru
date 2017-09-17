---
layout: page
title:  "Seznam poslanců"
---

<ul>
{% for poslanec in site.data.poslanci %}
  <li><a class="page-link" href="{{ poslanec.jmeno | datapage_url: '/skoreposlancu/poslanci' }}">{{ poslanec.jmeno }}</a></skoreposlancu>
{% endfor %}
</ul>

<!-- | datapage_url: "/skoreposlancu/poslanci" -->
