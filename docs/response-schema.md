# Suno API Response Schema

## Create Task Response

```json
{
  "id": "task-unified-xxx-yyy",
  "object": "audio.generation.task",
  "created": 1774168248,
  "model": "suno-v5-beta",
  "status": "pending",
  "progress": 0,
  "type": "audio",
  "task_info": {
    "can_cancel": true,
    "estimated_time": 120
  },
  "usage": {
    "billing_rule": "per_call",
    "credits_reserved": 10,
    "user_group": "default"
  }
}
```

## Completed Task Response

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

## Failed Task Response

```json
{
  "id": "task-unified-xxx-yyy",
  "status": "failed",
  "error": {
    "code": "invalid_request",
    "message": "Explain what went wrong."
  }
}
```

Generated audio and image URLs are valid for 72 hours. Save completed results to your own storage promptly.
