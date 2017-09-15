---
layout: page
title:  "Seznam hlasování"
---

<table class="table">
  <tbody>
  {% for hlasovani in site.data.hlasovani %}
    <tr><td><a href="{{ hlasovani.slug | datapage_url: '/li/hlasovani' }}">{{ hlasovani.nazev }}</a></td></tr>
  {% endfor %}
  </tbody>
</table>

<!-- | datapage_url: "/li/poslanci" -->
