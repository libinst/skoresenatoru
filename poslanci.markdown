---
layout: page
title:  "Celkové pořadí"
permalink: "/celkove-poradi/index.html"
---

<table class="table table-striped">
<tbody>
{% for poslanec in site.data.ranking %}
  <tr>
    <td>{{ forloop.index }}.</td>
    <td><a class="page-link" href="{{ poslanec.jmeno | datapage_url: '/poslanci' }}">{{ poslanec.jmeno }}</a></td>
    <td>{{ poslanec.strana }}</td>
    <td>{{ poslanec.rank }}</td>
  </tr>
{% endfor %}
</tbody>
</table>

<!-- | datapage_url: "/poslanci" -->
