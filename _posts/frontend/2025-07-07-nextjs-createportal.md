---
title:  "[Next.js] createPortal과 layout"

categories:
  - Frontend
tags:
  - Next.js
---

특정 페이지들에 공통된 layout을 적용하고 싶다면 `layout.js` 를 사용해야 한다. 그런데, 이들 중 어떤 페이지는 해당 layout에 종속되지 않아야 하는 component를 가져야 할 수도 있다. 이때 그 component 내에서 `createPortal` 을 이용해 더 상위의 layout에 종속되게 하면 된다.

예) 모바일 웹페이지에서, 상단 헤더의 페이지 제목이 각 세부 페이지마다 다른 경우
