---
title:  "[CSS] flex-wrap 속성"

categories:
  - Frontend
tags:
  - css
---

> 왜 이걸 진작에 안 썼을까…
> 

children의 width 총합이 parent의 width보다 클 때, 줄바꿈을 할지 말지 여부를 결정하는 속성이다.

flex container 내의 children이 모두 가변 width를 갖는다고 하자. 이때, 특정 child의 width가 얼마 이하일 때 줄바꿈을 하고 싶다면, parent에 `flex-wrap: wrap` 을 걸고 해당 child에 `min-width` 를 걸어 overflow를 일으키자. 이렇게 하면 해결된다!

### 문제 상황

아래와 같은 줄바꿈 정책을 구현해야 했다.

![image.png](/assets/images/css-flex-wrap-1.png)

### 시도

1번 정책을 구현하기 위해서는 parent container의 `flex-direction` 속성을 child element의 `width` 값에 따라 바꿔줘야 한다고 생각했었다. 그래서 `useRef`를 활용하여 참조해보려 했으나…

> 372px일 때 줄바꿈 \
> → 줄바꿈되면서 372px보다 커짐 \
> → 원래대로 돌아감 \
> → 다시 372px 이하가 되어 줄바꿈
> 

이 무한반복되었다. 이를 막기 위해 `fiex-direction` 속성값을 state로 빼서 구현하려 했으나, state 값은 바로바로 업데이트되지 않으므로 무용지물이었다.

`useRef` 를 이용하는 건 포기하고, 대신 CSS의 여러 속성을 활용하려 했다.

- parent container를 `grid` 로 만들기: 줄바꿈 정책을 고려하지 않으면 `grid-template-column: max-content minmax(372px, 1fr)` 로 충분했다. 그러나 줄바꿈을 하려면 `auto-fill` 같은 속성값을 적용해야 했는데, column별로 서로 다른 template을 갖는 경우 이를 적용할 수 없었다. (실패)

### 해결 방법

챗지피티를 갈군 결과 `flex-wrap` 이라는 속성을 알아냈다.

> [CSS](https://developer.mozilla.org/ko/docs/Web/CSS) **`flex-wrap`** property는 `flex-item` 요소들이 강제로 한줄에 배치되게 할 것인지, 또는 가능한 영역 내에서 벗어나지 않고 여러행으로 나누어 표현 할 것인지 결정하는 속성입니다. 만약 영역 내에서 벗어나지 못하게 설정한다면, 동시에 요소의 방향 축을 결정할 수 있습니다.
> 

`flex-wrap: wrap` 을 적용하면, children elements들이 parent container를 벗어날 경우 줄바꿈을 한다. 그러므로 우측 child의 `min-width` 를 잘 설정해주면 원하는 정책을 구현할 수 있었다. 구현 결과물은 아래와 같다.

```tsx
const ParentContainer = styled.div`
  display: flex;
  flex-wrap: wrap;
  width: 100%;
  gap: 8px;
  @media (max-width: 768px) {
    gap: 11px;
  }`;

const Left = styled.div`
  display: flex;
  gap: 8px;
  @media (max-width: 1000px) {
    gap: 6px;
  }`;

const Right = styled.div`
  display: flex;
  flex: 1 1 auto;
  min-width: 372px;
  flex-direction: row;
  align-self: stretch;
  justify-content: space-between;
  @media (min-width: 1001px) {
    flex-grow: 1;
  }
  @media (max-width: 900px) {
    min-width: 100%;
  }
  @media (max-width: 768px) {
    justify-content: space-between;
  }`;
```