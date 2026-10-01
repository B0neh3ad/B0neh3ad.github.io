# 디자인 템플릿

블로그는 지금 **⑲ 고요(`calm`)** 디자인을 쓰고 있어요. 이 폴더에는 최종 후보였던 나머지 두 디자인이 보관돼 있어요.
폴더 이름이 `_`로 시작해서 Jekyll 빌드에는 포함되지 않아요.

| 디자인 | 폴더 | 특징 |
|---|---|---|
| ⑨ 산책 | [`walk/`](walk/) | 세이지 그린, 고운돋움 제목. 홈 상단 배너 사진 위에 소개 문구 한 줄, 글 목록에 날짜 배지 |
| ⑮ 하루의 빛 | [`daylight/`](daylight/) | 방문자의 현지 시각(아침·오후·저녁·밤)에 따라 머리 사진과 포인트 색이 바뀜 |

각 폴더의 `preview.jpg`에서 홈·글 페이지(데스크톱)와 모바일 홈을 볼 수 있어요.

## 구조

세 디자인은 레이아웃과 include를 함께 쓰고, 디자인마다 다른 건 세 가지뿐이에요.

- CSS 한 파일: `walk/walk.css`, `daylight/daylight.css` (공통 스타일은 `assets/css/redesign/base.css`)
- 분위기 사진: `*/images/*.jpg`
- `_config.yml`의 `design:` 값과 `redesign:` 아래 사진 경로 (세 디자인 경로가 모두 이미 들어 있어요)

디자인별 분기는 `_includes/rd-top.html`(머리 부분), `_includes/rd-head.html`(하루의 빛 시간대 스크립트),
`_layouts/single.html`·`archive.html`(제목 위치)에 남겨 뒀어요. 템플릿을 다시 쓰려면 이 분기를 지우면 안 돼요.

## 적용하기

```bash
_design-templates/apply.sh walk
```

```bash
bundle exec jekyll serve
```

`apply.sh`는 CSS와 사진을 `assets/` 아래로 복사하고 `_config.yml`의 `design:` 값을 바꿔요. 다시 고요로 돌아가려면 `apply.sh calm`을 실행하면 돼요.
이전 디자인의 CSS·사진 파일은 지우지 않으니, 배포 용량을 줄이고 싶으면 쓰지 않는 파일을 직접 지우면 돼요.

하루의 빛은 주소 끝에 `?time=morning`, `afternoon`, `evening`, `night`를 붙이면 시간대별 화면을 미리 볼 수 있어요.

## 사진

분위기 사진은 모두 Unsplash에서 받았어요 (Unsplash License, 무료 사용 가능). 직접 찍은 사진으로 바꾸려면 같은 파일 이름으로 덮어쓰거나 `_config.yml`의 경로를 바꾸면 돼요.
