---
title: "동아리"
permalink: /categories/club/
layout: archive
author_profile: true
sidebar_main: true
taxonomy: Club
---

교내외로 활동하고 있는 동아리에 관한 포스팅

--------

{% assign posts = site.categories.Club %}
{% for post in posts %} {% include archive-single2.html type=page.entries_layout %} {% endfor %}
