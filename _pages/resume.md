---
title: "김진수 | 포트폴리오"
permalink: /resume/
layout: resume
---

# **김진수**   
[mail](mailto:js1044k@gmail.com) [github](http://github.com/B0neh3ad) [github blog](http://B0neh3ad.github.io) [velog](https://velog.io/@b0neh3ad/posts) [linkedin](https://www.linkedin.com/in/%EC%A7%84%EC%88%98-%EA%B9%80-b769832a1/)

- 기술에 앞서 문제 해결을, 문제 해결에 앞서 문제의 의미를 고민하고자 합니다.
- 소통과 협업을 통해 성장하여 더 나은 결과물을 만들고자 노력합니다.
- 딥러닝과 웹 개발에 관심이 많습니다.

## 학력

서울대학교 컴퓨터공학부, 2021. 03 - 2027. 02 (예정)
- 3학년 재학
- 전체 평점 **4.05** / 4.3, 전공 평점 **4.1** / 4.3 (수강 학점: 100)

## 프로젝트 경험

**ML/DL 관련**

### '딥러닝의 기초' 과목 프로젝트 (ARC-AGI Challenge)

2025.05 – 2025.06

<div class="project-links">
<a href="https://github.com/b0neh3ad/dl-team14">📎 Github</a>
<a href="https://github.com/B0neh3ad/dl-team14/blob/final-submission/team14_project_report.pdf">📎 Report</a>
</div>

**[문제 상황]**
- **ARC-AGI 데이터셋**에 대한 모델 추론 정확도 향상
- 제한된 GPU 및 **추론 시간 제약(100분)** 하에서 효율적 추론 수행

**[진행 사항]**
- Kaggle ‘ARC Prize 2024’ 수상 솔루션을 strong baseline으로 활용
- **추론 시간 최적화**: TTT(Test-time Training) 제거, 데이터 증강 축소
- **메모리 효율화**: LoRA 기반 **PEFT** 적용 및 **4-bit Quantization** 수행
- **WandB, Notion, GitHub** 기반 협업 및 실험 관리 환경 구축
- Baseline 코드 전반 수정 및 실험 계획 총괄 담당

**[결과]**
- **35개 팀 중 상위 5팀 선정**

---

### FastMRI Challenge

2024.06 - 2024.08

<div class="project-links">
<a href="https://github.com/B0neh3ad/FastMRI_2024_shasha">📎 Github</a>
<a href="https://www.youtube.com/watch?v=ho63rjf3XVs">📎 발표 영상</a>
</div>

**[문제 상황]**  
- 가속 촬영된 MRI 뇌 이미지를 고화질로 복원
- GPU 메모리(16GB) 및 추론 시간 제약
- 제한된 데이터 양으로 인한 학습 효율 문제

**[진행 사항]**  
- MRI Reconstruction SOTA 모델인 [E2E VarNet](https://arxiv.org/abs/2004.06688)을 기반으로 실험 설계
- k-space / image 도메인 증강 병행으로 데이터 부족 문제 해결
    - 기존 [k-space 증강 기법](https://github.com/z-fabian/MRAugment)에 밝기, 대비, mask augmentation 추가
    - [CutMixUp](https://arxiv.org/abs/2004.00448) 기법으로 이미지 데이터 다양성 확보
- 모델 규모 확장 대신 dataset 분석 및 효율적인 전/후처리에 집중
- WandB / Notion을 활용한 실험 관리 및 팀 협업 체계 구축

**[결과]**  
- **전체 4위 수상**  
- Public dataset 기준 SSIM 0.9803 달성

---

### 국방 AI 경진대회

2023.11.30 - 2023.12.02

<div class="project-links">
<a href="https://maicon.kr/rokafnet/">📎 발표자료</a>
<a href="https://velog.io/@b0neh3ad/2023-%EA%B5%AD%EB%B0%A9-AI-%EA%B2%BD%EC%A7%84%EB%8C%80%ED%9A%8C-%ED%9B%84%EA%B8%B0-2-%EB%B3%B8%EC%84%A0-%EC%A4%80%EB%B9%84%EB%8C%80%ED%9A%8C-%EB%8B%B9%EC%9D%BC">📎 대회 후기</a>
<a href="https://juvenile-lifter-a77.notion.site/f85c0389cb8e40b89bb4ac0c8c088c78">📎 실험 관리 페이지</a>
</div>

**[문제 상황]**  
- 잡음이 심한 한국어 음성 데이터에 대한 **STT 모델 학습**  
- 짧은 개발 시간(2박 3일), 대회 첫날 GPU 서버 장애 발생

**[진행 사항]**  
- 빠른 실험을 위해 **[Whisper-tiny](https://huggingface.co/openai/whisper-tiny)**를 baseline으로 선택 후 **[Whisper-small](https://huggingface.co/SungBeom/whisper-small-ko)**으로 확장  
- GPU 장애 기간 동안 **데이터 분석 및 전처리 코드 개발**로 낭비 시간 최소화 
- **[noisereduce](https://github.com/timsainb/noisereduce/tree/master) 기반 denoising** 및 **rule-based 전사 오류 보정** 적용  
- trailing word 제거, 철자 교정 등 후처리로 작은 모델에서도 정확도 향상

**[결과]**  
- **전체 2위 수상**  
- Metric(1 – CER): **Public 0.8661 / Private 0.8636** 달성

---

**기타**

### 식샤 - 서울대학교 식단 제공 서비스

2024.03 - 현재

<div class="project-links">
<a href="http://siksha.wafflestudio.com/">📎 웹사이트</a>
</div>

- 서울대학교 전체 식당 메뉴 정보 통합 제공 서비스
- Next.js 기반 웹 프론트엔드 개발 및 관리
- Frontend Part Leader (2025.02 - ), Frontend Part Member (2024.03 - 2025.02)
- **20명 이상의 개발자 및 디자이너**와 협업  
- **반응형 디자인** 및 **성능 최적화** 담당

---

### 발달장애인을 위한 모바일 키보드 앱 제작

2022.01 - 2022.10
  
<div class="project-links">
<a href="http://siksha.wafflestudio.com/">📎 Github</a>
</div>

- **Android 네이티브** 기반 **AAC(보완대체의사소통)** 키보드 앱 개발  
- 언어치료 AAC 센터 '[사람과 소통](https://www.hanspeak.com/)' 과의 협업: AAC 이미지 사용 권리 확보 및 피드백
- SNU 사회공헌PLUS+ 경진대회 **2위** 수상 

## 수상내역

- 2024.11, ICPC 2024 Seoul Regional, 19위 (**High Honor**) / 88팀, ICPC
- 2024.09, SNU FastMRI Challenge, **4위**, 서울대학교
- 2023.12, 국방 AI 경진대회, **2위**, 국방부
- 2022.10, SNU 사회공헌PLUS+ 경진대회, **2위**, 서울대학교

## 기타 활동

### 2025 [SNU FastMRI Challenge](https://fastmri.snu.ac.kr/) 총괄 조교
2025.05 - 2025.08
- 대회 규정 설정 및 280여명의 참가자 관리
- Vessl AI 및 공과대학 정보화지원실과 협업하여 k8s 기반 GPU 컨테이너 관리
- 기존 brain image dataset에 knee image를 추가하여 대회 주제의 범용성을 높임
- 새로운 dataset을 위한 데이터 전처리, 학습 baseline 코드 작성
- 참가자들이 대회 주제와 dataset에 빠르게 익숙해지도록 튜토리얼 notebook(.ipynb) 파일 제작 및 배포
- [Github issues](https://github.com/LISTatSNU/FastMRI_challenge/issues)를 통해 대회 관련 질의응답을 수시로 진행

### 학부생 튜터
2024-1, 2024-2학기 '컴퓨팅 기초: 처음 만나는 컴퓨팅' 과목
- python을 활용한 기초적인 웹 크롤링, 데이터 분석 및 시각화에 대한 수강생들의 질문에 답변
- numpy, pandas, matplotlib, streamlit 활용

### 와플스튜디오 - 서울대학교 웹/앱 개발 동아리
2021.09 - 
- 안드로이드, 프론트엔드(React.js) 웹 개발 학습 및 팀 프로젝트 수행
- 서울대학교 식단 제공 서비스 '식샤' 개발

### VESS - 서울대학교 적정기술 동아리
2021.03 - 2022.02
- 다양한 적정기술 사례 탐구 및 실습
- AAC 키보드 개발 프로젝트 진행

## 기술 스택

<div class="skills-section">
  <div class="skill-category">
    <span class="skill-label">프로그래밍</span>
    <div class="skill-tags">
      <span class="skill-tag">C/C++</span>
      <span class="skill-tag">Python</span>
      <span class="skill-tag">Java</span>
      <span class="skill-tag">Javascript</span>
      <span class="skill-tag">Typescript</span>
    </div>
  </div>
  
  <div class="skill-category">
    <span class="skill-label">ML/DL</span>
    <div class="skill-tags">
      <span class="skill-tag">Tensorflow</span>
      <span class="skill-tag">Pytorch</span>
      <span class="skill-tag">Huggingface</span>
    </div>
  </div>
  
  <div class="skill-category">
    <span class="skill-label">웹 개발</span>
    <div class="skill-tags">
      <span class="skill-tag">React.js</span>
      <span class="skill-tag">Next.js</span>
      <span class="skill-tag">Django</span>
      <span class="skill-tag">FastAPI</span>
    </div>
  </div>
</div>