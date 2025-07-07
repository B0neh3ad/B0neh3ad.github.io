---
title:  "[Typescript / VSCode] Clearing cache and forcing full-reload to ensure TypeScript is compiled with updated config values."

categories:
  - Frontend
tags:
  - typescript
---

tsx 파일명을 바꾸거나 하면 기존의 캐시 때문에 위의 에러 메세지가 뜨며 오류를 내뿜는 경우가 있다. 이럴 땐 캐시를 날려주면 된다.

> Ctrl + Shift + P → ‘Restart’ 검색 → `Typescript: Restart TS Server` 선택

> [참고] [How to clean typescript cache?](https://stackoverflow.com/questions/52146929/how-to-clean-typescript-cache)