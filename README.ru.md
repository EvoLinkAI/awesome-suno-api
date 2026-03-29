<p align="center">
  [English](./README.md) | [简体中文](./README.zh-CN.md) | [繁體中文](./README.zh-TW.md) | [Español](./README.es.md) | [Deutsch](./README.de.md) | [Français](./README.fr.md) | [日本語](./README.ja.md) | [한국어](./README.ko.md) | [Türkçe](./README.tr.md) | Русский
</p>

# Awesome Suno API: цены, модели, примеры и руководство по интеграции

<p align="center">
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=banner&utm_campaign=awesome-suno-api">
    <img src="./assets/banner.jpg" alt="Awesome Suno API - Pricing, Models and Integration Guide" width="100%" />
  </a>
</p>

<p align="center">
  Compare Suno API pricing, choose the right Suno API model, and integrate AI music generation in one API call.
</p>

## Quick Start: One-Line Suno API Integration

Use Suno API in one API call.

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
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">View Suno API Pricing</a> ·
  <a href="https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">Get API Key</a> ·
  <a href="https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation">Read API Docs</a>
</p>

## What Is Suno API?

Этот практический репозиторий помогает разработчикам понять цены Suno API, сравнить модели и быстро интегрировать генерацию музыки с помощью ИИ.

This repository is built for developers who want to:

- understand Suno API pricing
- compare Suno API models
- choose the best Suno API model for quality, speed, or cost
- integrate Suno API into real-world music apps, creator tools, and AI workflows

## Suno API Pricing

This section explains Suno API pricing and the current cost of each supported model on EvoLink.ai.

| Model | Price | Best For | Notes |
|---|---:|---|---|
| `suno-v5-beta` | $0.1111 / song | highest quality generations | best overall music quality |
| `suno-v4.5-beta` | $0.0833 / song | balanced quality and cost | strong default choice |
| `suno-v4.5plus-beta` | $0.0833 / song | balanced generation with broader compatibility | supports older integrations |
| `suno-v4.5all-beta` | $0.0833 / song | broad compatibility workflows | legacy naming compatibility |
| `suno-v4-beta` | $0.0556 / song | lower-cost generation | budget-friendly option |

> Pricing should match the latest Suno product page on EvoLink.ai. If pricing changes, update this table first.

## Suno API Models

### `suno-v5-beta`
- **Best for:** highest quality song generation
- **Price:** $0.1111 / song
- **Quality:** high
- **Speed:** medium
- **Supports vocals:** yes
- **Supports instrumental:** yes
- **Ideal use cases:** polished demos, creator apps, premium music generation workflows

### `suno-v4.5-beta`
- **Best for:** strong quality-to-cost balance
- **Price:** $0.0833 / song
- **Quality:** high
- **Speed:** medium
- **Supports vocals:** yes
- **Supports instrumental:** yes
- **Ideal use cases:** most production apps, iteration with good output quality

### `suno-v4.5plus-beta`
- **Best for:** compatibility with older integrations
- **Price:** $0.0833 / song
- **Quality:** high
- **Speed:** medium
- **Supports vocals:** yes
- **Supports instrumental:** yes
- **Ideal use cases:** teams migrating older Suno integrations to EvoLink.ai

### `suno-v4.5all-beta`
- **Best for:** broad compatibility workflows
- **Price:** $0.0833 / song
- **Quality:** high
- **Speed:** medium
- **Supports vocals:** yes
- **Supports instrumental:** yes
- **Ideal use cases:** legacy integration paths and migration scenarios

### `suno-v4-beta`
- **Best for:** lower-cost music generation
- **Price:** $0.0556 / song
- **Quality:** medium
- **Speed:** medium
- **Supports vocals:** yes
- **Supports instrumental:** yes
- **Ideal use cases:** prototyping, budget-sensitive apps, batch generation experiments

## Suno API Model Comparison

Use this comparison table to choose the best Suno API model for your app.

| If you need... | Recommended Model | Why |
|---|---|---|
| the best music quality | `suno-v5-beta` | highest-end model in the current lineup |
| the best balance of quality and price | `suno-v4.5-beta` | strong default choice for most apps |
| the lowest Suno API cost | `suno-v4-beta` | cheaper per-song pricing |
| compatibility with older integrations | `suno-v4.5plus-beta` / `suno-v4.5all-beta` | smoother migration path |
| a safe default for production | `suno-v4.5-beta` | good mix of quality, cost, and compatibility |

## How to Use Suno API

Using Suno API usually involves four steps:

1. Get an API key from EvoLink.ai
2. Choose the right Suno API model
3. Send a generation request to `POST /v1/audios/generations`
4. Poll task status from `GET /v1/tasks/{task_id}` until the result is ready

Suno music generation is asynchronous. The create request returns a task ID, and you fetch the completed audio result afterward.

## Request Modes

### Simple mode
Use simple mode when you want the model to generate the song structure automatically.

```json
{
  "model": "suno-v5-beta",
  "prompt": "A cheerful summer pop song about road trips and freedom"
}
```

### Custom mode
Use custom mode when you want more control over title, style, lyrics, or instrumental output.

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
If you want instrumental output, set `instrumental` to `true`.

```json
{
  "model": "suno-v4.5-beta",
  "custom_mode": true,
  "instrumental": true,
  "title": "Skyline Drive",
  "style": "cinematic synthwave, uplifting, driving"
}
```

## Task Workflow

### 1. Create a generation task

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

Example response:

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

### 2. Query task status

```bash
curl --request GET \
  --url https://api.evolink.ai/v1/tasks/task-unified-xxx-yyy \
  --header 'Authorization: Bearer YOUR_API_KEY'
```

Example completed response:

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

## Important Parameters

| Parameter | Type | What it does |
|---|---|---|
| `model` | string | selects the Suno API model |
| `prompt` | string | prompt or lyrics input |
| `custom_mode` | boolean | enables fine-grained control |
| `instrumental` | boolean | generates instrumental-only output |
| `title` | string | song title in custom mode |
| `style` | string | style or genre guidance |
| `negative_tags` | string | styles or qualities to avoid |
| `persona_id` | string | reuses a previously created Suno persona |

## Model Name Compatibility

Older model names are still supported and mapped automatically to beta variants.

| Older Name | Current Compatible Variant |
|---|---|
| `suno-v5` | `suno-v5-beta` |
| `suno-v4.5` | `suno-v4.5-beta` |
| `suno-v4.5plus` | `suno-v4.5plus-beta` |
| `suno-v4.5all` | `suno-v4.5all-beta` |
| `suno-v4` | `suno-v4-beta` |

## More Suno API Examples by Language

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

## Best Prompts for Suno API

For better Suno API output, prompts should describe:

- genre
- mood
- instruments
- vocal style
- tempo
- production feel

Example prompt:

```text
A dreamy indie pop song with soft female vocals, warm analog synths, gentle drums, and an emotional cinematic chorus
```

If you are writing lyrics, structure them with tags like `[Verse]`, `[Chorus]`, and `[Bridge]`.

## Common Use Cases

Suno API can be used for:

- AI music apps
- creator tools
- lyric-to-song workflows
- social video background music
- game prototypes
- podcast intros and outros
- branded content generation
- AI content automation pipelines

## FAQ

### What is Suno API?
Suno API is an AI music generation API for creating songs, vocals, and instrumentals from prompts or lyrics.

### How much does Suno API cost?
Current Suno API pricing on EvoLink.ai ranges from $0.0556 to $0.1111 per song depending on the model.

### Which Suno API model is best?
If you want the highest quality, use `suno-v5-beta`. If you want better cost efficiency, use `suno-v4.5-beta` or `suno-v4-beta`.

### Is Suno API synchronous?
No. Suno API generation is asynchronous. You create a task first, then query task status via `GET /v1/tasks/{task_id}`.

### Can I generate instrumental music with Suno API?
Yes. Set `instrumental` to `true`, typically in `custom_mode`.

### Can I use lyrics with Suno API?
Yes. In custom mode, the `prompt` field can be used as lyrics input.

## Related Links

- [Suno API Pricing](https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Get API Key](https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Official Documentation](https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation)

## License

MIT
