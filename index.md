---
layout: page
title:  "Skóre poslanců"
---

<div class="row">
  <div class="col-md-6">
    <h1>Deset nejlepších</h1>
    <table class="table">
    <tbody>
    {% for poslanec in site.data.ranking_nejlepsi limit:10 %}
      <tr>
        <td><a class="page-link" href="{{ poslanec.jmeno | datapage_url: '/li/poslanci' }}">{{ poslanec.jmeno }}</a></td>
        <td>{{ poslanec.strana }}</td>
        <td>{{ poslanec.procent }}</td>
      </tr>
    {% endfor %}
    </tbody>
    </table>
  </div>
  <div class="col-md-6">
    <h1>Deset nejhorších</h1>
    <table class="table">
    <tbody>
    {% for poslanec in site.data.ranking_nejhorsi limit:10 %}
      <tr>
        <td><a class="page-link" href="{{ poslanec.jmeno | datapage_url: '/li/poslanci' }}">{{ poslanec.jmeno }}</a></td>
        <td>{{ poslanec.strana }}</td>
        <td>{{ poslanec.procent }}</td>
      </tr>
    {% endfor %}
    </tbody>
    </table>
  </div>
</div>


<!-- | datapage_url: "/li/poslanci" -->
