---
title:  "`useReducer()` in React"

categories:
  - Frontend
tags:
  - React.js
---

### 공부하는 이유

교내 식단 제공 앱의 개발 팀에 들어갔는데, 코드에서 `context`와 `useReducer()` 를 함께 이용해서 전역 상태를 관리하고 있길래 공부하게 되었다.

> 참고: [useReducer – React](https://react.dev/reference/react/useReducer#usereducer)

### Context만 썼을 때 문제

각각의 전역 상태 값들을 관리하기 위한 handler를 따로따로 만들어서 내보내줘야 한다. 매우 귀찮음.

### useReducer 쓰면 좋은 거

reducer라는 함수에 handler를 전부 뭉쳐놓고 
```
const [state, dispatch] = useReducer(reducer, initialArg)
```
이렇게 갖다 쓸 때 `dispatch`를 이용해서 그 handler들을 골라 쓸 수 있다!
```
dispatch({ type: 'SET_~~~' })
```
요렇게 `action` 객체(`{ type: 'SET_~~~' }`)를 인자로 `dispatch`에 넘겨주고, reducer 내에서 `switch (action.type)` 해서 고르면 된다.