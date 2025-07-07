---
title:  "[Spring Test] Test events were not received"

categories:
  - Backend
tags:
  - springboot
  - Java
---

### 실행환경

- Java 17.0.9
- springboot 3.1.2
- gradle 8.1.1
- Intellij IDEA

### 문제

![Untitled](/assets/images/test-events-were-1.png)

![Untitled](/assets/images/test-events-were-2.png)

Test class를 실행시켰더니 ‘Run’ window에 ‘Test events were not received’라고 뜨며 테스트가 전혀 실행되지 않았다. 이는 class 내 각 function을 실행시켰을 때도 마찬가지였다.

### 해결 과정

일단 저 userService에 그어진 빨간 줄이 의심스러워 찾아봤더니 대충 Autowire할 bean을 못 찾겠다는 내용이었다. 하지만 구글링해보니 IDEA의 버그라는 답변이 많았고, 실제로 몇 가지 해결방안을 적용해보았지만 변화는 없었다.

그래서 있는 그대로 구글링 한 뒤, [이 글](https://balhae79.tistory.com/387)에서 말한 방법을 적용해봤다.

Settings → ‘Gradle’ 검색 → Run tests using을 `Gradle (Default)`에서 `Intellij IDEA`로 바꾸니 바로 잘 돌아갔다.

![Untitled](/assets/images/test-events-were-3.png)

### 결론

아마 설정을 바꾸기 전에는 Intellij IDEA가 Test class 인식을 못해서 test를 못 돌린 게 아닐까.. 생각한다.