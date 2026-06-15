# Suno API Callback / Webhook

Pass `callback_url` in the create request if you want EvoLink to notify your server about Suno task progress and completion.

```json
{
  "callback_url": "https://your-server.example.com/evolink-webhook"
}
```

Requirements:

- Use HTTPS.
- Use a publicly reachable endpoint.
- Do not use localhost or private IP addresses for production callbacks.
- Keep the URL under 2048 characters.
- Return a 2xx response quickly.
- Expect a 10 second callback timeout.
- EvoLink retries failed callbacks up to 3 times.
- Store the task ID so you can poll `GET /v1/tasks/{task_id}` as a fallback.

Callback stages:

- `text`: text generation stage.
- `first`: first track completed.
- `complete`: all tracks completed.

Some tasks may skip `text` and `first` and send `complete` directly.

Example callback payload:

```json
{
  "id": "task-unified-xxx-yyy",
  "status": "completed",
  "model": "suno-v5-beta",
  "results": [
    "https://media.evolink.ai/..."
  ]
}
```
