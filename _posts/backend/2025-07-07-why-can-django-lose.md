---
title:  "[Django] django는 왜 망할 수 있을까?"

categories:
  - Backend
tags:
  - Django
---

> 본 게시글은 교내 웹/앱 개발 동아리에서 django 세미나를 수강하며 공부한 내용 중 일부를 정리한 것입니다.

1. 불필요한 기능 너무 많아서 MSA 구조에 비적합하다. FastAPI에도 밀린다.
   - 그럼 불필요한 기능들을 안 쓰면 되지 않느냐? 싶겠지만, 해당 기능들도 프레임워크의 일부이므로 쓰다 보면 언젠간 이해해야 하는 순간이 온다. 다시 말해, 이들 기능을 잘 모르면 django를 제대로 알고 쓰기 어려운 때가 온다. 이것 자체가 문제!
2. 비동기 개발 지원이 잘 안 된다.
3. Type-safe development가 어렵다.
    - QuerySet의 경우 특정 model에 대한 queryset을 typing할 수 없다.

### FastAPI의 장점

- API 자동 문서화 - `/docs` 를 통해 확인 가능
- 비동기 개발 지원. `await`, `async` 문법 제공 및 uvicorn을 통한 wsgi 테스트 서버 구동 편리
    - background task 지원
- DB layer 없이도 test 가능. business logic layer에서의 validation은 pydantic으로 진행
  
> 한 줄 요약: Django에 비해 가볍고 편하다.