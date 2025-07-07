---
title:  "[Django] N+1 Query 문제"

categories:
  - Backend
tags:
  - Django
---

> 본 게시글은 교내 웹/앱 개발 동아리에서 django 세미나를 수강하며 공부한 내용 중 일부를 정리한 것입니다.

블로그 서비스와 같은 보편적 CRUD 어플리케이션을 생각해보자.

post의 목록을 불러올 때, 각 포스트에 연결된 댓글, 태그 정보도 함께 불러온다. 하지만 post 목록을 불러오는 쿼리만으로는 이러한 참조 정보를 불러올 수 없다. 따라서 각 post 별로 이를 위한 추가 쿼리가 발생하는데, 이를 **N+1 문제**라 한다.

쿼리 수행의 비용은 개별 쿼리의 복잡도보다 **쿼리 개수**에 압도적으로 의존한다. 따라서 쿼리 개수가 늘어나면 그에 따라 비용이 선형적으로 증가한다.

N+1 문제 해결을 위해, django에서는 다음의 방법으로 eager 로딩을 수행할 수 있다.

### `select_related()`: instance 당 하나

post 작성자처럼 *instance 당 하나*씩 연결된 참조 정보를 불러올 때 사용한다.

post 목록을 불러올 때 inner join을 이용하여 작성자를 대응시키는 방식이다.

예) `Post.objects.select_related('created_by')` 

### `prefetch_related()`: instance 당 여러 개

post 댓글, 태그처럼 *instance 당 여러 개가 연결*된 참조 정보를 불러올 때 사용한다.

불러온 post 목록의 id list를 이용해 추가 쿼리를 수행하여 이들에 대응되는 참조 정보들을 모두 불러오는 방식이다.

예) `Post.objects.prefetch_related('comment_set')` 

### `Prefetch` Object: prefetch하는 queryset 건들기

post 댓글 하나하나에도 태그, 작성자 정보가 있어 이 역시 불러와야 한다. 이때는 위의 방법으로는 번거롭다. (`'comment_set__created_by'`  ← 지저분..)

따라서 **Prefetch Object**를 이용하여 prefetch하는 queryset을 건드리면 nested 구조의 참조 정보에 대해서도 N+1 문제를 해결할 수 있다.

예)

```python
Post.objects.prefetch_related(
'tags',
Prefetch(
'comment_set',
queryset=Comment.objects.select_related('created_by').prefetch_related('tags')
)
)
```

### `@staticmethod`로 serializer 단에서 정리하기

하지만 view 단에서 queryset object 관련 로직을 짜는 건 코드의 응집도를 낮추며 단일 책임 원칙에 다소 어긋날 수 있다. 뿐만 아니라 로직의 재사용 또한 어렵다. 따라서 serializer에 method로서 해당 로직을 넣어주면 보다 깔끔하게 코드를 정리할 수 있다.