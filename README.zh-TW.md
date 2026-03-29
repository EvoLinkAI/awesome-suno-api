[English](./README.md) | [简体中文](./README.zh-CN.md) | [繁體中文](./README.zh-TW.md) | [Español](./README.es.md) | [Deutsch](./README.de.md) | [Français](./README.fr.md) | [日本語](./README.ja.md) | [한국어](./README.ko.md) | [Türkçe](./README.tr.md) | [Русский](./README.ru.md)

# Awesome Suno API：定價、模型、範例與整合指南

<p align="center">
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=banner&utm_campaign=awesome-suno-api">
    <img src="./assets/banner.jpg" alt="Awesome Suno API - Pricing, Models and Integration Guide" width="100%" />
  </a>
</p>

這是一個面向開發者的 Suno API 實戰倉庫，幫助你看懂 Suno API pricing、比較不同 model，並用一次 API 呼叫快速接入 AI music generation。

## Quick Start：一行程式碼接入 Suno API

用一次 API 呼叫接入 Suno API。

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
  <a href="https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">取得 API Key</a> ·
  <a href="https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation">閱讀 API 文件</a>
</p>

## 什麼是 Suno API？

Suno API 是一個 AI 音樂生成 API，可依據文字 prompt 生成歌曲、人聲、基於歌詞的音樂以及純伴奏。透過 EvoLink.ai，開發者可以使用統一 API、透明 pricing 與適合生產環境的接入方式來呼叫 Suno music generation。

這個倉庫主要幫助開發者：

- 理解 Suno API pricing
- 比較不同 Suno API models
- 根據品質、速度與成本選擇合適的 model
- 把 Suno API 整合到音樂應用、creator tools 與 AI workflows 中

## Suno API Pricing

這一節說明 Suno API pricing，以及 EvoLink.ai 目前支援的各個 model 價格。

| Model | 價格 | 適合場景 | 說明 |
|---|---:|---|---|
| `suno-v5-beta` | $0.1111 / song | 最高品質生成 | 目前整體效果最好 |
| `suno-v4.5-beta` | $0.0833 / song | 品質與成本平衡 | 大多數場景的預設推薦 |
| `suno-v4.5plus-beta` | $0.0833 / song | 相容舊版整合 | 適合遷移舊版本接入 |
| `suno-v4.5all-beta` | $0.0833 / song | 廣泛相容工作流 | 更適合 legacy naming 相容 |
| `suno-v4-beta` | $0.0556 / song | 更低成本生成 | 適合預算敏感場景 |

> 這裡的價格應與 EvoLink.ai 的 Suno 產品頁保持一致。若 pricing 有變動，請優先更新這張表。

## Suno API Models

### `suno-v5-beta`
- **Best for：** 最高品質的歌曲生成
- **Price：** $0.1111 / song
- **Quality：** 高
- **Speed：** 中等
- **Supports vocals：** 是
- **Supports instrumental：** 是
- **Ideal use cases：** 精修 demo、creator apps、高品質音樂生成工作流

### `suno-v4.5-beta`
- **Best for：** 品質與成本的平衡
- **Price：** $0.0833 / song
- **Quality：** 高
- **Speed：** 中等
- **Supports vocals：** 是
- **Supports instrumental：** 是
- **Ideal use cases：** 大多數生產環境應用、兼顧品質與成本的生成需求

### `suno-v4.5plus-beta`
- **Best for：** 相容舊版整合
- **Price：** $0.0833 / song
- **Quality：** 高
- **Speed：** 中等
- **Supports vocals：** 是
- **Supports instrumental：** 是
- **Ideal use cases：** 團隊從舊 Suno 整合遷移到 EvoLink.ai

### `suno-v4.5all-beta`
- **Best for：** 更廣泛的相容性工作流
- **Price：** $0.0833 / song
- **Quality：** 高
- **Speed：** 中等
- **Supports vocals：** 是
- **Supports instrumental：** 是
- **Ideal use cases：** legacy integration path 與相容遷移場景

### `suno-v4-beta`
- **Best for：** 更低成本的音樂生成
- **Price：** $0.0556 / song
- **Quality：** 中
- **Speed：** 中等
- **Supports vocals：** 是
- **Supports instrumental：** 是
- **Ideal use cases：** 原型驗證、預算敏感應用、批量實驗

## Suno API Model Comparison

用這張對照表快速選擇適合你應用的 Suno API model。

| 如果你需要…… | 推薦 Model | 原因 |
|---|---|---|
| 最高音樂品質 | `suno-v5-beta` | 目前系列中最高規格 |
| 最佳性價比 | `suno-v4.5-beta` | 品質、成本、穩定性較均衡 |
| 最低 Suno API cost | `suno-v4-beta` | 單次生成價格更低 |
| 相容舊版接入 | `suno-v4.5plus-beta` / `suno-v4.5all-beta` | 遷移更平滑 |
| 穩妥的生產預設選項 | `suno-v4.5-beta` | 品質、價格、相容性都較均衡 |

## 如何使用 Suno API

使用 Suno API 通常分四步：

1. 在 EvoLink.ai 取得 API key
2. 選擇合適的 Suno API model
3. 向 `POST /v1/audios/generations` 發送生成請求
4. 透過 `GET /v1/tasks/{task_id}` 輪詢任務狀態，直到拿到結果

Suno music generation 是非同步的。建立請求會先回傳 task ID，之後再取得完成後的音訊結果。

## 請求模式

### Simple mode
如果你希望模型自動生成歌曲結構，可以使用 simple mode。

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
如果你只想生成純伴奏，把 `instrumental` 設為 `true`。

```json
{
  "model": "suno-v4.5-beta",
  "custom_mode": true,
  "instrumental": true,
  "title": "Skyline Drive",
  "style": "cinematic synthwave, uplifting, driving"
}
```

## 任務流程

### 1. 建立生成任務

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

範例回應：

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

### 2. 查詢任務狀態

```bash
curl --request GET \
  --url https://api.evolink.ai/v1/tasks/task-unified-xxx-yyy \
  --header 'Authorization: Bearer YOUR_API_KEY'
```

完成後的回應範例：

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

## 重要參數

| 參數 | 類型 | 作用 |
|---|---|---|
| `model` | string | 選擇 Suno API model |
| `prompt` | string | prompt 或 lyrics 輸入 |
| `custom_mode` | boolean | 開啟精細控制模式 |
| `instrumental` | boolean | 生成純伴奏結果 |
| `title` | string | custom mode 下的歌曲標題 |
| `style` | string | 風格或流派描述 |
| `negative_tags` | string | 指定不想要的風格或特徵 |
| `persona_id` | string | 重用之前建立的 Suno persona |

## Model 名稱相容性

舊版 model 名稱仍可使用，會自動映射到對應的 beta 版本。

| 舊名稱 | 目前相容版本 |
|---|---|
| `suno-v5` | `suno-v5-beta` |
| `suno-v4.5` | `suno-v4.5-beta` |
| `suno-v4.5plus` | `suno-v4.5plus-beta` |
| `suno-v4.5all` | `suno-v4.5all-beta` |
| `suno-v4` | `suno-v4-beta` |

## 更多語言的 Suno API 範例

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

## Suno API Prompt 最佳實踐

為了獲得更好的 Suno API 輸出，prompt 建議描述清楚：

- genre
- mood
- instruments
- vocal style
- tempo
- production feel

範例 prompt：

```text
A dreamy indie pop song with soft female vocals, warm analog synths, gentle drums, and an emotional cinematic chorus
```

如果你在寫歌詞，建議使用 `[Verse]`、`[Chorus]`、`[Bridge]` 這類標籤來組織結構。

## 常見使用場景

Suno API 適合用於：

- AI 音樂應用
- creator tools
- lyric-to-song workflows
- 短影音背景音樂
- 遊戲原型
- podcast 片頭與片尾
- 品牌內容生成
- AI 內容自動化流程

## FAQ

### 什麼是 Suno API？
Suno API 是一個 AI music generation API，可依據 prompt 或歌詞生成歌曲、人聲與純伴奏。

### Suno API 多少錢？
目前 EvoLink.ai 上的 Suno API pricing 依不同 model 計費，範圍為每首歌 $0.0556 到 $0.1111。

### 哪個 Suno API model 最好？
如果你追求最高品質，使用 `suno-v5-beta`；如果更重視性價比，可以優先考慮 `suno-v4.5-beta` 或 `suno-v4-beta`。

### Suno API 是同步的嗎？
不是。Suno API 採用非同步生成流程：先建立 task，再透過 `GET /v1/tasks/{task_id}` 查詢狀態。

### Suno API 可以生成純伴奏嗎？
可以。將 `instrumental` 設為 `true` 即可，通常會搭配 `custom_mode` 一起使用。

### Suno API 可以直接使用歌詞嗎？
可以。在 custom mode 下，`prompt` 欄位可直接作為 lyrics 輸入。

## 相關連結

- [Suno API Pricing](https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Get API Key](https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Official Documentation](https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation)

## License

MIT
