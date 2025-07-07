---
title:  "[Vite + React] Vite React에서 dotenv 사용하기"

categories:
  - Frontend
tags:
  - vite
  - React.js
---

- 각 환경변수명 앞에 `VITE_` 붙이기
- `process.env` 말고 `import.meta.env` 사용하기
- `NAME=VALUE` 형식 대신 `NAME = "VALUE"` 형식 써도 무방

> 출처) [TIL230316📑React) VITE에서 .env 환경변수 사용](https://velog.io/@tmdgp0212/TIL230316-using-.env-on-vite)