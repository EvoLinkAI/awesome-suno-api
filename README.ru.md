[English](./README.md) | [简体中文](./README.zh-CN.md) | [繁體中文](./README.zh-TW.md) | [Español](./README.es.md) | [Deutsch](./README.de.md) | [Français](./README.fr.md) | [日本語](./README.ja.md) | [한국어](./README.ko.md) | [Türkçe](./README.tr.md) | [Русский](./README.ru.md)

# Awesome Suno API: цены, модели, примеры и руководство по интеграции

<p align="center">
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=banner&utm_campaign=awesome-suno-api">
    <img src="./assets/banner.jpg" alt="Awesome Suno API - Pricing, Models and Integration Guide" width="100%" />
  </a>
</p>

Этот практический репозиторий помогает разработчикам разобраться в Suno API pricing, сравнить models и интегрировать AI music generation одним API-вызовом.

## Quick Start: интеграция Suno API одним API-вызовом

Используйте Suno API одним API-вызовом.

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
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">Посмотреть Suno API Pricing</a> ·
  <a href="https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">Получить API Key</a> ·
  <a href="https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation">Открыть API-документацию</a>
</p>

## Что такое Suno API?

Suno API — это AI API для генерации музыки, которая умеет создавать песни, vocals, tracks на основе lyrics и instrumental music по текстовым prompt’ам. Через EvoLink.ai разработчики получают доступ к Suno music generation через unified API, прозрачную pricing и интеграцию, подходящую для production.

Этот репозиторий создан для разработчиков, которым нужно:

- понять Suno API pricing
- сравнить Suno API models
- выбрать лучший model по качеству, скорости или стоимости
- интегрировать Suno API в музыкальные приложения, creator tools и AI workflows

## Suno API Pricing

В этом разделе объясняется Suno API pricing и текущая стоимость каждой поддерживаемой model на EvoLink.ai.

| Model | Цена | Лучше всего подходит для | Примечания |
|---|---:|---|---|
| `suno-v5-beta` | $0.1111 / song | генерации максимального качества | лучшее общее качество |
| `suno-v4.5-beta` | $0.0833 / song | баланса качества и цены | рекомендуемый вариант по умолчанию |
| `suno-v4.5plus-beta` | $0.0833 / song | совместимости со старыми интеграциями | удобно для миграции |
| `suno-v4.5all-beta` | $0.0833 / song | workflows с широкой совместимостью | подходит для legacy naming |
| `suno-v4-beta` | $0.0556 / song | более дешёвой генерации | бюджетный вариант |

> Цены должны всегда совпадать с актуальной страницей Suno на EvoLink.ai. Если pricing меняется, сначала обновляйте эту таблицу.

## Suno API Models

### `suno-v5-beta`
- **Best for:** генерация песен максимального качества
- **Price:** $0.1111 / song
- **Quality:** высокая
- **Speed:** средняя
- **Supports vocals:** да
- **Supports instrumental:** да
- **Ideal use cases:** polished demos, creator apps, premium music workflows

### `suno-v4.5-beta`
- **Best for:** баланс качества и стоимости
- **Price:** $0.0833 / song
- **Quality:** высокая
- **Speed:** средняя
- **Supports vocals:** да
- **Supports instrumental:** да
- **Ideal use cases:** большинство production-приложений, хорошее качество при разумной цене

### `suno-v4.5plus-beta`
- **Best for:** совместимость со старыми интеграциями
- **Price:** $0.0833 / song
- **Quality:** высокая
- **Speed:** средняя
- **Supports vocals:** да
- **Supports instrumental:** да
- **Ideal use cases:** команды, мигрирующие старые Suno integrations в EvoLink.ai

### `suno-v4.5all-beta`
- **Best for:** workflows с широкой совместимостью
- **Price:** $0.0833 / song
- **Quality:** высокая
- **Speed:** средняя
- **Supports vocals:** да
- **Supports instrumental:** да
- **Ideal use cases:** legacy integration path и сценарии миграции

### `suno-v4-beta`
- **Best for:** более дешёвая генерация музыки
- **Price:** $0.0556 / song
- **Quality:** средняя
- **Speed:** средняя
- **Supports vocals:** да
- **Supports instrumental:** да
- **Ideal use cases:** прототипирование, приложения с ограниченным бюджетом, пакетные эксперименты

## Suno API Model Comparison

Используйте эту таблицу сравнения, чтобы выбрать лучший Suno API model для вашего приложения.

| Если вам нужно... | Рекомендуемый Model | Почему |
|---|---|---|
| лучшее качество музыки | `suno-v5-beta` | самый сильный model в текущей линейке |
| лучший баланс качества и цены | `suno-v4.5-beta` | сильный вариант по умолчанию для большинства приложений |
| минимальный Suno API cost | `suno-v4-beta` | более низкая цена за song |
| совместимость со старыми интеграциями | `suno-v4.5plus-beta` / `suno-v4.5all-beta` | более простой путь миграции |
| надёжный production default | `suno-v4.5-beta` | хороший баланс качества, цены и совместимости |

## Как использовать Suno API

Обычно работа с Suno API состоит из четырёх шагов:

1. Получить API key на EvoLink.ai
2. Выбрать подходящий Suno API model
3. Отправить запрос на генерацию в `POST /v1/audios/generations`
4. Проверять статус через `GET /v1/tasks/{task_id}`, пока результат не будет готов

Suno music generation работает асинхронно. Create request сначала возвращает task ID, а готовый аудиорезультат вы получаете позже.

## Режимы запроса

### Simple mode
Используйте simple mode, если хотите, чтобы модель сама сгенерировала структуру песни.

```json
{
  "model": "suno-v5-beta",
  "prompt": "A cheerful summer pop song about road trips and freedom"
}
```

### Custom mode
Используйте custom mode, если хотите точнее управлять title, style, lyrics или instrumental output.

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
Если вам нужен instrumental output, установите `instrumental` в `true`.

```json
{
  "model": "suno-v4.5-beta",
  "custom_mode": true,
  "instrumental": true,
  "title": "Skyline Drive",
  "style": "cinematic synthwave, uplifting, driving"
}
```

## Workflow задач

### 1. Создание задачи генерации

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

Пример ответа:

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

### 2. Проверка статуса задачи

```bash
curl --request GET \
  --url https://api.evolink.ai/v1/tasks/task-unified-xxx-yyy \
  --header 'Authorization: Bearer YOUR_API_KEY'
```

Пример завершённого ответа:

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

## Важные параметры

| Параметр | Тип | Что делает |
|---|---|---|
| `model` | string | выбирает Suno API model |
| `prompt` | string | prompt или ввод lyrics |
| `custom_mode` | boolean | включает более точный контроль |
| `instrumental` | boolean | генерирует только instrumental output |
| `title` | string | название песни в custom mode |
| `style` | string | описание стиля или жанра |
| `negative_tags` | string | стили или особенности, которых нужно избегать |
| `persona_id` | string | повторно использует ранее созданную Suno persona |

## Совместимость названий model

Старые имена model по-прежнему поддерживаются и автоматически мапятся на соответствующие beta variants.

| Старое имя | Текущий совместимый вариант |
|---|---|
| `suno-v5` | `suno-v5-beta` |
| `suno-v4.5` | `suno-v4.5-beta` |
| `suno-v4.5plus` | `suno-v4.5plus-beta` |
| `suno-v4.5all` | `suno-v4.5all-beta` |
| `suno-v4` | `suno-v4-beta` |

## Больше примеров Suno API по языкам

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

## Лучшие prompt для Suno API

Чтобы получить лучшие результаты от Suno API, prompt должен описывать:

- genre
- mood
- instruments
- vocal style
- tempo
- production feel

Пример prompt:

```text
A dreamy indie pop song with soft female vocals, warm analog synths, gentle drums, and an emotional cinematic chorus
```

Если вы пишете lyrics, используйте теги вроде `[Verse]`, `[Chorus]` и `[Bridge]` для организации структуры.

## Частые сценарии использования

Suno API подходит для:

- AI music apps
- creator tools
- lyric-to-song workflows
- фоновой музыки для social video
- игровых прототипов
- podcast intro / outro
- генерации брендового контента
- AI content automation pipelines

## FAQ

### Что такое Suno API?
Suno API — это AI music generation API для создания песен, vocals и instrumentals из prompt или lyrics.

### Сколько стоит Suno API?
Сейчас Suno API pricing на EvoLink.ai составляет от $0.0556 до $0.1111 за song в зависимости от model.

### Какой Suno API model лучший?
Если вам нужно максимальное качество, используйте `suno-v5-beta`. Если важнее эффективность по цене, используйте `suno-v4.5-beta` или `suno-v4-beta`.

### Suno API синхронный?
Нет. Генерация Suno API асинхронна. Сначала вы создаёте task, затем проверяете её статус через `GET /v1/tasks/{task_id}`.

### Можно ли генерировать instrumental music через Suno API?
Да. Установите `instrumental` в `true`, обычно вместе с `custom_mode`.

### Можно ли использовать lyrics в Suno API?
Да. В custom mode поле `prompt` может использоваться как ввод для lyrics.

## Полезные ссылки

- [Suno API Pricing](https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Get API Key](https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Official Documentation](https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation)

## License

MIT
