---
title: "Install Ethoculus"
slug: "install-ethoculus"
excerpt: "Install Ethoculus using Git, Docker Compose, Ollama, Open WebUI, and a small starter model."
---

# Install Ethoculus

This guide gets Ethoculus running locally with Docker Compose.

## What you need

1. A computer with Docker installed.
2. Git installed.
3. Internet access for the first model download.
4. Enough disk space for Docker images and AI model files.

The starter model is intentionally small. Larger models will require more disk, memory, and patience.

## Step 1: Clone the repository

```bash
git clone https://github.com/YOUR-USERNAME/ethoculus.git
cd ethoculus
```

Replace `YOUR-USERNAME` with the GitHub account or organization where Ethoculus lives.

## Step 2: Start the platform

```bash
./scripts/start.sh
```

This starts two services:

1. `ethoculus-ollama` — the local model runner.
2. `ethoculus-webui` — the browser interface.

## Step 3: Pull the starter model

```bash
./scripts/pull-model.sh
```

By default, this pulls:

```text
qwen2.5:0.5b
```

That model is small on purpose. It is not the smartest model. It is the fastest path to a working demo.

## Step 4: Open Ethoculus

Open this address in your browser:

```text
http://localhost:3000
```

Create your first local account in Open WebUI, select the model, and begin chatting.

## Step 5: Try a stronger model later

Once the starter system works, you can try larger models:

```bash
./scripts/pull-model.sh qwen2.5:1.5b
```

```bash
./scripts/pull-model.sh qwen2.5:3b
```

Larger models may respond better, but they will also use more resources.

## Stop Ethoculus

```bash
./scripts/stop.sh
```

## Restart Ethoculus

```bash
./scripts/start.sh
```

## Update containers

```bash
docker compose pull
docker compose up -d
```

## Common first-run issue

If the browser opens but no model appears, run:

```bash
./scripts/pull-model.sh
```

Then refresh the browser.

## Installation principle

Ethoculus should be simple enough that a motivated beginner can install it, but transparent enough that a technical user can inspect every moving part.
