---
title:  "[Django] Pycharm+PostgreSQL+docker+wsl2 setting"

categories:
  - Backend
tags:
  - Django
  - Pycharm
  - PostgreSQL
  - docker
  - wsl
---

### 1. Docker & PostgreSQL 설정

1. [docker 설치](https://www.docker.com/products/docker-desktop/) 및 [postgres image 다운로드](https://hevodata.com/learn/docker-postgresql/#3steps)
2. container 만들기

```bash
docker run --name postgresql -e POSTGRES_USER=myusername -e POSTGRES_PASSWORD=mypassword -p 5432:5432 -v /data:/var/lib/postgresql/data -d postgres
```

3. database 만들기

> ⚠️ `POSTGRES_USER`와 동일한 이름의 Database가 생성되어 있을텐데, 이를 지우면 해당 user로 로그인할 수 없게 된다. 절대! 지우지 말 것.


```bash
# docker container 진입
$ docker exec -it postgresql bash

# postgresql 실행
root@~~:\#  psql -h localhost -U myusername
psql (16.1 (Debian 16.1-1.pgdg120+1))
Type "help" for help.

# Database 생성
myusername=\# create database <Database 이름>;
```

4. 가상환경 생성 및 Django 프로젝트 생성

```bash
$ python -m venv venv
$ source venv/bin/activate
(venv) $ pip install django djangorestframework
(venv) $ pip install psycopg2-binary # python 환경이므로 psycopg2 말고 psycopg2-binary 설치
(venv) $ django-admin startproject <project 이름>
(venv) $ mv venv <project 이름>/venv
```

### 2. Pycharm 설정

1. Pycharm 접속 후 project 폴더 열기
2. python Interpreter를 venv 환경으로 설정. [새로 생성하는 과정](https://www.jetbrains.com/help/pycharm/using-wsl-as-a-remote-interpreter.html#create-wsl-interpreter)과 동일하게 하되 환경 생성 directory에 이미 존재하는 venv directory를 지정
3. Database 연동. pycharm 우측 Database 메뉴에서 + → Data Source → PostgreSQL 클릭 후 username, password, database 설정. (Host, Port는 기본값으로 설정되어 있음)

### 3. Django Project 설정

1. Django project 내 `settings.py`에서 Database 관련 설정 작성

```bash
# ex)

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': '<NAME>',
        'USER': '<USERNAME>',
        'PASSWORD': '<PASSWORD>',
        'HOST': 'localhost',
        'PORT': 5432,
    }
}
```

2. Migrate 진행
- pycharm 내 terminal에서 작업하는 경우 venv activate되어 있는지 확인

```bash
**(venv) $ python manage.py migrate**
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, sessions
Running migrations:
  Applying contenttypes.0001_initial... OK
  Applying auth.0001_initial... OK
  Applying admin.0001_initial... OK
  Applying admin.0002_logentry_remove_auto_add... OK
  Applying admin.0003_logentry_add_action_flag_choices... OK
  Applying contenttypes.0002_remove_content_type_name... OK
  Applying auth.0002_alter_permission_name_max_length... OK
  Applying auth.0003_alter_user_email_max_length... OK
  Applying auth.0004_alter_user_username_opts... OK
  Applying auth.0005_alter_user_last_login_null... OK
  Applying auth.0006_require_contenttypes_0002... OK
  Applying auth.0007_alter_validators_add_error_messages... OK
  Applying auth.0008_alter_user_username_max_length... OK
  Applying auth.0009_alter_user_last_name_max_length... OK
  Applying auth.0010_alter_group_name_max_length... OK
  Applying auth.0011_update_proxy_permissions... OK
  Applying auth.0012_alter_user_first_name_max_length... OK
  Applying sessions.0001_initial... OK
```

끝~~