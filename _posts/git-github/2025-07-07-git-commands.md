---
title:  "[Git] (내가) 자주 쓰는 git 명령어 모음"

categories:
  - Git & Github
tags:
  - git
  - github
permalink: /git-github/:title/
---

### branch state 동기화
```
git fetch --prune
```
- local에서 참조하는 remote branch 중 유효하지 않은 것들을 지운다.

### branch 만들기
```bash
git branch BRANCH_NAME
# or git checkout -b BRANCH_NAME
```

### branch 없애기
```bash
git branch -D BRANCH_NAME
```

### PR 가져오기
```bash
git fetch origin pull/ID/head:BRANCH_NAME
```

### 원격 branch 가져오기

```bash
git checkout REMOTE_BRANCH_NAME
```

### 특정 파일 untrack 시키기
```bash
git rm -r --cached [filename]
# 예: git rm -r --cached Gemfile.lock
```

### commit 무르기
```bash
git reset --soft HEAD~1
```
- `--hard` option을 주면 reset 대상 commit들에 포함되었던 변경사항들이 그냥 날아간다. 반면 `--soft` option을 주면 staged 상태로 남아있다. `--hard`는 웬만하면 하지 말자.

### main branch 변경 사항을 특정 branch에 반영
```bash
git merge origin BRANCH_NAME
```
