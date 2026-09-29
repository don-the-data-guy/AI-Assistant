#!/usr/bin/env bash
# Download a model into the Ethoculus Ollama container.
# Usage: ./scripts/ethoculus/pull-model.sh [model]   (default: qwen2.5:0.5b)
set -euo pipefail
cd "$(dirname "$0")/../.."

MODEL="${1:-qwen2.5:0.5b}"

if ! docker compose -f docker-compose.ethoculus.yaml ps --status running --services | grep -qx ollama; then
  echo "Ollama is not running. Start Ethoculus first: ./scripts/ethoculus/start.sh" >&2
  exit 1
fi

echo "Pulling model: $MODEL"
docker compose -f docker-compose.ethoculus.yaml exec ollama ollama pull "$MODEL"
echo "Done. Select $MODEL in Open WebUI at http://localhost:3000"
