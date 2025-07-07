---
title:  "[Git] fatal: Authentication failed for ‘…’"

categories:
  - Git & Github
tags:
  - git
  - github
permalink: /git-github/:title/
---

### 문제

terminal에서 바로 push를 하기 위해 `git push origin --all` 을 쳤더니 이런다.

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/d4dd3f32-8788-4a2c-8293-3dd116d026c5/b03a2ba2-1e5f-4202-a87f-de7f5ac840b0/Untitled.png)

username, 비번 치래서 쳤더니 왜 말썽인지;;

### 해결

찾아보니 인제 [비밀번호 인증을 지원하지 않으므로](https://dev.to/shafia/support-for-password-authentication-was-removed-please-use-a-personal-access-token-instead-4nbk) 비밀번호 란에 토큰을 대신 입력해야 인증된다고 한다. 그럴거면 처음부터 토큰 입력하라고 말하던가…
