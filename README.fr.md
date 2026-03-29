[English](./README.md) | [简体中文](./README.zh-CN.md) | [繁體中文](./README.zh-TW.md) | [Español](./README.es.md) | [Deutsch](./README.de.md) | [Français](./README.fr.md) | [日本語](./README.ja.md) | [한국어](./README.ko.md) | [Türkçe](./README.tr.md) | [Русский](./README.ru.md)

# Awesome Suno API : guide des tarifs, modèles, exemples et intégration

<p align="center">
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=banner&utm_campaign=awesome-suno-api">
    <img src="./assets/banner.jpg" alt="Awesome Suno API - Pricing, Models and Integration Guide" width="100%" />
  </a>
</p>

Ce dépôt pratique aide les développeurs à comprendre les tarifs de Suno API, comparer les modèles et intégrer AI music generation avec un seul appel API.

## Quick Start : intégrer Suno API avec un seul appel API

Utilisez Suno API avec un seul appel API.

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
  <a href="https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">Voir les tarifs de Suno API</a> ·
  <a href="https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api">Obtenir une API Key</a> ·
  <a href="https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation">Lire la documentation API</a>
</p>

## Qu’est-ce que Suno API ?

Suno API est une API de génération musicale par IA permettant de créer des chansons, des voix, des morceaux basés sur des lyrics et de la musique instrumentale à partir de prompts textuels. Avec EvoLink.ai, les développeurs accèdent à Suno music generation via une API unifiée, une pricing transparente et une intégration adaptée à la production.

Ce dépôt s’adresse aux développeurs qui veulent :

- comprendre la Suno API pricing
- comparer les Suno API models
- choisir le meilleur model selon la qualité, la vitesse ou le coût
- intégrer Suno API dans des apps musicales, creator tools et AI workflows

## Suno API Pricing

Cette section explique la Suno API pricing ainsi que le coût actuel de chaque modèle pris en charge sur EvoLink.ai.

| Model | Prix | Idéal pour | Notes |
|---|---:|---|---|
| `suno-v5-beta` | $0.1111 / song | qualité maximale | meilleure qualité globale |
| `suno-v4.5-beta` | $0.0833 / song | équilibre qualité / coût | choix recommandé par défaut |
| `suno-v4.5plus-beta` | $0.0833 / song | compatibilité avec d’anciennes intégrations | utile pour les migrations |
| `suno-v4.5all-beta` | $0.0833 / song | workflows à large compatibilité | pensé pour le legacy naming |
| `suno-v4-beta` | $0.0556 / song | génération à moindre coût | option économique |

> Les prix doivent toujours correspondre à la page produit Suno d’EvoLink.ai. Si la pricing change, mettez d’abord ce tableau à jour.

## Suno API Models

### `suno-v5-beta`
- **Best for :** génération de chansons avec la meilleure qualité
- **Price :** $0.1111 / song
- **Quality :** élevée
- **Speed :** moyenne
- **Supports vocals :** oui
- **Supports instrumental :** oui
- **Ideal use cases :** démos premium, creator apps, workflows musicaux haut de gamme

### `suno-v4.5-beta`
- **Best for :** bon équilibre entre qualité et coût
- **Price :** $0.0833 / song
- **Quality :** élevée
- **Speed :** moyenne
- **Supports vocals :** oui
- **Supports instrumental :** oui
- **Ideal use cases :** la plupart des apps en production, itération avec bonne qualité de sortie

### `suno-v4.5plus-beta`
- **Best for :** compatibilité avec d’anciennes intégrations
- **Price :** $0.0833 / song
- **Quality :** élevée
- **Speed :** moyenne
- **Supports vocals :** oui
- **Supports instrumental :** oui
- **Ideal use cases :** équipes migrant d’anciennes intégrations Suno vers EvoLink.ai

### `suno-v4.5all-beta`
- **Best for :** workflows à compatibilité étendue
- **Price :** $0.0833 / song
- **Quality :** élevée
- **Speed :** moyenne
- **Supports vocals :** oui
- **Supports instrumental :** oui
- **Ideal use cases :** chemins legacy et scénarios de migration

### `suno-v4-beta`
- **Best for :** génération musicale à coût réduit
- **Price :** $0.0556 / song
- **Quality :** moyenne
- **Speed :** moyenne
- **Supports vocals :** oui
- **Supports instrumental :** oui
- **Ideal use cases :** prototypage, applications sensibles au budget, tests en lot

## Suno API Model Comparison

Utilisez ce tableau comparatif pour choisir le meilleur Suno API model pour votre app.

| Si vous avez besoin de... | Model recommandé | Pourquoi |
|---|---|---|
| la meilleure qualité musicale | `suno-v5-beta` | modèle le plus avancé de la gamme actuelle |
| le meilleur équilibre qualité / prix | `suno-v4.5-beta` | excellent choix par défaut pour la plupart des apps |
| le coût Suno API le plus bas | `suno-v4-beta` | prix par song plus faible |
| compatibilité avec des intégrations anciennes | `suno-v4.5plus-beta` / `suno-v4.5all-beta` | migration plus simple |
| une valeur sûre pour la production | `suno-v4.5-beta` | bon équilibre entre qualité, coût et compatibilité |

## Comment utiliser Suno API

L’utilisation de Suno API suit généralement quatre étapes :

1. Obtenir une API key sur EvoLink.ai
2. Choisir le bon Suno API model
3. Envoyer une requête de génération à `POST /v1/audios/generations`
4. Vérifier l’état avec `GET /v1/tasks/{task_id}` jusqu’à ce que le résultat soit prêt

Suno music generation est asynchrone. La requête de création renvoie d’abord un task ID, puis vous récupérez ensuite le résultat audio final.

## Modes de requête

### Simple mode
Utilisez le simple mode si vous voulez que le modèle génère automatiquement la structure de la chanson.

```json
{
  "model": "suno-v5-beta",
  "prompt": "A cheerful summer pop song about road trips and freedom"
}
```

### Custom mode
Utilisez le custom mode si vous souhaitez contrôler le title, le style, les lyrics ou la sortie instrumentale.

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
Si vous voulez une sortie instrumentale, définissez `instrumental` sur `true`.

```json
{
  "model": "suno-v4.5-beta",
  "custom_mode": true,
  "instrumental": true,
  "title": "Skyline Drive",
  "style": "cinematic synthwave, uplifting, driving"
}
```

## Workflow des tâches

### 1. Créer une tâche de génération

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

Exemple de réponse :

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

### 2. Vérifier l’état de la tâche

```bash
curl --request GET \
  --url https://api.evolink.ai/v1/tasks/task-unified-xxx-yyy \
  --header 'Authorization: Bearer YOUR_API_KEY'
```

Exemple de réponse terminée :

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

## Paramètres importants

| Paramètre | Type | Rôle |
|---|---|---|
| `model` | string | sélectionne le Suno API model |
| `prompt` | string | entrée de prompt ou de lyrics |
| `custom_mode` | boolean | active un contrôle plus fin |
| `instrumental` | boolean | génère une sortie instrumentale uniquement |
| `title` | string | titre du morceau en custom mode |
| `style` | string | indication de style ou de genre |
| `negative_tags` | string | styles ou caractéristiques à éviter |
| `persona_id` | string | réutilise une Suno persona créée précédemment |

## Compatibilité des noms de model

Les anciens noms de model sont toujours pris en charge et sont automatiquement mappés vers les variantes beta correspondantes.

| Ancien nom | Variante actuelle compatible |
|---|---|
| `suno-v5` | `suno-v5-beta` |
| `suno-v4.5` | `suno-v4.5-beta` |
| `suno-v4.5plus` | `suno-v4.5plus-beta` |
| `suno-v4.5all` | `suno-v4.5all-beta` |
| `suno-v4` | `suno-v4-beta` |

## Plus d’exemples Suno API par langage

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

## Meilleurs prompts pour Suno API

Pour obtenir de meilleurs résultats avec Suno API, les prompts devraient décrire :

- genre
- mood
- instruments
- vocal style
- tempo
- production feel

Exemple de prompt :

```text
A dreamy indie pop song with soft female vocals, warm analog synths, gentle drums, and an emotional cinematic chorus
```

Si vous écrivez des lyrics, utilisez des balises comme `[Verse]`, `[Chorus]` et `[Bridge]` pour organiser la structure.

## Cas d’usage courants

Suno API peut être utilisée pour :

- applications musicales basées sur l’IA
- creator tools
- lyric-to-song workflows
- musique de fond pour vidéos sociales
- prototypes de jeux
- intros et outros de podcasts
- génération de contenu de marque
- pipelines d’automatisation de contenu IA

## FAQ

### Qu’est-ce que Suno API ?
Suno API est une API de génération musicale par IA permettant de créer des chansons, des voix et des instrumentaux à partir de prompts ou de lyrics.

### Combien coûte Suno API ?
Actuellement, la Suno API pricing sur EvoLink.ai varie de $0.0556 à $0.1111 par song selon le model choisi.

### Quel est le meilleur Suno API model ?
Si vous voulez la meilleure qualité, utilisez `suno-v5-beta`. Si vous recherchez une meilleure efficacité de coût, utilisez `suno-v4.5-beta` ou `suno-v4-beta`.

### Suno API est-elle synchrone ?
Non. La génération Suno API est asynchrone. Vous créez d’abord une task, puis vous interrogez son état via `GET /v1/tasks/{task_id}`.

### Puis-je générer de la musique instrumentale avec Suno API ?
Oui. Définissez `instrumental` sur `true`, généralement avec `custom_mode`.

### Puis-je utiliser des lyrics avec Suno API ?
Oui. En custom mode, le champ `prompt` peut être utilisé comme entrée de lyrics.

## Liens associés

- [Suno API Pricing](https://evolink.ai/suno?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Get API Key](https://evolink.ai/signup?utm_source=github&utm_medium=readme&utm_campaign=awesome-suno-api)
- [Official Documentation](https://docs.evolink.ai/en/api-manual/audio-series/suno/suno-music-generation)

## License

MIT
