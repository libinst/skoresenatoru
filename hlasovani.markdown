---
layout: page
title:  "Seznam hlasování"
permalink: "/hlasovani/index.html"
---

<table class="table">
  <tbody>
  {% for hlasovani in site.data.hlasovani %}
    <tr><td><a href="{{ hlasovani.slug | datapage_url: '/hlasovani' }}">{{ hlasovani.nazev }}</a></td></tr>
  {% endfor %}
  </tbody>
</table>

<!-- | datapage_url: "/poslanci" -->
