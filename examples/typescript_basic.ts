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
