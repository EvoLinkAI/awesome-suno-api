# Suno API Reference

## Create Audio Generation Task

```http
POST https://api.evolink.ai/v1/audios/generations
Authorization: Bearer ${EVOLINK_API_KEY}
Content-Type: application/json
```

Required:

| Parameter | Type | Description |
|---|---|---|
| `model` | string | Suno model ID, such as `suno-v5-beta` |
| `prompt` | string | Prompt or lyrics input, unless using instrumental custom mode |
| `custom_mode` | boolean | `false` for simple mode, `true` for title/style/lyrics control |
| `instrumental` | boolean | `false` for vocals, `true` for instrumental output |

Optional:

| Parameter | Type | Description |
|---|---|---|
| `title` | string | Song title in custom mode |
| `style` | string | Genre, mood, instrumentation, or production guidance |
| `negative_tags` | string | Styles or qualities to avoid |
| `vocal_gender` | string | `m` or `f`; increases probability of the requested vocal gender |
| `style_weight` | number | Style adherence weight from `0.0` to `1.0`; `0` is treated as unset |
| `weirdness_constraint` | number | Creativity/experimental weight from `0.0` to `1.0`; `0` is treated as unset |
| `audio_weight` | number | Audio feature weight from `0.0` to `1.0`; `0` is treated as unset |
| `persona_id` | string | Reuses a previously created Suno persona |
| `persona_model` | string | `style_persona` for all supported models or `voice_persona` for `suno-v5-beta` |
| `callback_url` | string | HTTPS endpoint for asynchronous task notification |

Model IDs:

- `suno-v5-beta`
- `suno-v4.5plus-beta`
- `suno-v4.5all-beta`
- `suno-v4.5-beta`
- `suno-v4-beta`

Backward-compatible IDs such as `suno-v5`, `suno-v4.5`, `suno-v4.5plus`, `suno-v4.5all`, and `suno-v4` are automatically mapped to the matching `-beta` models.

## Query Task Status

```http
GET https://api.evolink.ai/v1/tasks/{task_id}
Authorization: Bearer ${EVOLINK_API_KEY}
```

Use this endpoint until the task is `completed` or `failed`.
