[English](./README.md) | [简体中文](./README.zh-CN.md) | [繁體中文](./README.zh-TW.md) | [Español](./README.es.md) | [Deutsch](./README.de.md) | [Français](./README.fr.md) | [日本語](./README.ja.md) | [한국어](./README.ko.md) | [Türkçe](./README.tr.md) | [Русский](./README.ru.md)

# Awesome Suno API: 価格、モデル、サンプル、統合ガイド

<p align="center">
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=banner&utm_campaign=awesome-suno-api">
    <img src="./assets/banner.jpg" alt="Awesome Suno API - Pricing, Models and Integration Guide" width="100%" />
  </a>
</p>

この実践向けリポジトリは、開発者が Suno API pricing を理解し、model を比較し、1 回の API 呼び出しで AI music generation を導入できるようにするためのものです。

## Quick Start: 1 回の API 呼び出しで Suno API を導入

1 回の API 呼び出しで Suno API を使えます。

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
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">Suno API Pricing を見る</a> ·
  <a href="https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">API Key を取得</a> ·
  <a href="https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation">API ドキュメントを読む</a>
</p>

## Suno API とは？

Suno API は、テキスト prompt から楽曲、ボーカル、lyrics ベースのトラック、instrumental music を生成できる AI 音楽生成 API です。EvoLink.ai を通じて、開発者は統一 API、透明な pricing、本番向けの統合方法で Suno music generation を利用できます。

このリポジトリは次のような開発者向けです。

- Suno API pricing を理解したい
- Suno API models を比較したい
- 品質、速度、コストに応じて最適な model を選びたい
- 音楽アプリ、creator tools、AI workflows に Suno API を統合したい

## Suno API Pricing

このセクションでは、Suno API pricing と EvoLink.ai で利用できる各 model の現在価格を説明します。

| Model | 価格 | 向いている用途 | メモ |
|---|---:|---|---|
| `suno-v5-beta` | $0.1111 / song | 最高品質の生成 | 現時点で最も高品質 |
| `suno-v4.5-beta` | $0.0833 / song | 品質とコストのバランス | 標準的なおすすめ |
| `suno-v4.5plus-beta` | $0.0833 / song | 旧統合との互換性 | 移行向け |
| `suno-v4.5all-beta` | $0.0833 / song | 幅広い互換ワークフロー | legacy naming 向け |
| `suno-v4-beta` | $0.0556 / song | 低コスト生成 | 予算重視向け |

> 価格は EvoLink.ai の最新 Suno 製品ページと一致している必要があります。pricing が変わった場合は、まずこの表を更新してください。

## Suno API Models

### `suno-v5-beta`
- **Best for:** 最高品質の楽曲生成
- **Price:** $0.1111 / song
- **Quality:** 高い
- **Speed:** 中程度
- **Supports vocals:** はい
- **Supports instrumental:** はい
- **Ideal use cases:** 高品質なデモ、creator apps、プレミアム音楽生成ワークフロー

### `suno-v4.5-beta`
- **Best for:** 品質とコストのバランス
- **Price:** $0.0833 / song
- **Quality:** 高い
- **Speed:** 中程度
- **Supports vocals:** はい
- **Supports instrumental:** はい
- **Ideal use cases:** 多くの本番アプリ、品質を保ちながらコストも重視した生成

### `suno-v4.5plus-beta`
- **Best for:** 旧統合との互換性
- **Price:** $0.0833 / song
- **Quality:** 高い
- **Speed:** 中程度
- **Supports vocals:** はい
- **Supports instrumental:** はい
- **Ideal use cases:** 旧 Suno integration を EvoLink.ai に移行するチーム

### `suno-v4.5all-beta`
- **Best for:** 広い互換性を必要とするワークフロー
- **Price:** $0.0833 / song
- **Quality:** 高い
- **Speed:** 中程度
- **Supports vocals:** はい
- **Supports instrumental:** はい
- **Ideal use cases:** legacy integration path と移行シナリオ

### `suno-v4-beta`
- **Best for:** 低コストの音楽生成
- **Price:** $0.0556 / song
- **Quality:** 中程度
- **Speed:** 中程度
- **Supports vocals:** はい
- **Supports instrumental:** はい
- **Ideal use cases:** プロトタイピング、予算重視のアプリ、バッチ実験

## Suno API Model Comparison

この比較表を使って、あなたのアプリに最適な Suno API model を選んでください。

| 必要なもの | 推奨 Model | 理由 |
|---|---|---|
| 最高の音楽品質 | `suno-v5-beta` | 現在のラインアップで最上位 |
| 品質と価格の最良バランス | `suno-v4.5-beta` | 多くのアプリに適した強い標準選択 |
| 最低コストの Suno API | `suno-v4-beta` | song あたりの価格が低い |
| 旧統合との互換性 | `suno-v4.5plus-beta` / `suno-v4.5all-beta` | 移行がよりスムーズ |
| 本番向けの安全な標準選択 | `suno-v4.5-beta` | 品質、コスト、互換性のバランスが良い |

## Suno API の使い方

Suno API の利用は通常 4 ステップです。

1. EvoLink.ai で API key を取得する
2. 適切な Suno API model を選ぶ
3. `POST /v1/audios/generations` に生成リクエストを送る
4. `GET /v1/tasks/{task_id}` で結果が準備できるまで task status を確認する

Suno music generation は非同期です。create request はまず task ID を返し、その後に完成した音声結果を取得します。

## リクエストモード

### Simple mode
曲の構成をモデルに自動生成させたい場合は simple mode を使います。

```json
{
  "model": "suno-v5-beta",
  "prompt": "A cheerful summer pop song about road trips and freedom"
}
```

### Custom mode
title、style、lyrics、instrumental output を細かく制御したい場合は custom mode を使います。

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
instrumental 出力が必要な場合は `instrumental` を `true` に設定します。

```json
{
  "model": "suno-v4.5-beta",
  "custom_mode": true,
  "instrumental": true,
  "title": "Skyline Drive",
  "style": "cinematic synthwave, uplifting, driving"
}
```

## タスクフロー

### 1. 生成タスクを作成する

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

レスポンス例：

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

### 2. タスク状態を確認する

```bash
curl --request GET \
  --url https://api.evolink.ai/v1/tasks/task-unified-xxx-yyy \
  --header 'Authorization: Bearer YOUR_API_KEY'
```

完了時のレスポンス例：

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

## 重要なパラメータ

| パラメータ | 型 | 役割 |
|---|---|---|
| `model` | string | Suno API model を選択する |
| `prompt` | string | prompt または lyrics 入力 |
| `custom_mode` | boolean | 詳細制御を有効にする |
| `instrumental` | boolean | instrumental のみを生成する |
| `title` | string | custom mode での曲タイトル |
| `style` | string | スタイルやジャンルのガイド |
| `negative_tags` | string | 避けたいスタイルや特徴 |
| `persona_id` | string | 以前作成した Suno persona を再利用する |

## Model 名の互換性

古い model 名も引き続き使用可能で、自動的に対応する beta 版へマッピングされます。

| 旧名称 | 現在の互換バリアント |
|---|---|
| `suno-v5` | `suno-v5-beta` |
| `suno-v4.5` | `suno-v4.5-beta` |
| `suno-v4.5plus` | `suno-v4.5plus-beta` |
| `suno-v4.5all` | `suno-v4.5all-beta` |
| `suno-v4` | `suno-v4-beta` |

## 言語別の Suno API サンプル

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

## Suno API のための良い Prompt

より良い Suno API の出力を得るには、prompt に以下を含めると効果的です。

- genre
- mood
- instruments
- vocal style
- tempo
- production feel

prompt の例：

```text
A dreamy indie pop song with soft female vocals, warm analog synths, gentle drums, and an emotional cinematic chorus
```

lyrics を書く場合は、`[Verse]`、`[Chorus]`、`[Bridge]` のようなタグで構造を整理してください。

## よくあるユースケース

Suno API は次の用途に利用できます。

- AI 音楽アプリ
- creator tools
- lyric-to-song workflows
- ソーシャル動画の背景音楽
- ゲームのプロトタイプ
- ポッドキャストのイントロ / アウトロ
- ブランド向けコンテンツ生成
- AI コンテンツ自動化パイプライン

## FAQ

### Suno API とは何ですか？
Suno API は、prompt や lyrics から楽曲、ボーカル、instrumental を生成できる AI 音楽生成 API です。

### Suno API の料金はいくらですか？
現在の EvoLink.ai 上の Suno API pricing は、model に応じて 1 song あたり $0.0556 から $0.1111 です。

### どの Suno API model が最適ですか？
最高品質を求めるなら `suno-v5-beta` を使ってください。コスト効率を重視するなら `suno-v4.5-beta` または `suno-v4-beta` が適しています。

### Suno API は同期ですか？
いいえ。Suno API の生成は非同期です。まず task を作成し、その後 `GET /v1/tasks/{task_id}` で状態を確認します。

### Suno API で instrumental music は生成できますか？
はい。`instrumental` を `true` に設定してください。通常は `custom_mode` と一緒に使います。

### Suno API で lyrics を使えますか？
はい。custom mode では `prompt` フィールドを lyrics 入力として使えます。

## 関連リンク

- [Suno API Pricing](https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Get API Key](https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Official Documentation](https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation)

## License

MIT
