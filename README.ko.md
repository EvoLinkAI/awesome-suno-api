[English](./README.md) | [简体中文](./README.zh-CN.md) | [繁體中文](./README.zh-TW.md) | [Español](./README.es.md) | [Deutsch](./README.de.md) | [Français](./README.fr.md) | [日本語](./README.ja.md) | [한국어](./README.ko.md) | [Türkçe](./README.tr.md) | [Русский](./README.ru.md)

# Awesome Suno API: 가격, 모델, 예제 및 통합 가이드

<p align="center">
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=banner&utm_campaign=awesome-suno-api">
    <img src="./assets/banner.jpg" alt="Awesome Suno API - Pricing, Models and Integration Guide" width="100%" />
  </a>
</p>

이 실전형 저장소는 개발자가 Suno API pricing을 이해하고, model을 비교하고, 한 번의 API 호출로 AI music generation을 빠르게 통합할 수 있도록 돕습니다.

## Quick Start: 한 번의 API 호출로 Suno API 연결하기

한 번의 API 호출로 Suno API를 사용할 수 있습니다.

```bash
curl --request POST \
  --url https://api.evolink.ai/v1/audios/generations \
  --header 'Authorization: Bearer YOUR_API_KEY' \
  --header 'Content-Type: application/json' \
  --data '{
    "model": "suno-v5-beta",
    "prompt": "A cheerful summer pop song about road trips and freedom"
  }'
```

<p align="left">
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">Suno API Pricing 보기</a> ·
  <a href="https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">API Key 받기</a> ·
  <a href="https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation">API 문서 읽기</a>
</p>

## Suno API란?

Suno API는 텍스트 prompt를 기반으로 곡, vocals, lyrics 기반 트랙, instrumental music을 생성할 수 있는 AI 음악 생성 API입니다. EvoLink.ai를 통해 개발자는 통합 API, 투명한 pricing, 프로덕션 친화적인 통합 방식으로 Suno music generation을 사용할 수 있습니다.

이 저장소는 다음과 같은 개발자를 위한 것입니다.

- Suno API pricing을 이해하고 싶은 개발자
- Suno API models를 비교하고 싶은 개발자
- 품질, 속도, 비용에 따라 적절한 model을 선택하고 싶은 개발자
- 음악 앱, creator tools, AI workflows에 Suno API를 통합하고 싶은 개발자

## Suno API Pricing

이 섹션은 Suno API pricing과 EvoLink.ai에서 현재 지원되는 각 model의 비용을 설명합니다.

| Model | 가격 | 적합한 용도 | 참고 |
|---|---:|---|---|
| `suno-v5-beta` | $0.1111 / song | 최고 품질 생성 | 현재 전체 품질이 가장 좋음 |
| `suno-v4.5-beta` | $0.0833 / song | 품질과 비용의 균형 | 기본 추천 선택지 |
| `suno-v4.5plus-beta` | $0.0833 / song | 구형 통합 호환 | 이전 버전 마이그레이션에 적합 |
| `suno-v4.5all-beta` | $0.0833 / song | 폭넓은 호환 워크플로 | legacy naming 호환에 적합 |
| `suno-v4-beta` | $0.0556 / song | 저비용 생성 | 예산 민감한 사용에 적합 |

> 가격은 EvoLink.ai의 최신 Suno 제품 페이지와 항상 일치해야 합니다. pricing이 변경되면 먼저 이 표를 업데이트하세요.

## Suno API Models

### `suno-v5-beta`
- **Best for:** 최고 품질의 곡 생성
- **Price:** $0.1111 / song
- **Quality:** 높음
- **Speed:** 중간
- **Supports vocals:** 예
- **Supports instrumental:** 예
- **Ideal use cases:** 고급 데모, creator apps, 프리미엄 음악 생성 워크플로

### `suno-v4.5-beta`
- **Best for:** 품질과 비용의 균형
- **Price:** $0.0833 / song
- **Quality:** 높음
- **Speed:** 중간
- **Supports vocals:** 예
- **Supports instrumental:** 예
- **Ideal use cases:** 대부분의 프로덕션 앱, 적절한 비용으로 높은 품질이 필요한 경우

### `suno-v4.5plus-beta`
- **Best for:** 구형 통합과의 호환성
- **Price:** $0.0833 / song
- **Quality:** 높음
- **Speed:** 중간
- **Supports vocals:** 예
- **Supports instrumental:** 예
- **Ideal use cases:** 기존 Suno integration을 EvoLink.ai로 마이그레이션하는 팀

### `suno-v4.5all-beta`
- **Best for:** 폭넓은 호환성을 요구하는 워크플로
- **Price:** $0.0833 / song
- **Quality:** 높음
- **Speed:** 중간
- **Supports vocals:** 예
- **Supports instrumental:** 예
- **Ideal use cases:** legacy integration path 및 마이그레이션 시나리오

### `suno-v4-beta`
- **Best for:** 더 저렴한 음악 생성
- **Price:** $0.0556 / song
- **Quality:** 중간
- **Speed:** 중간
- **Supports vocals:** 예
- **Supports instrumental:** 예
- **Ideal use cases:** 프로토타이핑, 예산 민감한 앱, 배치 실험

## Suno API Model Comparison

이 비교표를 사용해 앱에 가장 적합한 Suno API model을 선택하세요.

| 필요 조건 | 추천 Model | 이유 |
|---|---|---|
| 최고 수준의 음악 품질 | `suno-v5-beta` | 현재 라인업 중 가장 상위 모델 |
| 품질과 가격의 최적 균형 | `suno-v4.5-beta` | 대부분의 앱에 적합한 강력한 기본 선택 |
| 가장 낮은 Suno API cost | `suno-v4-beta` | song당 가격이 더 낮음 |
| 이전 통합과의 호환성 | `suno-v4.5plus-beta` / `suno-v4.5all-beta` | 마이그레이션이 더 쉬움 |
| 프로덕션용 안전한 기본값 | `suno-v4.5-beta` | 품질, 비용, 호환성의 균형이 좋음 |

## Suno API 사용 방법

Suno API 사용은 일반적으로 다음 네 단계로 이루어집니다.

1. EvoLink.ai에서 API key 받기
2. 적절한 Suno API model 선택하기
3. `POST /v1/audios/generations` 로 생성 요청 보내기
4. `GET /v1/tasks/{task_id}` 로 결과가 준비될 때까지 task status 확인하기

Suno music generation은 비동기 방식입니다. create request는 먼저 task ID를 반환하고, 이후 완료된 오디오 결과를 가져옵니다.

## 요청 모드

### Simple mode
곡 구조를 모델이 자동 생성하도록 하고 싶다면 simple mode를 사용하세요.

```json
{
  "model": "suno-v5-beta",
  "prompt": "A cheerful summer pop song about road trips and freedom"
}
```

### Custom mode
title, style, lyrics, instrumental output을 더 세밀하게 제어하고 싶다면 custom mode를 사용하세요.

```json
{
  "model": "suno-v5-beta",
  "custom_mode": true,
  "instrumental": false,
  "title": "Summer Dreams",
  "style": "pop, electronic, upbeat",
  "prompt": "[Verse]\nWindows down on the highway tonight\n[Chorus]\nWe are chasing the summer light"
}
```

### Instrumental generation
instrumental 출력이 필요하면 `instrumental`을 `true`로 설정하세요.

```json
{
  "model": "suno-v4.5-beta",
  "custom_mode": true,
  "instrumental": true,
  "title": "Skyline Drive",
  "style": "cinematic synthwave, uplifting, driving"
}
```

## 작업 흐름

### 1. 생성 task 만들기

```bash
curl --request POST \
  --url https://api.evolink.ai/v1/audios/generations \
  --header 'Authorization: Bearer YOUR_API_KEY' \
  --header 'Content-Type: application/json' \
  --data '{
    "model": "suno-v5-beta",
    "prompt": "A cinematic orchestral song with emotional build-up"
  }'
```

응답 예시:

```json
{
  "id": "task-unified-xxx-yyy",
  "object": "audio.generation.task",
  "created": 1774168248,
  "model": "suno-v5-beta",
  "status": "pending",
  "progress": 0,
  "type": "audio"
}
```

### 2. task 상태 조회하기

```bash
curl --request GET \
  --url https://api.evolink.ai/v1/tasks/task-unified-xxx-yyy \
  --header 'Authorization: Bearer YOUR_API_KEY'
```

완료 응답 예시:

```json
{
  "id": "task-unified-xxx-yyy",
  "status": "completed",
  "progress": 100,
  "model": "suno-v5-beta",
  "result_data": [
    {
      "result_id": "4fcc4507-xxxx-xxxx",
      "title": "Summer Dreams",
      "tags": "pop, electronic, upbeat",
      "duration": 142,
      "audio_url": "https://media.evolink.ai/...",
      "image_url": "https://media.evolink.ai/..."
    }
  ],
  "results": [
    "https://media.evolink.ai/..."
  ]
}
```

## 주요 파라미터

| 파라미터 | 타입 | 역할 |
|---|---|---|
| `model` | string | Suno API model 선택 |
| `prompt` | string | prompt 또는 lyrics 입력 |
| `custom_mode` | boolean | 세밀한 제어 활성화 |
| `instrumental` | boolean | instrumental 전용 출력 생성 |
| `title` | string | custom mode에서의 곡 제목 |
| `style` | string | 스타일 또는 장르 가이드 |
| `negative_tags` | string | 피하고 싶은 스타일 또는 특성 |
| `persona_id` | string | 이전에 만든 Suno persona 재사용 |

## Model 이름 호환성

이전 model 이름도 계속 지원되며, 자동으로 해당 beta 버전으로 매핑됩니다.

| 이전 이름 | 현재 호환 버전 |
|---|---|
| `suno-v5` | `suno-v5-beta` |
| `suno-v4.5` | `suno-v4.5-beta` |
| `suno-v4.5plus` | `suno-v4.5plus-beta` |
| `suno-v4.5all` | `suno-v4.5all-beta` |
| `suno-v4` | `suno-v4-beta` |

## 언어별 추가 Suno API 예제

- [Python Example](#suno-api-example-in-python)
- [JavaScript Example](#suno-api-example-in-javascript)
- [TypeScript Example](#suno-api-example-in-typescript)
- [Go Example](#suno-api-example-in-go)

### Suno API Example in Python

```python
import requests
import time

headers = {
    "Authorization": "Bearer YOUR_API_KEY",
    "Content-Type": "application/json"
}

create_resp = requests.post(
    "https://api.evolink.ai/v1/audios/generations",
    headers=headers,
    json={
        "model": "suno-v5-beta",
        "prompt": "An uplifting electronic pop track with bright melodies"
    }
).json()

task_id = create_resp["id"]

while True:
    task = requests.get(
        f"https://api.evolink.ai/v1/tasks/{task_id}",
        headers={"Authorization": "Bearer YOUR_API_KEY"}
    ).json()
    if task.get("status") == "completed":
        print(task)
        break
    time.sleep(3)
```

### Suno API Example in JavaScript

```js
const createResp = await fetch("https://api.evolink.ai/v1/audios/generations", {
  method: "POST",
  headers: {
    Authorization: `Bearer ${process.env.EVOLINK_API_KEY}`,
    "Content-Type": "application/json"
  },
  body: JSON.stringify({
    model: "suno-v5-beta",
    prompt: "An uplifting electronic pop track with bright melodies"
  })
});

const task = await createResp.json();
console.log(task);
```

### Suno API Example in TypeScript

```ts
const response = await fetch("https://api.evolink.ai/v1/audios/generations", {
  method: "POST",
  headers: {
    Authorization: `Bearer ${process.env.EVOLINK_API_KEY}`,
    "Content-Type": "application/json"
  },
  body: JSON.stringify({
    model: "suno-v4.5-beta",
    custom_mode: true,
    instrumental: true,
    title: "City Lights",
    style: "cinematic electronic"
  })
});

const data = await response.json();
console.log(data);
```

### Suno API Example in Go

```go
package main

import (
  "bytes"
  "fmt"
  "net/http"
)

func main() {
  body := []byte(`{"model":"suno-v5-beta","prompt":"A dreamy indie pop song with warm synths"}`)
  req, _ := http.NewRequest("POST", "https://api.evolink.ai/v1/audios/generations", bytes.NewBuffer(body))
  req.Header.Set("Authorization", "Bearer YOUR_API_KEY")
  req.Header.Set("Content-Type", "application/json")

  resp, err := http.DefaultClient.Do(req)
  if err != nil {
    panic(err)
  }
  defer resp.Body.Close()
  fmt.Println(resp.Status)
}
```

## Suno API Prompt 작성 팁

더 좋은 Suno API 결과를 얻으려면 prompt에 다음 요소를 포함하는 것이 좋습니다.

- genre
- mood
- instruments
- vocal style
- tempo
- production feel

예시 prompt:

```text
A dreamy indie pop song with soft female vocals, warm analog synths, gentle drums, and an emotional cinematic chorus
```

lyrics를 작성할 때는 `[Verse]`, `[Chorus]`, `[Bridge]` 같은 태그로 구조를 정리하세요.

## 자주 쓰이는 활용 사례

Suno API는 다음과 같은 용도로 사용할 수 있습니다.

- AI 음악 앱
- creator tools
- lyric-to-song workflows
- 소셜 영상 배경음악
- 게임 프로토타입
- podcast 인트로 / 아웃트로
- 브랜드 콘텐츠 생성
- AI 콘텐츠 자동화 파이프라인

## FAQ

### Suno API란 무엇인가요?
Suno API는 prompt 또는 lyrics를 기반으로 곡, vocals, instrumental을 생성하는 AI 음악 생성 API입니다.

### Suno API는 얼마인가요?
현재 EvoLink.ai의 Suno API pricing은 model에 따라 song당 $0.0556에서 $0.1111 사이입니다.

### 어떤 Suno API model이 가장 좋은가요?
최고 품질이 필요하면 `suno-v5-beta`를 사용하세요. 비용 효율을 더 중시한다면 `suno-v4.5-beta` 또는 `suno-v4-beta`가 적합합니다.

### Suno API는 동기식인가요?
아니요. Suno API 생성은 비동기 방식입니다. 먼저 task를 만들고, 이후 `GET /v1/tasks/{task_id}`로 상태를 확인합니다.

### Suno API로 instrumental music도 만들 수 있나요?
네. `instrumental`을 `true`로 설정하면 됩니다. 보통 `custom_mode`와 함께 사용합니다.

### Suno API에서 lyrics를 직접 사용할 수 있나요?
네. custom mode에서는 `prompt` 필드를 lyrics 입력으로 사용할 수 있습니다.

## 관련 링크

- [Suno API Pricing](https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Get API Key](https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Official Documentation](https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation)

## License

MIT
