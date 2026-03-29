[English](./README.md) | [简体中文](./README.zh-CN.md) | [繁體中文](./README.zh-TW.md) | [Español](./README.es.md) | [Deutsch](./README.de.md) | [Français](./README.fr.md) | [日本語](./README.ja.md) | [한국어](./README.ko.md) | [Türkçe](./README.tr.md) | [Русский](./README.ru.md)

# Awesome Suno API: Guía de precios, modelos, ejemplos e integración

<p align="center">
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=banner&utm_campaign=awesome-suno-api">
    <img src="./assets/banner.jpg" alt="Awesome Suno API - Pricing, Models and Integration Guide" width="100%" />
  </a>
</p>

Este repositorio práctico ayuda a los desarrolladores a entender los precios de Suno API, comparar modelos y conectar AI music generation con una sola llamada API.

## Quick Start: integración de Suno API en una sola llamada

Usa Suno API con una sola llamada API.

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
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">Ver precios de Suno API</a> ·
  <a href="https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">Obtener API Key</a> ·
  <a href="https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation">Leer documentación API</a>
</p>

## ¿Qué es Suno API?

Suno API es una API de generación musical con IA para crear canciones, voces, pistas basadas en letras y música instrumental a partir de prompts de texto. A través de EvoLink.ai, los desarrolladores pueden acceder a Suno music generation con una API unificada, precios transparentes y una integración lista para producción.

Este repositorio está pensado para desarrolladores que quieren:

- entender los precios de Suno API
- comparar los modelos de Suno API
- elegir el mejor model según calidad, velocidad o coste
- integrar Suno API en apps musicales, creator tools y AI workflows

## Suno API Pricing

Esta sección explica los precios de Suno API y el coste actual de cada modelo compatible en EvoLink.ai.

| Model | Precio | Mejor para | Notas |
|---|---:|---|---|
| `suno-v5-beta` | $0.1111 / song | generaciones de máxima calidad | la mejor calidad general |
| `suno-v4.5-beta` | $0.0833 / song | equilibrio entre calidad y coste | opción recomendada por defecto |
| `suno-v4.5plus-beta` | $0.0833 / song | compatibilidad con integraciones antiguas | útil para migraciones |
| `suno-v4.5all-beta` | $0.0833 / song | flujos con amplia compatibilidad | pensado para nombres legacy |
| `suno-v4-beta` | $0.0556 / song | generación de menor coste | opción más económica |

> Los precios deben coincidir siempre con la página oficial de Suno en EvoLink.ai. Si cambian, actualiza primero esta tabla.

## Suno API Models

### `suno-v5-beta`
- **Best for:** generación de canciones con la mayor calidad
- **Price:** $0.1111 / song
- **Quality:** alta
- **Speed:** media
- **Supports vocals:** sí
- **Supports instrumental:** sí
- **Ideal use cases:** demos pulidas, creator apps, flujos premium de generación musical

### `suno-v4.5-beta`
- **Best for:** equilibrio entre calidad y coste
- **Price:** $0.0833 / song
- **Quality:** alta
- **Speed:** media
- **Supports vocals:** sí
- **Supports instrumental:** sí
- **Ideal use cases:** la mayoría de apps en producción, iteración con buena calidad de salida

### `suno-v4.5plus-beta`
- **Best for:** compatibilidad con integraciones antiguas
- **Price:** $0.0833 / song
- **Quality:** alta
- **Speed:** media
- **Supports vocals:** sí
- **Supports instrumental:** sí
- **Ideal use cases:** equipos que migran integraciones antiguas de Suno a EvoLink.ai

### `suno-v4.5all-beta`
- **Best for:** workflows con compatibilidad amplia
- **Price:** $0.0833 / song
- **Quality:** alta
- **Speed:** media
- **Supports vocals:** sí
- **Supports instrumental:** sí
- **Ideal use cases:** rutas legacy y escenarios de migración

### `suno-v4-beta`
- **Best for:** generación musical de menor coste
- **Price:** $0.0556 / song
- **Quality:** media
- **Speed:** media
- **Supports vocals:** sí
- **Supports instrumental:** sí
- **Ideal use cases:** prototipos, apps sensibles al presupuesto, experimentos en lote

## Suno API Model Comparison

Usa esta tabla de comparación para elegir el mejor model de Suno API para tu app.

| Si necesitas... | Model recomendado | Motivo |
|---|---|---|
| la mejor calidad musical | `suno-v5-beta` | modelo más avanzado de la línea actual |
| el mejor equilibrio entre calidad y precio | `suno-v4.5-beta` | buena opción por defecto para la mayoría |
| el menor coste de Suno API | `suno-v4-beta` | precio por canción más bajo |
| compatibilidad con integraciones antiguas | `suno-v4.5plus-beta` / `suno-v4.5all-beta` | migración más sencilla |
| una opción segura para producción | `suno-v4.5-beta` | equilibrio sólido entre calidad, coste y compatibilidad |

## Cómo usar Suno API

Usar Suno API normalmente implica cuatro pasos:

1. Obtener un API key en EvoLink.ai
2. Elegir el model de Suno API adecuado
3. Enviar una solicitud de generación a `POST /v1/audios/generations`
4. Consultar el estado con `GET /v1/tasks/{task_id}` hasta que el resultado esté listo

Suno music generation es asíncrona. La solicitud de creación devuelve primero un task ID y después se consulta el resultado final del audio.

## Modos de solicitud

### Simple mode
Usa simple mode cuando quieras que el modelo genere automáticamente la estructura de la canción.

```json
{
  "model": "suno-v5-beta",
  "prompt": "A cheerful summer pop song about road trips and freedom"
}
```

### Custom mode
Usa custom mode cuando quieras controlar title, style, lyrics o la salida instrumental.

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
Si quieres una salida instrumental, configura `instrumental` como `true`.

```json
{
  "model": "suno-v4.5-beta",
  "custom_mode": true,
  "instrumental": true,
  "title": "Skyline Drive",
  "style": "cinematic synthwave, uplifting, driving"
}
```

## Flujo de tareas

### 1. Crear una tarea de generación

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

Respuesta de ejemplo:

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

### 2. Consultar el estado de la tarea

```bash
curl --request GET \
  --url https://api.evolink.ai/v1/tasks/task-unified-xxx-yyy \
  --header 'Authorization: Bearer YOUR_API_KEY'
```

Ejemplo de respuesta completada:

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

## Parámetros importantes

| Parámetro | Tipo | Qué hace |
|---|---|---|
| `model` | string | selecciona el model de Suno API |
| `prompt` | string | entrada de prompt o lyrics |
| `custom_mode` | boolean | activa el control detallado |
| `instrumental` | boolean | genera salida solo instrumental |
| `title` | string | título de la canción en custom mode |
| `style` | string | guía de estilo o género |
| `negative_tags` | string | estilos o rasgos que se deben evitar |
| `persona_id` | string | reutiliza una Suno persona creada previamente |

## Compatibilidad de nombres de model

Los nombres antiguos siguen siendo compatibles y se mapean automáticamente a las variantes beta.

| Nombre antiguo | Variante compatible actual |
|---|---|
| `suno-v5` | `suno-v5-beta` |
| `suno-v4.5` | `suno-v4.5-beta` |
| `suno-v4.5plus` | `suno-v4.5plus-beta` |
| `suno-v4.5all` | `suno-v4.5all-beta` |
| `suno-v4` | `suno-v4-beta` |

## Más ejemplos de Suno API por lenguaje

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

## Mejores prompts para Suno API

Para obtener mejores resultados con Suno API, los prompts deberían describir:

- genre
- mood
- instruments
- vocal style
- tempo
- production feel

Ejemplo de prompt:

```text
A dreamy indie pop song with soft female vocals, warm analog synths, gentle drums, and an emotional cinematic chorus
```

Si escribes lyrics, usa etiquetas como `[Verse]`, `[Chorus]` y `[Bridge]` para organizar la estructura.

## Casos de uso comunes

Suno API puede utilizarse para:

- aplicaciones de música con IA
- creator tools
- lyric-to-song workflows
- música de fondo para vídeos sociales
- prototipos de juegos
- intros y outros de podcasts
- generación de contenido de marca
- pipelines de automatización de contenido con IA

## FAQ

### ¿Qué es Suno API?
Suno API es una API de generación musical con IA para crear canciones, voces e instrumentales a partir de prompts o letras.

### ¿Cuánto cuesta Suno API?
Actualmente, el precio de Suno API en EvoLink.ai va de $0.0556 a $0.1111 por song según el model.

### ¿Qué model de Suno API es mejor?
Si buscas la mayor calidad, usa `suno-v5-beta`. Si buscas mejor eficiencia en costes, usa `suno-v4.5-beta` o `suno-v4-beta`.

### ¿Suno API es síncrona?
No. La generación en Suno API es asíncrona. Primero creas una task y luego consultas el estado con `GET /v1/tasks/{task_id}`.

### ¿Puedo generar música instrumental con Suno API?
Sí. Configura `instrumental` en `true`, normalmente dentro de `custom_mode`.

### ¿Puedo usar letras con Suno API?
Sí. En custom mode, el campo `prompt` puede usarse como entrada de lyrics.

## Enlaces relacionados

- [Suno API Pricing](https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Get API Key](https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Official Documentation](https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation)

## License

MIT
