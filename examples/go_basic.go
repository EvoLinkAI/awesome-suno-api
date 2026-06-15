package main

import (
	"bytes"
	"fmt"
	"net/http"
	"os"
)

func main() {
	apiKey := os.Getenv("EVOLINK_API_KEY")
	if apiKey == "" {
		panic("Set EVOLINK_API_KEY first")
	}

	body := []byte(`{"model":"suno-v5-beta","custom_mode":false,"instrumental":false,"prompt":"A dreamy indie pop song with warm synths"}`)
	req, _ := http.NewRequest("POST", "https://api.evolink.ai/v1/audios/generations", bytes.NewBuffer(body))
	req.Header.Set("Authorization", "Bearer "+apiKey)
	req.Header.Set("Content-Type", "application/json")

	resp, err := http.DefaultClient.Do(req)
	if err != nil {
		panic(err)
	}
	defer resp.Body.Close()
	fmt.Println(resp.Status)
}
