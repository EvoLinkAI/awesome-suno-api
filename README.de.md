[English](./README.md) | [简体中文](./README.zh-CN.md) | [繁體中文](./README.zh-TW.md) | [Español](./README.es.md) | [Deutsch](./README.de.md) | [Français](./README.fr.md) | [日本語](./README.ja.md) | [한국어](./README.ko.md) | [Türkçe](./README.tr.md) | [Русский](./README.ru.md)

# Awesome Suno API: Preise, Modelle, Beispiele und Integrationsleitfaden

<p align="center">
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=banner&utm_campaign=awesome-suno-api">
    <img src="./assets/banner.jpg" alt="Awesome Suno API - Pricing, Models and Integration Guide" width="100%" />
  </a>
</p>

Dieses praxisnahe Repository hilft Entwicklern, die Preise der Suno API zu verstehen, Modelle zu vergleichen und AI music generation mit nur einem API-Aufruf zu integrieren.

## Quick Start: Suno API mit einer einzigen API-Anfrage integrieren

Nutze die Suno API mit nur einem API-Aufruf.

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
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">Suno API Pricing ansehen</a> ·
  <a href="https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">API Key holen</a> ·
  <a href="https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation">API-Dokumentation lesen</a>
</p>

## Was ist die Suno API?

Die Suno API ist eine KI-Musik-API zum Erstellen von Songs, Vocals, lyrics-basierten Tracks und Instrumentalstücken aus Text-Prompts. Über EvoLink.ai erhalten Entwickler Zugriff auf Suno music generation mit einer einheitlichen API, transparenter Pricing und produktionsreifer Integration.

Dieses Repository richtet sich an Entwickler, die:

- die Suno API Pricing verstehen möchten
- Suno API models vergleichen möchten
- das passende model nach Qualität, Geschwindigkeit oder Kosten auswählen wollen
- die Suno API in Musik-Apps, creator tools und AI workflows integrieren möchten

## Suno API Pricing

Dieser Abschnitt erklärt die Suno API Pricing und die aktuellen Kosten der unterstützten Modelle auf EvoLink.ai.

| Model | Preis | Am besten für | Hinweise |
|---|---:|---|---|
| `suno-v5-beta` | $0.1111 / song | höchste Qualitätsansprüche | beste Gesamtqualität |
| `suno-v4.5-beta` | $0.0833 / song | gutes Verhältnis aus Qualität und Kosten | empfohlene Standardwahl |
| `suno-v4.5plus-beta` | $0.0833 / song | Kompatibilität mit älteren Integrationen | sinnvoll für Migrationen |
| `suno-v4.5all-beta` | $0.0833 / song | Workflows mit breiter Kompatibilität | für legacy naming |
| `suno-v4-beta` | $0.0556 / song | kostengünstigere Generierung | budgetfreundliche Option |

> Die Preise sollten immer mit der aktuellen Suno-Produktseite auf EvoLink.ai übereinstimmen. Wenn sich Pricing ändert, aktualisiere zuerst diese Tabelle.

## Suno API Models

### `suno-v5-beta`
- **Best for:** Song-Generierung mit höchster Qualität
- **Price:** $0.1111 / song
- **Quality:** hoch
- **Speed:** mittel
- **Supports vocals:** ja
- **Supports instrumental:** ja
- **Ideal use cases:** hochwertige Demos, creator apps, Premium-Musik-Workflows

### `suno-v4.5-beta`
- **Best for:** ausgewogenes Verhältnis aus Qualität und Kosten
- **Price:** $0.0833 / song
- **Quality:** hoch
- **Speed:** mittel
- **Supports vocals:** ja
- **Supports instrumental:** ja
- **Ideal use cases:** die meisten produktiven Apps, gute Qualität bei effizientem Budget

### `suno-v4.5plus-beta`
- **Best for:** Kompatibilität mit älteren Integrationen
- **Price:** $0.0833 / song
- **Quality:** hoch
- **Speed:** mittel
- **Supports vocals:** ja
- **Supports instrumental:** ja
- **Ideal use cases:** Teams, die ältere Suno-Integrationen zu EvoLink.ai migrieren

### `suno-v4.5all-beta`
- **Best for:** breit kompatible Workflows
- **Price:** $0.0833 / song
- **Quality:** hoch
- **Speed:** mittel
- **Supports vocals:** ja
- **Supports instrumental:** ja
- **Ideal use cases:** legacy integration paths und Migrationsszenarien

### `suno-v4-beta`
- **Best for:** günstigere Musikgenerierung
- **Price:** $0.0556 / song
- **Quality:** mittel
- **Speed:** mittel
- **Supports vocals:** ja
- **Supports instrumental:** ja
- **Ideal use cases:** Prototyping, budgetkritische Anwendungen, Batch-Experimente

## Suno API Model Comparison

Nutze diese Vergleichstabelle, um das passende Suno API model für deine App auszuwählen.

| Wenn du ... brauchst | Empfohlenes Model | Warum |
|---|---|---|
| die beste Musikqualität | `suno-v5-beta` | leistungsstärkstes Modell der aktuellen Reihe |
| das beste Preis-Leistungs-Verhältnis | `suno-v4.5-beta` | starke Standardwahl für die meisten Apps |
| die niedrigsten Suno API Kosten | `suno-v4-beta` | geringerer Preis pro song |
| Kompatibilität mit älteren Integrationen | `suno-v4.5plus-beta` / `suno-v4.5all-beta` | einfacherer Migrationspfad |
| eine sichere Standardwahl für Produktion | `suno-v4.5-beta` | gutes Gleichgewicht aus Qualität, Kosten und Kompatibilität |

## Wie verwendet man die Suno API?

Die Nutzung der Suno API umfasst normalerweise vier Schritte:

1. Einen API key bei EvoLink.ai holen
2. Das passende Suno API model auswählen
3. Einen Generierungs-Request an `POST /v1/audios/generations` senden
4. Den Task-Status über `GET /v1/tasks/{task_id}` abfragen, bis das Ergebnis bereit ist

Suno music generation ist asynchron. Der Create-Request gibt zuerst eine task ID zurück, danach wird das fertige Audio-Ergebnis abgeholt.

## Request-Modi

### Simple mode
Verwende simple mode, wenn das Modell die Songstruktur automatisch erzeugen soll.

```json
{
  "model": "suno-v5-beta",
  "prompt": "A cheerful summer pop song about road trips and freedom"
}
```

### Custom mode
Verwende custom mode, wenn du title, style, lyrics oder instrumental output genauer steuern willst.

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
Wenn du nur instrumentale Ausgabe möchtest, setze `instrumental` auf `true`.

```json
{
  "model": "suno-v4.5-beta",
  "custom_mode": true,
  "instrumental": true,
  "title": "Skyline Drive",
  "style": "cinematic synthwave, uplifting, driving"
}
```

## Task-Workflow

### 1. Einen Generierungs-Task erstellen

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

Beispielantwort:

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

### 2. Task-Status abfragen

```bash
curl --request GET \
  --url https://api.evolink.ai/v1/tasks/task-unified-xxx-yyy \
  --header 'Authorization: Bearer YOUR_API_KEY'
```

Beispiel für eine abgeschlossene Antwort:

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

## Wichtige Parameter

| Parameter | Typ | Bedeutung |
|---|---|---|
| `model` | string | wählt das Suno API model aus |
| `prompt` | string | Prompt- oder Lyrics-Eingabe |
| `custom_mode` | boolean | aktiviert feinere Steuerung |
| `instrumental` | boolean | erzeugt rein instrumentale Ausgabe |
| `title` | string | Songtitel im custom mode |
| `style` | string | Stil- oder Genre-Hinweis |
| `negative_tags` | string | Stile oder Eigenschaften, die vermieden werden sollen |
| `persona_id` | string | verwendet eine zuvor erstellte Suno persona erneut |

## Kompatibilität von Model-Namen

Ältere Model-Namen werden weiterhin unterstützt und automatisch auf die entsprechenden Beta-Varianten gemappt.

| Alter Name | Aktuelle kompatible Variante |
|---|---|
| `suno-v5` | `suno-v5-beta` |
| `suno-v4.5` | `suno-v4.5-beta` |
| `suno-v4.5plus` | `suno-v4.5plus-beta` |
| `suno-v4.5all` | `suno-v4.5all-beta` |
| `suno-v4` | `suno-v4-beta` |

## Weitere Suno API Beispiele nach Sprache

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

## Beste Prompts für die Suno API

Für bessere Ergebnisse mit der Suno API sollten Prompts folgende Punkte beschreiben:

- genre
- mood
- instruments
- vocal style
- tempo
- production feel

Beispiel-Prompt:

```text
A dreamy indie pop song with soft female vocals, warm analog synths, gentle drums, and an emotional cinematic chorus
```

Wenn du Lyrics schreibst, verwende Tags wie `[Verse]`, `[Chorus]` und `[Bridge]`, um die Struktur zu organisieren.

## Häufige Anwendungsfälle

Die Suno API kann verwendet werden für:

- KI-Musik-Apps
- creator tools
- lyric-to-song workflows
- Hintergrundmusik für Social Videos
- Spiele-Prototypen
- Podcast-Intros und Outros
- Branded Content
- KI-gestützte Content-Automation-Pipelines

## FAQ

### Was ist die Suno API?
Die Suno API ist eine KI-Musik-API zum Erstellen von Songs, Vocals und Instrumentals aus Prompts oder Lyrics.

### Wie viel kostet die Suno API?
Die aktuelle Suno API Pricing auf EvoLink.ai liegt – je nach model – zwischen $0.0556 und $0.1111 pro song.

### Welches Suno API model ist das beste?
Wenn du die höchste Qualität willst, nutze `suno-v5-beta`. Wenn du mehr Wert auf Kosteneffizienz legst, nutze `suno-v4.5-beta` oder `suno-v4-beta`.

### Ist die Suno API synchron?
Nein. Suno API-Generierung ist asynchron. Zuerst erstellst du einen Task, anschließend fragst du den Status über `GET /v1/tasks/{task_id}` ab.

### Kann ich mit der Suno API instrumentale Musik erzeugen?
Ja. Setze `instrumental` auf `true`, typischerweise zusammen mit `custom_mode`.

### Kann ich Lyrics mit der Suno API verwenden?
Ja. Im custom mode kann das Feld `prompt` als Lyrics-Eingabe verwendet werden.

## Verwandte Links

- [Suno API Pricing](https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Get API Key](https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Official Documentation](https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation)

## License

MIT
