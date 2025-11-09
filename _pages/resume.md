---
title: "Resume"
permalink: /resume/
layout: resume
---

# **김진수**   
([mail](mailto:js1044k@gmail.com), [github](http://github.com/B0neh3ad), [github blog](http://B0neh3ad.github.io), [velog](https://velog.io/@b0neh3ad/posts), [linkedin](https://www.linkedin.com/in/%EC%A7%84%EC%88%98-%EA%B9%80-b769832a1/))

- 기술에 앞서 문제 해결을, 문제 해결에 앞서 문제의 의미를 고민하고자 합니다.
- 소통과 협업을 통해 성장하여 더 나은 결과물을 만들고자 노력합니다.
- 딥러닝과 웹 개발에 관심이 많습니다.

## Education

**서울대학교 컴퓨터공학부** 3학년 재학, 2021. 03 - 2027. 02 (예정)
- 전체 평점 **4.05** / 4.3, 전공 평점 **4.1** / 4.3 (수강 학점: 100)

## Project Experience

### 🎧 국방 AI 경진대회 (음성 STT 모델)

2023.08

<div class="project-links">
📎 <a href="https://maicon.kr/rokafnet/">발표자료</a><br>
📎 <a href="https://velog.io/@b0neh3ad/2023-%EA%B5%AD%EB%B0%A9-AI-%EA%B2%BD%EC%A7%84%EB%8C%80%ED%9A%8C-%ED%9B%84%EA%B8%B0-2-%EB%B3%B8%EC%84%A0-%EC%A4%80%EB%B9%84%EB%8C%80%ED%9A%8C-%EB%8B%B9%EC%9D%BC">대회 후기</a><br>
📎 <a href="https://juvenile-lifter-a77.notion.site/f85c0389cb8e40b89bb4ac0c8c088c78">실험 관리 페이지</a>
</div>

**[프로젝트 목표]**  
☑️ 잡음이 심한 한국어 음성 데이터에 대한 **STT 모델 성능 향상**  
☑️ 2박 3일 내 실험 완료 및 GPU 장애 상황 대응

**[진행 사항]**  
➡️ **Whisper-tiny**를 baseline으로 선택 후 **Whisper-small(244M)**으로 확장  
➡️ GPU 장애 기간 동안 **데이터 분석 및 전처리 코드 개발**로 효율 극대화  
➡️ **noisereduce 기반 denoising** 및 **rule-based 전사 오류 보정** 적용  
➡️ trailing word 제거, 철자 교정 등 후처리로 작은 모델에서도 정확도 향상

**[결과]**  
✅ **전체 2위 수상**  
✅ (1 – CER) 기준: **Public 0.8661 / Private 0.8636** 달성

---

### 🧠 FastMRI Challenge (MRI 재구성)

2024.06 - 2024.08

<div class="project-links">
📎 Github: <a href="https://github.com/B0neh3ad/FastMRI_2024_shasha">Repository</a><br>
📎 설명 영상: <a href="https://www.youtube.com/watch?v=ho63rjf3XVs">YouTube</a>
</div>

**[프로젝트 목표]**  
☑️ Undersampled k-space 데이터로부터 **고품질 MRI 이미지 재구성**  
☑️ 다양한 가속 인자에 대한 **End-to-End 딥러닝 모델** 개발

**[진행 사항]**  
➡️ **U-Net 기반 reconstruction network** 구현 및 학습  
➡️ **Multi-coil 데이터 처리** 및 **SENSE reconstruction** 적용  
➡️ **SSIM, PSNR 등 다양한 loss function** 실험  
➡️ **Data augmentation** 및 **ensemble 기법** 적용

**[결과]**  
✅ **전체 4위 수상**  
✅ 실제 임상에서 활용 가능한 품질의 MRI 재구성 모델 개발

---

### 🍽️ 식샤 - 서울대학교 식단 제공 서비스

2024.03 - 현재

<div class="project-links">
📎 웹사이트: <a href="http://siksha.wafflestudio.com/">siksha.wafflestudio.com</a>
</div>

**[프로젝트 목표]**  
☑️ 서울대학교 **전체 식당 메뉴 정보** 통합 제공  
☑️ 직관적이고 **사용자 친화적인 웹 인터페이스** 구축

**[담당 역할]**  
➡️ **Frontend Part Leader** (2025.02 - 현재)  
➡️ **Next.js 기반 웹 프론트엔드** 개발 및 관리  
➡️ **20명 이상의 개발자 및 디자이너**와 협업  
➡️ **반응형 디자인** 및 **성능 최적화** 담당

**[결과]**  
✅ 서울대학교 학생들의 **일일 활성 사용자 수천 명** 달성  
✅ 안정적인 서비스 운영 및 지속적인 기능 개선

---

### 📱 발달장애인을 위한 모바일 키보드

2022.01 - 2022.10

**[프로젝트 목표]**  
☑️ **AAC(보완대체의사소통)** 기반 키보드 앱 개발  
☑️ **그림 인식 및 음성 기능**만으로 사용 가능한 UI 설계

**[진행 사항]**  
➡️ **Android 네이티브** 기반 키보드 애플리케이션 개발  
➡️ **심볼릭 그림 라이브러리** 구축 및 **음성 피드백** 시스템 구현  
➡️ **사용자 테스트** 및 **접근성 개선** 작업  
➡️ **특수교육 전문가**와의 협업을 통한 UI/UX 설계

**[결과]**  
✅ **SNU Social Responsibility PLUS+ Challenge 2위** 수상  
✅ 실제 발달장애인 커뮤니티에서의 **긍정적 사용성 평가** 확보

## Awards & Honors

**Awards**

2024.09, **4th place**, SNU FastMRI Challenge, *SNU*  
2023.12, **2nd place**, MAICON(Military AI Competition), *Ministry of National Defense, Republic of Korea*   
2022.10, **2nd place**, SNU Social Resposibility PLUS+ Challenge, *SNU*  

*Other participation in competitions*  
2024.11 **19th place (High Honor)** / 88 teams, ICPC 2024 Seoul Regional

## Extracurricular Activity

*WaffleStudio* - **Student Club for Web & Mobile App Development**  
Sep. 2021 - Now
- Learned Andriod & Frontend Web Application Development

*VESS* - **Student Club for Appropriate Technology**  
Mar. 2021 - Feb. 2022
- Learned & studied various ATs(Appropriate Technologies)
- looking for the ways how to utilize technical knowledge for creating and improving AT products

## Teaching

Contest Coordinator / May. 2025 - Aug. 2025 (Expected)
- Organizing and managing 2025 [SNU FastMRI Challenge](https://fastmri.snu.ac.kr/), with ~280 participants
- Performed various tasks which include writing baseline code, processing and distributing MRI dataset, and managing GPU servers

Teaching Assistant (Tutor) / 2024-1, 2024-2 semesters
Basic Computing: First Adventures in Computing
- Answered to students' questions for basic of web crawling, data analysis & visualization using Python

## Skills

**Programming** C/C++, Python, Java  
**Deep Learning** Tensorflow, Pytorch, Huggingface  
**Web Development** React.js Next.js Django