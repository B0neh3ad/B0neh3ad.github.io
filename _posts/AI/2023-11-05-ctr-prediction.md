---
title:  "[DL/Tabular] CTR Prediction - Avazu Dataset"

categories:
  - AI
tags:
  - CTR Prediction
---

> Click-through rate prediction is the task of predicting the likelihood that something on a website (such as an advertisement) will be clicked.
> (출처: [Paperswithcode](https://paperswithcode.com/task/click-through-rate-prediction))

ctr prediction의 benchmarking dataset 중 Avazu를 보면 거의 모든 feature가 categorical feature이며, target은 click rate로 binary하다.(자세한 건 [여기](https://www.kaggle.com/competitions/avazu-ctr-prediction/overview) 참고)  

그러므로 [Avazu에 대한 SOTA 모델](https://paperswithcode.com/task/click-through-rate-prediction)들은 아래와 같이 categorical feature가 많은 형태의 tabular dataset 분석에 활용되기 좋다.

- [Categorical Feature Encoding Challenge](https://www.kaggle.com/c/cat-in-the-dat)
- [Categorical Feature Encoding Challenge II](https://www.kaggle.com/c/cat-in-the-dat-ii)
