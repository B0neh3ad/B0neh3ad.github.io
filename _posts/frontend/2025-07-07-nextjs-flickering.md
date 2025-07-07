---
title:  "[Next.js] Flickering by styled-components in Next.js"

categories:
  - Frontend
tags:
  - Next.js
---

### 원인

styled-components로 지정된 style은 기본적으로 서버에서 렌더링되지 못한다. 이로 인해 client에서는 서버에서 보내준 html에 직접 style을 입혀야 한다. 이때 flickering이 발생한다.

### 해결 방법

1. Customizing `renderPage`

`_document.tsx` 파일을 만든 뒤, `Document.getInitialProps(ctx)` method 내에서 `ctx.renderPage`를 customize하는 방식으로 SSR을 구현하여 해결

[https://velog.io/@cyranocoding/Next-js-구동방식-과-getInitialProps](https://velog.io/@cyranocoding/Next-js-%EA%B5%AC%EB%8F%99%EB%B0%A9%EC%8B%9D-%EA%B3%BC-getInitialProps)

[Routing: Custom Document](https://nextjs.org/docs/pages/building-your-application/routing/custom-document)

그러나 이 방식은 Next.js 공식문서에서 권하고 있지 않다.

1. migrate to App Router

app router로 migration을 한 뒤 layout, template 등을 활용하라고 하는데.. 아직 어떻게 해야할지 잘 모르겠다. App Router는 기본적으로 server component 아닌가? 그럼 styled component 사용이 더 피곤해질텐데…

일단 page router를 유지하며 1번 전략으로 간 뒤 차차 고민해봐야겠다.

> 솔직히 styled component같은 css-in-js 프레임워크보다 그냥 tailwind 같은 거 쓰는 게 나을 거 같다. 1번 방법으로 filckering을 없애도, 서버 렌더링이 끝나기 전 하얀 화면이 뜨는 건 막을 수가 없다… 가뜩이나 MAU 낮은 식샤 웹의 UX를 더 낮춰서 불난 집에 기름 붓는 느낌이다.
> 

[2025-04-06] App router로의 migration이 마무리되었고, 이제 더 이상의 flickering은 발생하지 않는다. 대신 거의 모든 page / component가 client component라서 app router의 지향점과는 다소 거리가 있다. 결과적으로, css-in-js에서 벗어나야 한다는 생각은 그대로이다.