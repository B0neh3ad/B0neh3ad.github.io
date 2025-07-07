---
title:  "[Git] 특정 파일 untrack시키기"

categories:
  - Git & Github
tags:
  - git
  - github
permalink: /git-github/:title/
---

git은 한번 tracking하기 시작한 파일은 .gitignore에 넣는 것만으로 untrack시킬 수 없다. 따라서 commit하기 전에 track하지 말아야 할 파일이 있는지 신중히 살피는 게 중요하지만, 이미 commit해 버린 경우 다음과 같이 untrack 시킬 수 있다.

```bash
git rm -r --cached [filename]
# 예: git rm -r --cached Gemfile.lock
```