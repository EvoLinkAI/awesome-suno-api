#!/usr/bin/env bash
set -euo pipefail

: "${EVOLINK_API_KEY:?Set EVOLINK_API_KEY first}"

CREATE_RESPONSE=$(curl -sS --request POST \
  --url "https://api.evolink.ai/v1/audios/generations" \
  --header "Authorization: Bearer ${EVOLINK_API_KEY}" \
  --header "Content-Type: application/json" \
  --data '{
    "model": "suno-v5-beta",
    "custom_mode": false,
    "instrumental": false,
    "prompt": "A cheerful summer pop song about road trips and freedom"
  }')

TASK_ID=$(printf '%s' "$CREATE_RESPONSE" | jq -r '.id // empty')
if [ -z "$TASK_ID" ]; then
  printf 'Create task failed:\n%s\n' "$CREATE_RESPONSE" >&2
  exit 1
fi

for _ in $(seq 1 160); do
  TASK=$(curl -sS --request GET \
    --url "https://api.evolink.ai/v1/tasks/${TASK_ID}" \
    --header "Authorization: Bearer ${EVOLINK_API_KEY}")

  STATUS=$(printf '%s' "$TASK" | jq -r '.status // empty')
  if [ "$STATUS" = "completed" ]; then
    printf '%s\n' "$TASK" | jq .
    exit 0
  fi
  if [ "$STATUS" = "failed" ]; then
    printf 'Task failed:\n%s\n' "$TASK" >&2
    exit 1
  fi
  sleep 3
done

printf 'Timed out waiting for task %s\n' "$TASK_ID" >&2
exit 1
