---
title:  "[Android Studio] Room cannot verify the data integrity"

toc: true
toc_sticky: true

categories:
  - Android
tags:
  - Kotlin
  - Room DB
  - Migration
---

room DB를 이용해서 앱을 만들 때, DB의 model이나 DAO 함수를 변경하는 경우 간혹 다음과 같은 에러가 뜬다.  

```Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.```

에러를 해결하는 방법에는 2가지가 있다.

1. (에뮬레이터나 해당 역할을 하는 기기에서) 앱을 재설치하거나 데이터를 지운다.
2. 에러에서 알려준대로 DB의 version number를 증가시킨 후 migration 관련 처리를 해준다.

어차피 나 혼자 만들어서 테스트하는 앱이고, 데이터도 그닥 중요하지 않으므로 이번에는 1번을 선택해서 앱을 재설치했다.
