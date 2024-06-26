---
title:  "[Room DB] 중복 데이터 없이 DB 초기화하기"

categories:
  - Android
tags:
  - Kotlin
  - Room DB
---

DAO를 이용해 DB와 통신할 때, ```@Insert```를 이용하여 DB에 INSERT Query를 보내는 함수를 만드는 경우가 있다.  
이때 ```onConflict = IGNORE```를 뒤에 붙여주면 중복 데이터 없이 DB를 초기화할 수 있다.  

이는 앱 실행 중 네트워크 등을 이용하여 DB를 새로고침 할 때 기존의 데이터가 중복되어 쌓이는 것을 막을 수 있다.

```kotlin
@Insert(onConflict = IGNORE)
    suspend fun insertData(data: Data)
```
