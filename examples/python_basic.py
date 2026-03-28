import requests
import time

API_KEY = "YOUR_API_KEY"
headers = {
    "Authorization": f"Bearer {API_KEY}",
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

print("Task created:", create_resp)
task_id = create_resp["id"]

while True:
    task = requests.get(
        f"https://api.evolink.ai/v1/tasks/{task_id}",
        headers={"Authorization": f"Bearer {API_KEY}"}
    ).json()
    print(task)
    if task.get("status") == "completed":
        break
    time.sleep(3)
