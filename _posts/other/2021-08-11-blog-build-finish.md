---
title:  "블로그 (일단은) 시작!"

toc: true
toc_sticky: true

categories:
  - Other
tags:
  - Blog
  - Github
---
## 드디어 블로그를 시작했다!
중학생, 고등학생 때 짬짬이 네이버 블로그를 운영하면서 뭔가 블로그를 더 잘 활용해보고 싶은 마음이 들었다. 그러던 중 학교 축제 때 쓸 퀴즈 홈페이지를 제작하면서 알게 된 **github pages 서비스**. 이걸로 이미 많은 사람들이 블로그를 만들고 있다는 사실을 알게 되었다. 이때부터 나도 고등학교 졸업하면 본격적으로 깃헙 블로그를 시작해야겠다고 다짐했다.

그렇게 졸업을 하고 올해 초부터 '만들어야지... 만들어야지...' 하면서 천천히 시작했는데 온갖 오류에 부딪혀서 정말 쉽지 않았다... 이때 겪은 오류들은 'Trouble Shooting' 카테고리에서 하나씩 정리하고자 한다. 일단 지금은 정리가 안 된 상황이니 여기에나마 간단히 적어본다.

* ```Invalid byte sequence in UTF-8 (ArgumentError)```  
  repository를 clone한 경로에 한글이 포함되어 있어서 발생했던 오류다. utf8 인코딩을 하기 위해 어찌저찌 삽질을 해봤으나 사실 지금도 제대로 파일 경로가 인식되는 것 같진 않다... 언젠가 제대로 해결해야지

* ``` `require': cannot load such file -- webrick (LoadError)```  
  저거 해결하고 기쁨에 차서 ```bundle exec jekyll serve```를 cmd 창에 입력하자마자 맞닥뜨린 오류. 다행히 [이 글](https://junho85.pe.kr/1850)을 보고 ```bundle add webrick``` 한 줄로 해결할 수 있었다.

* ```tzinfo```의 부재로 인한 오류  
  에러 메세지는 정확히 기억 안 나는데 ```gem install tzinfo``` 치니까 바로 해결됐다. 아마 이게 ```timezone``` 변수 설정 후에 생긴 오류였던 거 같다.

* ```Skipping: _posts/boj/2021-08-12-boj-1920.md has a future date```

  ```
  Regenerating: 1 file(s) changed at 2021-08-11 16:45:58
                    _posts/boj/2021-08-12-boj-1920.md
          Skipping: _posts/boj/2021-08-12-boj-1920.md has a future date
          Skipping: _posts/boj/2021-08-12-boj-2750-2751-10989.md has a future date
       Jekyll Feed: Generating feed for posts
                    ...done in 1.3395643 seconds.
  ```

  github에 push 했을 때는 한국 시간대에 맞게 잘 업로드되던 포스팅인데 로컬에서 업로드하려고 하면 서버 시간이랑 안 맞는지 자꾸 튕긴다. 로컬 서버 시간 설정은 또 따로 해줘야 하나...  
  -> [a1333f3](https://github.com/B0neh3ad/B0neh3ad.github.io/commit/a1333f3cf2d76353912b438db023225573983ffc)번 commit으로 해결했다.

학기 시작하고 과제도 하고, 시험도 보고, 동아리도 하고, 정말 이것저것 하느라 미뤄두다가 여름방학이 되어서야 이렇게나마 완성했다... 이제부터라도 열심히 글 올려야지.

## 블로그 제작 시 참고 자료
본 블로그의 테마는 [minimal mistakes](https://github.com/mmistakes/minimal-mistakes)를 활용한 것이다. (fork가 15.7k ㄷㄷ)

아래는 내가 블로그를 만들면서 큰 도움을 받았던 글들이다.  

* repository 만들고 ruby, jekyll 설치, 블로그의 기본적인 뼈대 갖추는 단계에서는 ['취미로 코딩하는 개발자'님의 블로그](https://devinlife.com/howto/)를 많이 참고했다.  

* 블로그의 측면 바를 꾸미고, jekyll의 directory 구조에 대해 이해하고, 기타 세부적인 설정을 해나갈 때는 ['공부하는 식빵맘'님의 블로그](https://ansohxxn.github.io/categories/#blog)를 많이 참고했다.

이 분들께서 이 블로그를 보실진 모르겠지만.. 댓글로 말씀드렸듯 다시 한번 감사의 말씀을 드린다. 체계적으로 정리되어 있어서 쉽게 따라할 수 있었던 것 같다.

## 앞으로의 블로그 운영 방향
'About'에 써둔 것처럼 이런저런 글을 올려나갈 계획이다. 특히 정말 쓰고 싶은 글이 몇 가지 있었는데('고교과정의 수학과 대회 알고리즘 간 관계' 등) 아마 이것들을 가장 먼저 올릴 거 같다.

## 앞으로 블로그에서 손봐야 할 것
1) 폰트, 배경색 등등 전반적인 레이아웃. css도 배우는 겸 꾸며야겠다.  
2) 포스팅 입력 시 날짜, 시간 입력. 이거 자동으로 안 되는 건가?  
3) 블로그 내 글 검색 기능. 검색이 안 된다. 좀 하자가 있다.  

일단 이 정도가 생각이 나고... 나머지는 나중에 또 손 보는 걸로 하자.
