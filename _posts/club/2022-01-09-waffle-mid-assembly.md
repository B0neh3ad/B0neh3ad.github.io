---
title:  "[Wafflestudio] 중간 총회가 끝나고..."

toc: true
toc_sticky: true

categories:
  - Club
tags:
  - WaffleStudio
  - Android
---

> 드디어 어제, 중간 총회가 끝났다

총회 전날부터 이어진 무지성 코딩... commit하고 push하고 PR하고 pull하고...  
난 정말 한 게 없다고 생각했는데, 팀원 분들(특히 안드 같이 하시는 분)께서 정말 많은 작업을 해주셔서 예상보다 완성도 있는 모습으로 중간총회에 앱을 발표할 수 있었다. 이번 토이 프로젝트의 목적은 클론 코딩이었기 때문에, 우리 팀은 Instagram을 Cloning한 Wafflestagram을 발표했다. PM 분께는 나쁘지 않은 피드백을 받았지만, 발표 후 무수히 쏟아지는 버그 제보 issue를 보며 아직 할 일이 많음을 실감했다.  

한편 이번 프로젝트를 진행하며 끊임없이 디버깅을 했는데, 이 과정에서 정말 많은 것들을 배울 수 있었다. 지금 생각나는 것들은 아래와 같다.  

>+ Firebase를 이용한 Facebook, Google Login
>+ Google을 통해 받은 idToken을 서버에서 직접 Authenticate한 뒤 이에 대응하는 JWT Token을 생성하는 방법
>+ OkHttp를 이용하여 HTTP 통신 시 Authentication Token 유무를 바로바로 반영하도록 Interceptor를 만드는 방법
>+ LinearLayout, RelativeLayout, ConstraintLayout의 차이
>+ 날짜, 시간을 표현하는 여러 Datatype(LocalDateTime, OffsetDateTime, ...)과 이들에 대한 Adapter
>+ Activity 전환 과정에서 Extra data를 넘기는 것처럼 Fragment로의 전환 과정에서 data를 넘기고 받는 방법(Bundle)
>+ GridRecyclerViewLayout에서 화면 크기에 맞게 item 크기를 조정하는 방법(instagram 프로필 페이지의 Feed 목록에 사용)
>+ Response\<T\>의 사용
>+ Glide의 사용법
>+ Activity, Fragment 전환 시 애니메이션 넣기(OverridePendingTransition(), https://greedy0110.tistory.com/52)
>+ 한 Fragment에서 다른 Fragment로 전환하기 (https://mc10sw.tistory.com/16)

이 외에도 익혀야 할 것/익히게 될 것들이 많으나 일단 위에 있는 것들을 먼저 정리하고 추가해 나가고자 한다. 이들에 대한 포스팅은 시간 나는대로 차차 할 예정이다.  
  
