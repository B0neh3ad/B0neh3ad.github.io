---
title:  "[React] Coding Convention"

categories:
  - Frontend
tags:
  - react
---

> *In React, it’s conventional to use `onSomething` names for props which represent events and `handleSomething` for the function definitions which handle those events.*
> 

- `onSomething`: events 나타내는 props
- `handleSomething`: events를 실제로 다루는 function

그래서
```js
onSomething = {
    () => { handleSomething(args) }
}
```
형태로 많이 쓴다.

> state의 값을 바꿀 때는 immutable하게 가자