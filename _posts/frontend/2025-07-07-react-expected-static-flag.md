---
title:  "[React] internal react error expected static flag was missing please notify the react team"

categories:
  - Frontend
tags:
  - react.js
---

React hook을 조건부 호출하는 경우, react 내부에 있는 hook tracking system이 정확하게 동작하지 않을 수 있다고 한다. 이에 따라 발생하는 에러이다.

그러니까

```jsx
...
  if (distribution.length !== 5) {
    return null;
  }
  const isMobile = useIsMobile();
...
```

이렇게 쓰지 말고,

이렇게 쓰자.

```jsx
...
  const isMobile = useIsMobile();
  if (distribution.length !== 5) {
    return null;
  }
...
```