---
title:  "[Github pages, Ruby] bundle exec jekyll serve"

categories:
  - Github pages
tags:
  - github pages
  - Ruby
permalink: /github-pages/:title/
---

- `bundle exec [command]`: command 실행 시 Gemfile 내 gem을 모두 require할 수 있도록 만든다
    <https://bundler.io/v2.4/man/bundle-exec.1.html>
- `jekyll serve`: 소스 파일이 변경될 때마다 사이트를 build하고 로컬에서 serve하도록 하는 명령어
    <https://jekyllrb.com/docs/usage/>
- 결론: jekyll을 이용하여 사이트를 로컬에서 serve하게 하는데, gem dependency 문제가 안 생기도록 알아서 처리한다.

> ⚠️ 주의: 위 command는 반드시 serve하려는 사이트의 **root** directory에서 실행해야 한다. source가 그쪽으로 설정되기 때문이다.
