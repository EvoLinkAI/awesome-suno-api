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
