---
title:  "[React Native] 개발환경 세팅기"

categories:
  - Android
tags:
  - React Native
---

### 개발 환경
- OS: Windows 11 + WSL2 Ubuntu LTS 22.04
- java sdk version: 17

### 환경 세팅 과정
웹 프론트 라이브러리인 React와 달리, 앱 개발용 라이브러리인 RN은 앱이 제대로 돌아가는지 확인하기 위해 에뮬레이터나 실제 스마트폰가 필요하다. 에뮬레이터를 돌리려면 Android Studio를 설치해야 한다. 그러나, 실제 기기를 이용한다면 react처럼 vscode만으로 충분히 개발할 수 있다.

뿐만 아니라 내 노트북의 메모리가 16GB로 다소 작기도 하고, wsl 개발 환경에서 에뮬레이터를 돌리는 건 꽤 까다로운 일이었기 때문에 기기를 연결하기로 했다. 그 과정은 아래와 같다.

1. 스마트폰을 컴퓨터에 연결
2. windows 11 내에서 스마트폰의 리소스를 이용하는 모든 프로그램을 종료
(android studio 포함)
3. cmd를 열고 아래 명령어를 입력

```bash
# bus id 확인용
> usbipd list

# 자신의 장치에 대응되는 bus id에 대하여 attach
> usbipd attach --wsl=Ubuntu-22.04 --busid={busid}

# WSL 2에서 연결된 안드로이드 기기 확인
> wsl
$ adb devices
List of devices attached
{device ID}     device
```

4. vscode를 열고 루트 디렉토리에서 `npm run start` 를 입력하여 개발용 서버를 오픈
5. 동일 디렉토리에서 `npm run android` 를 입력

이러면 잘 돌아간다~