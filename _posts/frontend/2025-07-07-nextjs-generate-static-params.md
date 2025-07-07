---
title:  "[Next.js] `generateStaticParams`"

categories:
  - Frontend
tags:
  - Next.js
---

> [Functions: generateStaticParams](https://nextjs.org/docs/app/api-reference/functions/generate-static-params)

빌드 타임에 렌더링될 페이지 목록을 결정하는 함수이다. app router 환경에서 쓰인다.

- 함수의 return 값은 SSG를 할 route segment들의 배열이다. 배열에 포함되어 있지 않은 경우, 기본적으로 런타임에 렌더링한다. 즉, return 값으로 모든 segment를 포함하지 않더라도 문제없이 렌더링 된다.
- generateStaticParams에 의해 빌드 타임에 렌더링된 페이지라 하더라도, **이에 포함된 Client Component는 client에서 렌더링된다.** 즉, data fetching 로직이 페이지 내 client component에 포함되었다면 client에서 렌더링 될 때마다 실행된다. (**빌드 타임의 데이터로 고정되는 게 아니다!** 애초에 빌드 타임엔 해당 로직이 실행되지 않는다.)

이에 대비되는 함수로 `getStaticProps`, `getStaticPaths`, `getServerSideProps` 가 있다.

- `getStaticProps` : build time에 이루어질 data fetching 로직을 결정한다. 불러온 data는 page component에 props로서 제공된다.
- `getStaticPaths` : build time에 렌더링할 페이지 목록을 결정한다. 반드시 `getStaticProps`와 함께 쓰여야 한다. `generateStaticParams` 와 마찬가지로 일부 페이지만 SSR 시킬 수 있으며, 나머지 페이지에 대해서는 fallback option을 이용해 404 페이지로 redirect 시킬지(false), 런타임에 SSR을 수행할지(true, ‘blocking’)를 결정할 수 있다.
- `getServerSideProps`: **request time**에 이루어질 data fetching 로직을 결정한다. 불러온 data는 page component에 props로서 제공된다.