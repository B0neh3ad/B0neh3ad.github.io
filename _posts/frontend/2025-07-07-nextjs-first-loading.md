---
title:  "[Next.js] 첫 로딩 시 DOM 요소가 참조되지 않는 문제"

categories:
  - Frontend
tags:
  - Next.js
---

### 문제 상황

피켓이 있는 슬라이더 UI를 개발해야 했다. 이때 피켓은 슬라이더의 핸들을 따라 움직여야 했는데, 구체적인 정책은 다음과 같다.

- 핸들이 1개인 슬라이더: 피켓의 중앙과 핸들의 중앙이 동일선상에 위치
- 핸들이 2개인 슬라이더: 피켓의 중앙과 두 핸들의 가운데가 동일선상에 위치
- 피켓의 몸통은 슬라이더의 track 범위를 벗어나서 위치하면 안 됨
- 피켓의 꼬리는 항상 위에서 말한 위치에 있어야 함.
(즉, 양끝에서는 피켓의 몸통은 멈춰있고 꼬리만 움직이는 경우도 발생 가능)

### 시도

피켓에 적힌 텍스트 길이가 가변적이었기 때문에, 정확한 구현을 위해서는 이동할 때마다 피켓 몸통의 너비를 참조하여 위치를 계산해야만 했다. 이를 위해 `useRef` 로 피켓에 대응하는 DOM 요소를 참조하고, 해당 요소의 `width` 값을 담는 state를 만들었다. 그런데, 첫 로딩 시에는 피켓이 움직이지 않고 꼭 새로고침을 해야만 제대로 돌아가는 문제가 생겼다.

원인은 `useRef` 는 렌더링 여부와 관계없이 동작한다는 점이었다.

> **gpt**) `ref.current` 프로퍼티를 변경해도 React는 컴포넌트를 다시 렌더링하지 않습니다. ref는 일반 JavaScript 객체이기 때문에 React는 사용자가 언제 변경했는지 알지 못합니다.
> 

DOM 요소가 로딩되기 전엔 `useRef` 가 반환하는 reference가 초기값(NULL 등)으로 세팅되는데, 로딩된 이후에도 여전히 state가 갱신되지 않아 문제가 생긴 것이다. 따라서 DOM 요소가 로딩된 뒤 state를 갱신하는 로직이 필요했다.

일단 `useEffect` 를 이용해 initial render 이후 state를 갱신해보았다.

```tsx
  const picketRef = useRef<HTMLDivElement>(null);
  const sliderRef = useRef<HTMLDivElement>(null);
  const [picketWidth, setPicketWidth] = useState(0);
  const [sliderWidth, setSliderWidth] = useState(0);

  function updateDimensions() {
    if (sliderRef.current) {
      setSliderWidth(sliderRef.current.clientWidth);
    }    if (picketRef.current) {
      setPicketWidth(picketRef.current.clientWidth);
    }
  }

  useEffect(() => {
    updateDimensions()
  }, []);
```

그러나 첫 로딩 시엔 `useEffect` 의 callback이 trigger되는 시기에도 DOM 요소가 로딩되지 않았고, 여전히 작동하지 않았다.

그 대안으로 `isMount` 같은 state를 갱신하고, 해당 state가 갱신될 때 `updateDimensions`를 호출하는 방법을 생각해봤다. 그러나 state 값이 비동기적으로 갱신되었기 때문에 문제는 여전했다. 

### 문제 해결

> **gpt**) 특히 인터랙션, 애니메이션처럼 DOM이 로드된 후 호출해야 하는 함수가 있을 경우 setTimeout(callback, 0)을 활용할 수 있습니다.
- https://dolphincoding.tistory.com/entry/setTimeoutcallback-0%EC%9D%80-%EB%AC%B4%EC%97%87%EC%9D%84-%EC%9D%98%EB%AF%B8%ED%95%A0%EA%B9%8C*
> 

`setTimeout(callback, 0)` 을 활용하면, 특정 함수를 DOM이 로드된 후 호출할 수 있다! 이걸 넣으니 의도한 대로 첫 로딩 시에도 피켓이 핸들을 따라 움직여줬다!

보다 정확한 positioning을 위해, `resize` event, slider와 연결된 state의 값 변경 등이 일어날 때도 `updateDimension`을 호출했다. 그렇게 원하는 바를 정확히 구현한 최종 코드가 완성되었다.

> [참고 자료] [WSL 2, 안드로이드 개발 환경 구성하기](https://jsonobject.tistory.com/635)