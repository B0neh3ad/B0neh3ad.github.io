---
title:  "[Github blog / Minimal mistake] collection"

categories:
  - Github pages
tags:
  - github pages
  - minimal mistake
permalink: /github-pages/:title/
---

jekyll의 *minimal mistake* theme에는 흔히 알고 있는 category, tag 외에도 **collection**을 이용해 글을 묶어줄 수 있다. 시리즈로 연재하는 글 같은 걸 묶을 때 요긴하게 쓸만할 것 같다.

category, tag와 똑같이 YFM에 넣어주면 사용할 수 있다.

또한, collection layout을 이용해 글을 묶어서 보여주는 archive 페이지를 만들 수 있다. 예를 들어, recipes collection에 속한 모든 글을 보여주는 페이지를 만든다면 다음과 같은 YFM을 작성하면 된다.

```yaml
---
title: Recipes
layout: collection
permalink: /recipes/
collection: recipes
sort_by: title # 제목 순으로 정렬 
---
```