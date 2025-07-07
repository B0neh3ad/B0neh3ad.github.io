---
title:  "[Next.js] npm vs yarn"

categories:
  - Frontend
tags:
  - Next.js
---

Nextjs로 빌드된 페이지를 보면, 현재 페이지의 렌더링과 관련없는 js 파일들이 hydration 이후에 로딩되는 것을 볼 수 있다. 이는 주로 Prefetch 때문이다.

Prefetch란, 웹페이지의 빠른 렌더링을 위해 다른 페이지의 js 파일들을 “미리” 불러오는 Nextjs의 기능이다. 예시로, 내가 개발 중인 [식샤](https://siksha.wafflestudio.com/)의 메뉴 상세 페이지에 접속하는 과정을 살펴보자. 아래와 같이 `/account`, `/community` 등 다른 페이지의 렌더링에 필요한 js 파일들이 로딩되는 것을 볼 수 있다. 또한, 이들은 모두 hydration 이후에 로딩됨을 알 수 있다.

![image.png](/assets/images/nextjs-prefetch-1.png)

![image.png](/assets/images/nextjs-prefetch-2.png)

이제 `/account` 페이지에 접속해보자. 어떠한 js 파일도 추가로 로딩되지 않고, 즉시 hydration 되는 것을 볼 수 있다. 이는 `/community` 하위 페이지 등 앞서 로딩된 js 파일을 요구하는 다른 페이지들에 대해서도 마찬가지이다.

![image.png](/assets/images/nextjs-prefetch-3.png)