---
title: "Trouble Shooting"
permalink: /categories/trouble-shooting/
layout: archive
author_profile: true
sidebar_main: true
taxonomy: Trouble Shooting
---

뭐가 문제일까...

--------

{% assign posts = site.categories['Trouble Shooting'] %}
{% for post in posts %} {% include archive-single2.html type=page.entries_layout %} {% endfor %}
