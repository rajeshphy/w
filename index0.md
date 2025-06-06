---
layout: default
title: Rajesh & Akansha Wedding Album
---

## 💍 Wedding Memories

<div class="gallery">
  {% for file in site.static_files %}
    {% assign pageurl = page.url | replace: 'index.html', '' %}
    {% if file.path contains 'assets/' %}
      {% if file.extname == '.jpg' or file.extname == '.jpeg' or file.extname == '.JPG' or file.extname == '.JPEG' %}
        <div class="photo-box">
          <img src="{{ file.path }}" alt="Wedding Image" />
        </div>
      {% endif %}
    {% endif %}
  {% endfor %}
</div>
