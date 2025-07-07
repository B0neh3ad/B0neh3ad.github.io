---
title:  "[Redux] Redux가 뭐임?"

categories:
  - Frontend
tags:
  - react
---

React 프로젝트 공부하다보니 Redux라는 놈이 자꾸 튀어나와서 정리하기로 했다.

### Redux?

- (React 기준) **state 보관함**이다.
- Node.js 라이브러리이므로, 꼭 React에 국한되어서 쓸 필요는 없다. Component 여러 개 조합해서 만드는 js 기반 웹 애플리케이션이면 상관없다.

### State를 왜 따로 보관?

1. **props로 전달하기 번거로움**
- Component 간 state를 넘겨줄 때 props 문법을 쓰는데, Component가 많아지고 중첩되면 귀찮고 힘들어진다. (전달.. 전달.. 전달.. 전달…)
이럴 때 Redux로 state 보관함(`store`)을 만들면 어디서든 편하게 가져다 쓸 수 있다.
- 예) user 관련 데이터
2. **state 관리 편함**
- 기존에는 setState 함수에 component들이 직접 접근(혹은 handler 함수 이용)해서 값을 이리저리 바꿨다. 그러다 버그 터지면 어디서 터졌는지 찾기 어렵다.
- Redux는 state 값을 바꿔주는 일종의 api(`action`)를 만들 수 있게 해준다. 그럼 component들은 얘들을 거쳐서 값을 바꾼다. 버그 터지면 api들 모아둔 곳 가서 살펴보기만 하면 된다.

### 그래서 언제 쓰면 좋은가

> 여러 Component에서, 자주 사용하는 데이터(state)가 있을 때
> 

기존에 react의 context로 관리하던 것들이 대표적인 예이다.

### 어떻게 돌아감

1. **값 수정**

Redux를 이용해서 state 값을 바꿀 때, action → reducer → store 순으로 데이터(를 바꾸겠다는 신호)가 흘러간다.

- `action`: 값을 어떻게 바꿀지 적어놓은 객체
- `dispatch`:  action을 reducer에 전달해주는 함수
- `reducer`: dispatch를 통해 전달받은 action을 살펴보고 store에 저장된 값을 바꿔준다.
- `store`: state 값 저장소

> *즉, component가 `action`이라는 주문서를 `dispatch`를 통해 `reducer`에 보내면 걔가 그걸 읽고 `store`에 있는 값을 바꾼다.*
> 
2. **값 접근**

`useSelector()` 라는 놈으로 값을 꺼내온다.