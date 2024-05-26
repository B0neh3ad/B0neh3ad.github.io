---
title:  "[Retrofit] GET method로 불러올 때 변수를 url에 추가하기"

categories:
  - Android
tags:
  - Kotlin
  - Retrofit
  - GET
---

Retrofit을 이용해 http 통신을 하는 경우, 아래와 같이 GET method로 data를 가져오곤 한다.

```kotlin
@GET("data/")
    suspend fun loadData(): DataResponse
```

이때 url에 id와 같은 변수를 추가해야 하는 경우, ```@Path```를 이용해서 아래와 같이 처리할 수 있다.

```kotlin
@GET("data/{data_id}/")
    suspend fun loadDataById(
        @Path("data_id") dataId: Int
    ): DataByIdResponse
```

[참고]  
<https://stackoverflow.com/questions/58567053/how-to-add-url-parameter-in-a-retrofit-get-request-in-kotlin>
