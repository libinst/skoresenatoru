---
layout: page
title:  "Celkové pořadí"
permalink: "/celkove-poradi/index.html"
---

<p>Do přehledu TOP 10 zařazujeme pouze senátory, kteří měli mandát během více než jedné třetiny hodnocených hlasování.</p>
<table class="table table-striped">
<tbody>
{% for senator in site.data.ranking %}
  <tr>
    <td>{{ forloop.index }}.</td>
    <td><a class="page-link" href="{{ senator.jmeno | datapage_url: '/senatori' }}">{{ senator.jmeno }}</a></td>
    <td>{{ senator.strana }}</td>
    <td>{{ senator.rank }}</td>
  </tr>
{% endfor %}
</tbody>
</table>

<!-- | datapage_url: "/poslanci" -->
