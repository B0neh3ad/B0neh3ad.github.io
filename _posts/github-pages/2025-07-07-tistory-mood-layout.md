---
title:  "[Github blog / minimal mistake] Tistory 느낌의 layout 만들기"

categories:
  - Github pages
tags:
  - github pages
  - minimal mistake
permalink: /github-pages/:title/
---

minimal mistake 테마에서 제공하는 header overlay를 이용하면 손쉽게 만들 수 있다. 자세한 설명은 [여기로](https://mmistakes.github.io/minimal-mistakes/docs/layouts/#header-overlay).

### 예시

```yaml
---
# 아래의 excerpt 문구가 제목과 함께 이미지 위에 overlay 된다.
excerpt: "This post should display a **header with an overlay image**, if the theme supports it."
header:
  overlay_image: /assets/images/unsplash-image-1.jpg
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
  actions:
    - label: "More Info"
      url: "https://unsplash.com"
---
```

### 적용 결과

<https://mmistakes.github.io/minimal-mistakes/layout/uncategorized/layout-header-overlay-color/>