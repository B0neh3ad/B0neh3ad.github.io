---
title:  "[Next.js] npm vs yarn"

categories:
  - Frontend
tags:
  - Next.js
---

여느날 처럼 `npm run dev`를 쳐서 로컬에서 디버깅하다가 found multiple lockfiles 어쩌구 하는 오류가 생겼다. 임시 방편으로 해결하려면 `package-lock.json`이나 `yarn.lock` 을 지우면 된다고 한다. 그러나, 근본적으로는 앱에서 원래 설정된 package manager와 다른 pm을 써서 생기는 문제라고 한다.

> [Found multiple lockfiles for ? What to delete?](https://stackoverflow.com/questions/72220813/found-multiple-lockfiles-for-what-to-delete)

어떤 pm이 기본인지 난 잘 모르겠다… 나중에 확인하는 법 알아봐야지