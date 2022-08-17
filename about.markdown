---
layout: page
title: About
permalink: /about/

---


{% for doctor in site.doctors %}
  <h1><a href="{{ doctor.permalink }}">{{ doctor.name }}</a></h1>
{% endfor %}

