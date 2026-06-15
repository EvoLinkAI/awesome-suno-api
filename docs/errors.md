# Suno API Error Handling

| Error | Likely Cause | Fix |
|---|---|---|
| `401 Unauthorized` | Missing or invalid `EVOLINK_API_KEY` | Create a new key and set `export EVOLINK_API_KEY="..."` |
| `400 Bad Request` | Invalid model, prompt, custom mode fields, style, or persona ID | Check required fields and accepted model IDs |
| `404 Not Found` | Unknown task ID | Store the `id` returned by the create request |
| `429 Too Many Requests` | Rate limit or concurrency pressure | Retry with backoff or reduce concurrent tasks |
| `failed` task status | Provider-side generation failure or invalid input | Read `error.code` and `error.message`, then retry with corrected input |

Recommended client behavior:

- Check HTTP status before treating a response as successful.
- Print the API error body during development.
- Stop polling on `completed` or `failed`.
- Add a timeout to avoid infinite polling.
