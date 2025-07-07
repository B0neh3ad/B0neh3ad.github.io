---
title:  "[AWS Lambda] Next.js에서 dynamic routing을 위한 AWS Lambda 사용법"

categories:
  - Frontend
tags:
  - Next.js
  - AWS Lambda
---

### 사용 이유

Next.js로 웹페이지를 만들던 중, 배포된 페이지에서 동적 라우팅 된 url로 접속 후 새로고침을 하면 404 에러가 뜨는 걸 발견했다. 찾아보니 비슷한 사례가 많았다.

[Dynamic Clean URL shows a 404 error on Reload · vercel next.js · Discussion #11178](https://github.com/vercel/next.js/discussions/11178)

**s3 서버에서 동적 라우팅을 위한 url matching을 못 시키는 게** 근본적인 원인이었다. `menu/[menuId]/index.html` 파일을 `menu/123/` 요청과 matching 시키지 못하여, `menu/123/index.html` 파일이 없다는 오류만 내뱉었던 것이다. 이에 따라 url matching을 수행하는 AWS Lambda function을 만들어, s3 서버와 클라이언트의 중간에서 dynamic routing을 수행하도록 했다.

### 구현 방식

`serverless/index.mjs` 파일에 dynamic routing을 수행하는 js 함수를 만들고, 이를 lambda function으로 올렸다. github actions를 이용하여, 이후 배포 때마다 매번 업데이트 하도록 yml 파일을 작성하였다.

함수의 구체적 기능은 다음과 같다.

- 요청의 url 패턴 분석
- dynamic route가 필요한 url인 경우 s3에서 대응하는 html 파일을 찾아 response 형식으로 return
    - 파일을 찾을 수 없는 경우 404 error를 담아 return
- 그 외(stataic route) 경우 받은 request를 그대로 return

### 결과

잘 된다~