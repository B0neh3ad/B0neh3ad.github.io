---
title:  "[Next.js] Babel vs SWC"

categories:
  - Frontend
tags:
  - Next.js
---

### SWC
js 컴파일러. 정확히는 javascript로 결과물을 변환해주는 transpiler다. js 기반 언어(typescript)나 프레임워크로 짜인 코드를 js로 바꿔주는 역할을 한다.

### Bable vs SWC
Next.js에서도 버전 11까지는 Babel을 활용했으나, 12부터는 SWC로 babel을 대체 가능하도록 하였다. SWC는 babel을 대체할 수 있는 기능을 갖춘 데다가, Vercel 측에 속한 개발자가 리드하는 프로젝트이므로 Next.js와의 호환성이 더 좋을 것으로 기대도 된다.

> [참고] [Next JS가 Babel을 SWC로 대체한 이유](https://velog.io/@kwonhygge/Next-JS가-Babel을-SWC로-대체한-이유)