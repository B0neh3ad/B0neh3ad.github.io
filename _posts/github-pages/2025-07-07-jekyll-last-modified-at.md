---
title:  "[Github page] `jekyll-last-modified-at` plugin 사용할 수 없는 이유"

categories:
  - Github pages
tags:
  - github pages
permalink: /github-pages/:title/
---

### 문제

깃헙 블로그를 손보던 중 자동으로 수정 날짜를 갱신하게 하고 싶어 jekyll-last-modified-at이라는 plugin을 넣었다. 그런데, 로컬에서는 잘 작동했지만 배포된 사이트에서는 작동하지 않았다.

![local](https://github.com/user-attachments/assets/5598d1c9-4a37-4f0d-bdca-b26c8a9f9493)

local

![실제 블로그](https://github.com/user-attachments/assets/bad31de5-ae1e-4762-a3a5-efb97424a93d)

실제 블로그

### 원인 파악

[이 글](https://talk.jekyllrb.com/t/how-to-set-lastmod-to-file-modified-date/8609/11)을 읽고 원인을 알 수 있었다.

github page를 이용해 배포하는 사이트의 경우, 순수하게 jekyll만 써서 배포된 사이트가 아니므로 지원하는 plugin과 version에 제한이 있다. ([Dependency versions](https://pages.github.com/versions/))

따라서 github page에서 지원하지 않는 `jekyll-last-modified-at`과 같은 plugin은 사용할 수 없는 것이다. Gemfile에 넣고 배포하려 해도 적용되지 않으며, github action에서 다음과 같은 warning이 나타난다.

![Untitled](https://github.com/user-attachments/assets/d88e03df-869c-46e0-af91-e66c72be6ab6)

### 해결 방법

이를 해결하려면 로컬에서 build 후 배포하거나, 해당 plugin이 수행하는 기능을 직접 구현하던지 해야만 한다. 지원을 안 한다는데 뭐...