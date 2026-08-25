---
title: "Troubleshooting Ethoculus"
slug: "ethoculus-troubleshooting"
excerpt: "Fix common Ethoculus installation, Docker, model, and browser problems."
---

# Troubleshooting Ethoculus

This page covers the problems most likely to happen during the first install.

## Docker is not running

Symptom:

```text
Cannot connect to the Docker daemon
```

Fix:

1. Open Docker Desktop.
2. Wait until Docker says it is running.
3. Try again:

```bash
./scripts/start.sh
```

## Permission denied on scripts

Symptom:

```text
permission denied: ./scripts/start.sh
```

Fix:

```bash
chmod +x scripts/start.sh scripts/pull-model.sh scripts/stop.sh
```

Then run:

```bash
./scripts/start.sh
```

## Browser does not open Ethoculus

Try:

```text
http://localhost:3000
```

Then check running containers:

```bash
docker ps
```

You should see:

```text
ethoculus-ollama
ethoculus-webui
```

If not, restart:

```bash
docker compose up -d
```

## No model appears

Pull the default model:

```bash
./scripts/pull-model.sh
```

Then refresh the browser.

## Model download is slow

Model downloads depend on your internet connection and model size. The default model is small to keep the first install practical.

Use the default first. Upgrade later.

## Ethoculus feels slow

Try a smaller model. Close other memory-heavy apps. Remember that local models depend heavily on your machine’s CPU, GPU, and memory.

## Reset Ethoculus data

Warning: this removes local containers and named volumes. You may lose local chats, settings, and downloaded models.

```bash
docker compose down -v
```

Then restart:

```bash
./scripts/start.sh
./scripts/pull-model.sh
```

## See logs

```bash
docker logs ethoculus-webui
```

```bash
docker logs ethoculus-ollama
```

## Update containers

```bash
docker compose pull
docker compose up -d
```

## Ask for help

When reporting a problem, include:

1. Operating system.
2. Docker version.
3. Exact command you ran.
4. Exact error message.
5. Output of `docker ps`.
6. Whether the model was pulled successfully.

## Troubleshooting principle

Do not hide the machinery. Make errors visible, understandable, and fixable.
