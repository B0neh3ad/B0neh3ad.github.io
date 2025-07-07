---
title:  "[Ruby] gem, jekyll, bundler"

categories:
  - Github pages
tags:
  - github pages
  - Ruby
permalink: /github-pages/:title/
---

### gem

- ruby에서 지원하는 패키지 시스템
- 비슷한 예로는 리눅스의 apt, nodejs의 npm, python의 pip가 있다
- <https://ideveloper2.tistory.com/80>

### bundler

- ruby의 의존성 관리 도구. gem 이용 설치 가능

```bash
# 설치
sudo gem install bundler
```

- project 디렉토리 내에서 `bundle` command 실행 시 ruby module(gem)들을 해당 project의 requirements에 맞게 update시킨다.
- <https://www.quora.com/What-does-the-bundle-command-do-in-Linux>

### jekyll

- ruby 기반 **정적** 사이트 생성기. github page를 만들 때 많이 활용된다.

```bash
# 설치
sudo gem install jekyll
```

- `.md` 파일 이용 글 작성할 수 있어 편리하다
- 다양한 jekyll theme이 있어 일일히 사이트를 꾸미지 않아도 된다