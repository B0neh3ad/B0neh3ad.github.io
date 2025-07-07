---
title:  "[Python 3.9] backports.zoneinfo 설치 문제"

categories:
  - etc
tags:
  - python
---

### 버그 설명

python 3.9 버전 이상인 경우 `backports.zoneinfo`  module이 잘 설치되지 않는 문제가 있다.

> 참고: [ERROR: Could not build wheels for backports.zoneinfo, which is required to install pyproject.toml-based projects](https://stackoverflow.com/questions/71712258/error-could-not-build-wheels-for-backports-zoneinfo-which-is-required-to-insta)

`backports.zoneinfo` 는 `zoneinfo`  module의 기능을 python 3.9 미만에서도 지원하기 위해 만들어진 모듈이다. 따라서 `zoneinfo` module을 사용 가능한 python 3.9 이상에서는 설치할 이유가 없다.

### 해결 방법

python 3.9 이상에서는 `zoneinfo` 를 쓰자.