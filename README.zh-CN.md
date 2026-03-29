[English](./README.md) | [简体中文](./README.zh-CN.md) | [繁體中文](./README.zh-TW.md) | [Español](./README.es.md) | [Deutsch](./README.de.md) | [Français](./README.fr.md) | [日本語](./README.ja.md) | [한국어](./README.ko.md) | [Türkçe](./README.tr.md) | [Русский](./README.ru.md)

# Awesome Suno API：定价、模型、示例与集成指南

<p align="center">
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=banner&utm_campaign=awesome-suno-api">
    <img src="./assets/banner.jpg" alt="Awesome Suno API - Pricing, Models and Integration Guide" width="100%" />
  </a>
</p>

这是一个面向开发者的 Suno API 实战仓库，帮助你看懂 Suno API pricing、比较不同 model，并用一次 API 调用快速接入 AI music generation。

## Quick Start：一行代码接入 Suno API

用一次 API 调用接入 Suno API。

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
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">查看 Suno API Pricing</a> ·
  <a href="https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">获取 API Key</a> ·
  <a href="https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation">阅读 API 文档</a>
</p>

## 什么是 Suno API？

Suno API 是一个 AI 音乐生成 API，可根据文本 prompt 生成歌曲、人声、基于歌词的音乐以及纯伴奏。通过 EvoLink.ai，开发者可以使用统一 API、透明 pricing 和适合生产环境的接入方式来调用 Suno music generation。

这个仓库主要帮助开发者：

- 理解 Suno API pricing
- 比较不同 Suno API models
- 根据质量、速度和成本选择合适的 model
- 把 Suno API 集成到音乐应用、creator tools 和 AI workflows 中

## Suno API Pricing

这一节解释 Suno API pricing，以及 EvoLink.ai 当前支持的各个 model 的价格。

| Model | 价格 | 适合场景 | 说明 |
|---|---:|---|---|
| `suno-v5-beta` | $0.1111 / song | 最高质量生成 | 当前整体效果最好 |
| `suno-v4.5-beta` | $0.0833 / song | 质量与成本平衡 | 大多数场景的默认推荐 |
| `suno-v4.5plus-beta` | $0.0833 / song | 兼容旧集成 | 适合迁移老版本接入 |
| `suno-v4.5all-beta` | $0.0833 / song | 广泛兼容工作流 | 更适合 legacy naming 兼容 |
| `suno-v4-beta` | $0.0556 / song | 更低成本生成 | 预算敏感场景更合适 |

> 这里的价格应与 EvoLink.ai 的 Suno 产品页保持一致。如果 pricing 变动，优先更新这一张表。

## Suno API Models

### `suno-v5-beta`
- **Best for：** 最高质量的歌曲生成
- **Price：** $0.1111 / song
- **Quality：** 高
- **Speed：** 中等
- **Supports vocals：** 是
- **Supports instrumental：** 是
- **Ideal use cases：** 精修 demo、creator apps、高质量音乐生成工作流

### `suno-v4.5-beta`
- **Best for：** 质量与成本的平衡
- **Price：** $0.0833 / song
- **Quality：** 高
- **Speed：** 中等
- **Supports vocals：** 是
- **Supports instrumental：** 是
- **Ideal use cases：** 大多数生产环境应用、兼顾质量与成本的生成需求

### `suno-v4.5plus-beta`
- **Best for：** 兼容旧版本集成
- **Price：** $0.0833 / song
- **Quality：** 高
- **Speed：** 中等
- **Supports vocals：** 是
- **Supports instrumental：** 是
- **Ideal use cases：** 团队从旧 Suno 集成迁移到 EvoLink.ai

### `suno-v4.5all-beta`
- **Best for：** 更广泛的兼容性工作流
- **Price：** $0.0833 / song
- **Quality：** 高
- **Speed：** 中等
- **Supports vocals：** 是
- **Supports instrumental：** 是
- **Ideal use cases：** legacy integration path 和兼容迁移场景

### `suno-v4-beta`
- **Best for：** 更低成本的音乐生成
- **Price：** $0.0556 / song
- **Quality：** 中
- **Speed：** 中等
- **Supports vocals：** 是
- **Supports instrumental：** 是
- **Ideal use cases：** 原型验证、预算敏感应用、批量实验

## Suno API Model Comparison

用这张对比表快速选择适合你应用的 Suno API model。

| 如果你需要…… | 推荐 Model | 原因 |
|---|---|---|
| 最高音乐质量 | `suno-v5-beta` | 当前系列里最高规格 |
| 最佳性价比 | `suno-v4.5-beta` | 质量、成本、稳定性比较均衡 |
| 最低 Suno API cost | `suno-v4-beta` | 单次生成价格更低 |
| 兼容旧版本接入 | `suno-v4.5plus-beta` / `suno-v4.5all-beta` | 迁移更平滑 |
| 稳妥的生产默认选项 | `suno-v4.5-beta` | 质量、价格、兼容性都比较均衡 |

## 如何使用 Suno API

使用 Suno API 通常分四步：

1. 在 EvoLink.ai 获取 API key
2. 选择合适的 Suno API model
3. 向 `POST /v1/audios/generations` 发送生成请求
4. 通过 `GET /v1/tasks/{task_id}` 轮询任务状态，直到拿到结果

Suno music generation 是异步的。创建请求会先返回 task ID，之后再获取完成后的音频结果。

## 请求模式

### Simple mode
如果你希望模型自动生成歌曲结构，可以使用 simple mode。

```json
{
  "model": "suno-v5-beta",
  "prompt": "A cheerful summer pop song about road trips and freedom"
}
```

### Custom mode
如果你希望控制 title、style、lyrics 或 instrumental output，可以使用 custom mode。

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
如果你只想生成纯伴奏，把 `instrumental` 设置为 `true`。

```json
{
  "model": "suno-v4.5-beta",
  "custom_mode": true,
  "instrumental": true,
  "title": "Skyline Drive",
  "style": "cinematic synthwave, uplifting, driving"
}
```

## 任务流程

### 1. 创建生成任务

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

示例响应：

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

### 2. 查询任务状态

```bash
curl --request GET \
  --url https://api.evolink.ai/v1/tasks/task-unified-xxx-yyy \
  --header 'Authorization: Bearer YOUR_API_KEY'
```

完成后的响应示例：

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

## 重要参数

| 参数 | 类型 | 作用 |
|---|---|---|
| `model` | string | 选择 Suno API model |
| `prompt` | string | prompt 或 lyrics 输入 |
| `custom_mode` | boolean | 开启精细控制模式 |
| `instrumental` | boolean | 生成纯伴奏结果 |
| `title` | string | custom mode 下的歌曲标题 |
| `style` | string | 风格或流派描述 |
| `negative_tags` | string | 指定不想要的风格或特征 |
| `persona_id` | string | 复用之前创建的 Suno persona |

## Model 名称兼容性

旧版 model 名称仍然可用，会自动映射到对应的 beta 版本。

| 旧名称 | 当前兼容版本 |
|---|---|
| `suno-v5` | `suno-v5-beta` |
| `suno-v4.5` | `suno-v4.5-beta` |
| `suno-v4.5plus` | `suno-v4.5plus-beta` |
| `suno-v4.5all` | `suno-v4.5all-beta` |
| `suno-v4` | `suno-v4-beta` |

## 更多语言的 Suno API 示例

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

## Suno API Prompt 最佳实践

为了获得更好的 Suno API 输出，prompt 里建议描述清楚：

- genre
- mood
- instruments
- vocal style
- tempo
- production feel

示例 prompt：

```text
A dreamy indie pop song with soft female vocals, warm analog synths, gentle drums, and an emotional cinematic chorus
```

如果你在写歌词，建议用 `[Verse]`、`[Chorus]`、`[Bridge]` 这样的标签来组织结构。

## 常见使用场景

Suno API 适合用于：

- AI 音乐应用
- creator tools
- lyric-to-song workflows
- 短视频背景音乐
- 游戏原型
- podcast 片头和片尾
- 品牌内容生成
- AI 内容自动化流程

## FAQ

### 什么是 Suno API？
Suno API 是一个 AI music generation API，可根据 prompt 或歌词生成歌曲、人声和纯伴奏。

### Suno API 多少钱？
当前 EvoLink.ai 上的 Suno API pricing 按不同 model 计算，范围是每首歌 $0.0556 到 $0.1111。

### 哪个 Suno API model 最好？
如果你追求最高质量，用 `suno-v5-beta`；如果更看重性价比，可以优先考虑 `suno-v4.5-beta` 或 `suno-v4-beta`。

### Suno API 是同步的吗？
不是。Suno API 采用异步生成流程：先创建 task，再通过 `GET /v1/tasks/{task_id}` 查询状态。

### Suno API 可以生成纯伴奏吗？
可以。把 `instrumental` 设置为 `true` 即可，通常和 `custom_mode` 一起使用。

### Suno API 可以直接用歌词吗？
可以。在 custom mode 下，`prompt` 字段可以直接作为 lyrics 输入。

## 相关链接

- [Suno API Pricing](https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Get API Key](https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Official Documentation](https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation)

## License

MIT
