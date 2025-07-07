---
title:  "[PostgreSQL] Ubuntu 로컬에 postgresql 설치하기"

categories:
  - Backend
tags:
  - PostgreSQL
---

원래는 docker 깔아서 container 형태로 설치했는데 싸지방에서, 그것도 code-server 상에서 돌리려니 여러 문제가 많아서 로컬에 깔기로 결정했다.

### 내가 겪은 문제들
- 일단 포트가 거의 다 막혀있다.
- code-server 내에서 docker를 또 까는 건 지저분하다고 생각해 code-server가 올라가있는 docker에 postgresql container를 만들어서 원격 접속을 시도해봤다. 그러나 아까 말한 포트 문제와 더불어 원격 호스트 접속도 번거로웠기에 관뒀다.

### 설치 방법
[여기](https://backendcode.tistory.com/265).