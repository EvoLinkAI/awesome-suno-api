const response = await fetch("https://api.evolink.ai/v1/audios/generations", {
  method: "POST",
  headers: {
    Authorization: `Bearer ${process.env.EVOLINK_API_KEY}`,
    "Content-Type": "application/json"
  },
  body: JSON.stringify({
    model: "suno-v5-beta",
    custom_mode: false,
    instrumental: false,
    prompt: "An uplifting electronic pop track with bright melodies"
  })
});

console.log(await response.json());
