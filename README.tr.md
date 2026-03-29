[English](./README.md) | [简体中文](./README.zh-CN.md) | [繁體中文](./README.zh-TW.md) | [Español](./README.es.md) | [Deutsch](./README.de.md) | [Français](./README.fr.md) | [日本語](./README.ja.md) | [한국어](./README.ko.md) | [Türkçe](./README.tr.md) | [Русский](./README.ru.md)

# Awesome Suno API: Fiyatlandırma, Modeller, Örnekler ve Entegrasyon Rehberi

<p align="center">
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=banner&utm_campaign=awesome-suno-api">
    <img src="./assets/banner.jpg" alt="Awesome Suno API - Pricing, Models and Integration Guide" width="100%" />
  </a>
</p>

Bu pratik depo, geliştiricilerin Suno API fiyatlandırmasını anlamasına, modelleri karşılaştırmasına ve AI music generation’ı tek bir API çağrısıyla entegre etmesine yardımcı olur.

## Quick Start: Suno API’yi tek API çağrısıyla entegre et

Suno API’yi tek bir API çağrısıyla kullanın.

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
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">Suno API fiyatlarını görüntüle</a> ·
  <a href="https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">API Key al</a> ·
  <a href="https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation">API dokümanını oku</a>
</p>

## Suno API nedir?

Suno API, metin prompt’larından şarkılar, vocals, lyrics tabanlı parçalar ve instrumental music üretmek için kullanılan bir yapay zekâ müzik üretim API’sidir. EvoLink.ai üzerinden geliştiriciler, birleşik bir API, şeffaf pricing ve production-ready entegrasyon ile Suno music generation’a erişebilir.

Bu depo şu geliştiriciler için hazırlandı:

- Suno API pricing’i anlamak isteyenler
- Suno API models karşılaştırmak isteyenler
- kalite, hız veya maliyete göre en iyi model’i seçmek isteyenler
- Suno API’yi müzik uygulamalarına, creator tools ve AI workflows içine entegre etmek isteyenler

## Suno API Pricing

Bu bölüm Suno API pricing’i ve EvoLink.ai üzerinde desteklenen her model’in güncel maliyetini açıklar.

| Model | Fiyat | En iyi kullanım | Notlar |
|---|---:|---|---|
| `suno-v5-beta` | $0.1111 / song | en yüksek kaliteli üretim | genel kalite olarak en güçlü seçenek |
| `suno-v4.5-beta` | $0.0833 / song | kalite ve maliyet dengesi | varsayılan önerilen seçenek |
| `suno-v4.5plus-beta` | $0.0833 / song | eski entegrasyonlarla uyumluluk | geçiş senaryoları için uygun |
| `suno-v4.5all-beta` | $0.0833 / song | geniş uyumluluk gerektiren iş akışları | legacy naming için uygun |
| `suno-v4-beta` | $0.0556 / song | daha düşük maliyetli üretim | bütçe dostu seçenek |

> Fiyatlar her zaman EvoLink.ai üzerindeki en güncel Suno ürün sayfasıyla eşleşmelidir. Pricing değişirse önce bu tabloyu güncelleyin.

## Suno API Models

### `suno-v5-beta`
- **Best for:** en yüksek kaliteli şarkı üretimi
- **Price:** $0.1111 / song
- **Quality:** yüksek
- **Speed:** orta
- **Supports vocals:** evet
- **Supports instrumental:** evet
- **Ideal use cases:** yüksek kaliteli demolar, creator apps, premium müzik üretim iş akışları

### `suno-v4.5-beta`
- **Best for:** kalite ve maliyet dengesi
- **Price:** $0.0833 / song
- **Quality:** yüksek
- **Speed:** orta
- **Supports vocals:** evet
- **Supports instrumental:** evet
- **Ideal use cases:** çoğu production uygulaması, iyi kalite ile verimli maliyet dengesi

### `suno-v4.5plus-beta`
- **Best for:** eski entegrasyonlarla uyumluluk
- **Price:** $0.0833 / song
- **Quality:** yüksek
- **Speed:** orta
- **Supports vocals:** evet
- **Supports instrumental:** evet
- **Ideal use cases:** eski Suno entegrasyonlarını EvoLink.ai’ye taşıyan ekipler

### `suno-v4.5all-beta`
- **Best for:** geniş uyumluluk isteyen iş akışları
- **Price:** $0.0833 / song
- **Quality:** yüksek
- **Speed:** orta
- **Supports vocals:** evet
- **Supports instrumental:** evet
- **Ideal use cases:** legacy integration path ve geçiş senaryoları

### `suno-v4-beta`
- **Best for:** daha düşük maliyetli müzik üretimi
- **Price:** $0.0556 / song
- **Quality:** orta
- **Speed:** orta
- **Supports vocals:** evet
- **Supports instrumental:** evet
- **Ideal use cases:** prototipleme, bütçe hassasiyetine sahip uygulamalar, toplu deneyler

## Suno API Model Comparison

Uygulamanız için en uygun Suno API model’ini seçmek için bu karşılaştırma tablosunu kullanın.

| İhtiyacınız varsa... | Önerilen Model | Neden |
|---|---|---|
| en yüksek müzik kalitesi | `suno-v5-beta` | mevcut serinin en güçlü modeli |
| kalite ve fiyat dengesi | `suno-v4.5-beta` | çoğu uygulama için güçlü varsayılan seçim |
| en düşük Suno API maliyeti | `suno-v4-beta` | song başına daha düşük fiyat |
| eski entegrasyonlarla uyumluluk | `suno-v4.5plus-beta` / `suno-v4.5all-beta` | geçiş daha kolay olur |
| production için güvenli varsayılan seçenek | `suno-v4.5-beta` | kalite, maliyet ve uyumluluk dengesi iyi |

## Suno API nasıl kullanılır?

Suno API kullanımı genellikle dört adım içerir:

1. EvoLink.ai üzerinden bir API key almak
2. Doğru Suno API model’ini seçmek
3. `POST /v1/audios/generations` endpoint’ine üretim isteği göndermek
4. Sonuç hazır olana kadar `GET /v1/tasks/{task_id}` ile görev durumunu sorgulamak

Suno music generation asenkron çalışır. Create request önce bir task ID döndürür, ardından tamamlanan ses sonucu alınır.

## İstek modları

### Simple mode
Şarkı yapısının model tarafından otomatik oluşturulmasını istiyorsanız simple mode kullanın.

```json
{
  "model": "suno-v5-beta",
  "prompt": "A cheerful summer pop song about road trips and freedom"
}
```

### Custom mode
title, style, lyrics veya instrumental output üzerinde daha fazla kontrol istiyorsanız custom mode kullanın.

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
Instrumental çıktı istiyorsanız `instrumental` alanını `true` yapın.

```json
{
  "model": "suno-v4.5-beta",
  "custom_mode": true,
  "instrumental": true,
  "title": "Skyline Drive",
  "style": "cinematic synthwave, uplifting, driving"
}
```

## Görev iş akışı

### 1. Bir üretim görevi oluşturun

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

Örnek yanıt:

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

### 2. Görev durumunu sorgulayın

```bash
curl --request GET \
  --url https://api.evolink.ai/v1/tasks/task-unified-xxx-yyy \
  --header 'Authorization: Bearer YOUR_API_KEY'
```

Tamamlanmış yanıt örneği:

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

## Önemli parametreler

| Parametre | Tür | Ne işe yarar |
|---|---|---|
| `model` | string | Suno API model’ini seçer |
| `prompt` | string | prompt veya lyrics girdisi |
| `custom_mode` | boolean | ayrıntılı kontrolü etkinleştirir |
| `instrumental` | boolean | yalnızca instrumental çıktı üretir |
| `title` | string | custom mode için şarkı başlığı |
| `style` | string | tarz veya tür yönlendirmesi |
| `negative_tags` | string | kaçınılması gereken stiller veya özellikler |
| `persona_id` | string | daha önce oluşturulmuş Suno persona’yı yeniden kullanır |

## Model adı uyumluluğu

Eski model adları hâlâ desteklenir ve otomatik olarak ilgili beta varyantlarına eşlenir.

| Eski ad | Güncel uyumlu varyant |
|---|---|
| `suno-v5` | `suno-v5-beta` |
| `suno-v4.5` | `suno-v4.5-beta` |
| `suno-v4.5plus` | `suno-v4.5plus-beta` |
| `suno-v4.5all` | `suno-v4.5all-beta` |
| `suno-v4` | `suno-v4-beta` |

## Dil bazlı daha fazla Suno API örneği

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

## Suno API için en iyi prompt’lar

Daha iyi Suno API sonuçları almak için prompt içinde şunları tanımlayın:

- genre
- mood
- instruments
- vocal style
- tempo
- production feel

Örnek prompt:

```text
A dreamy indie pop song with soft female vocals, warm analog synths, gentle drums, and an emotional cinematic chorus
```

lyrics yazıyorsanız yapıyı düzenlemek için `[Verse]`, `[Chorus]` ve `[Bridge]` gibi etiketler kullanın.

## Yaygın kullanım senaryoları

Suno API şu alanlarda kullanılabilir:

- AI müzik uygulamaları
- creator tools
- lyric-to-song workflows
- sosyal video arka plan müziği
- oyun prototipleri
- podcast intro / outro üretimi
- marka içerik üretimi
- AI içerik otomasyon pipeline’ları

## FAQ

### Suno API nedir?
Suno API, prompt veya lyrics girdilerinden şarkılar, vocals ve instrumentaller üreten bir AI music generation API’sidir.

### Suno API ne kadar tutuyor?
Şu anda EvoLink.ai üzerindeki Suno API pricing, modele göre song başına $0.0556 ile $0.1111 arasında değişmektedir.

### En iyi Suno API model’i hangisi?
En yüksek kaliteyi istiyorsanız `suno-v5-beta` kullanın. Daha iyi maliyet verimliliği istiyorsanız `suno-v4.5-beta` veya `suno-v4-beta` kullanın.

### Suno API senkron mu?
Hayır. Suno API üretimi asenkrondur. Önce bir task oluşturur, sonra durumu `GET /v1/tasks/{task_id}` ile sorgularsınız.

### Suno API ile instrumental music üretebilir miyim?
Evet. `instrumental` alanını `true` olarak ayarlayın; genellikle `custom_mode` ile birlikte kullanılır.

### Suno API ile lyrics kullanabilir miyim?
Evet. custom mode içinde `prompt` alanı lyrics girdisi olarak kullanılabilir.

## İlgili bağlantılar

- [Suno API Pricing](https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Get API Key](https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Official Documentation](https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation)

## License

MIT
