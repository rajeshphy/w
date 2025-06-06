---
layout: default
title: Rajesh & Akansha Wedding Album
---

## 🖼 Portrait Orientation
<div class="gallery" id="portrait-gallery"></div>

## 🖼 Landscape Orientation
<div class="gallery" id="landscape-gallery"></div>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    const files = [
      {% for file in site.static_files %}
        {% if file.path contains 'assets/' %}
          {% if file.extname == '.jpg' or file.extname == '.jpeg' or file.extname == '.JPG' or file.extname == '.JPEG' %}
            "{{ file.path }}",
          {% endif %}
        {% endif %}
      {% endfor %}
    ];

    files.forEach(src => {
      const img = new Image();
      img.src = src;
      img.onload = function () {
        const wrapper = document.createElement("div");
        wrapper.classList.add("photo-box");
        wrapper.appendChild(img);

        if (img.naturalWidth > img.naturalHeight) {
          document.getElementById("landscape-gallery").appendChild(wrapper);
        } else {
          document.getElementById("portrait-gallery").appendChild(wrapper);
        }
      };
    });
  });
</script>
