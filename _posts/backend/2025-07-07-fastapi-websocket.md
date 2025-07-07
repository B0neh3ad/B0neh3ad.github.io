---
title:  "[FastAPI Websocket] websocket.client_state.name vs websocket.application_state"

categories:
  - Backend
tags:
  - fastapi
  - websocket
---

### 문제 상황

웹소켓을 이용하여 서버로부터 데이터를 받아오는 앱을 만드는 중인데, 앱에서 소켓 연결을 끊고 다시 연결할 때마다 서버에서 에러가 발생했다. 소켓을 통해 데이터를 일정 시간간격으로 보내기 때문에, `close()` 이후에도 비동기적으로 `send()` 가 호출되어 이 같은 에러가 발생한 것 같았다.

### 해결 과정

application state가 DISCONNECTED가 아닌 경우에만 `websocket.close()` 를 호출하도록 했다.

```
    if websocket.application_state != WebSocketState.DISCONNECTED:
        await websocket.close()
```

| 속성 | 설명 | 값 종류 | 체크 용도 |
| --- | --- | --- | --- |
| `websocket.client_state.name` | **서버 입장에서 클라이언트와의 연결 상태** | `"CONNECTED"`, `"DISCONNECTED"` 등 | 클라이언트가 연결 유지 중인지 확인 |
| `websocket.application_state` | **애플리케이션 레벨에서의 WebSocket 상태** (`send`, `receive` 가능 여부 포함) | `WebSocketState.CONNECTED`, `DISCONNECTED`, 등 | 실제로 `send()`/`receive()` 가능한 상태인지 확인 |
- `websocket.send_json()` 에 대한 조건문: send_json()의 호출 전에 application_state를 검사한다. 그러나 검사 후 send_json()가 실행되는 시간 사이에 application_state가 바뀐다면 에러가 발생한다.
- `websocket.close()` 에 대한 조건문: 어떠한 이유로 소켓 연결이 끊어졌을 때, 중복하여 `close()`를 호출하는 것을 막는다.

### 의문

아직도 딱 떨어지게 이해가 가진 않는다.. 에러는 `send()`가 내는 것 같은데 `close()`의 실행을 막음으로써 사라진다니,,