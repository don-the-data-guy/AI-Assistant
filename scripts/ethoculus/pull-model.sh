#!/usr/bin/env bash
set -euo pipefail

MODEL="${1:-qwen2.5:0.5b}"
CONTAINER="ethoculus-ollama"

echo "Checking Ollama container..."
if ! docker ps --format '{{.Names}}' | grep -q "^${CONTAINER}$"; then
  echo "ERROR: ${CONTAINER} is not running."
  echo "Start Ethoculus first:"
  echo "./scripts/ethoculus/start.sh"
  exit 1
fi

echo "Pulling model: $MODEL"
docker exec "$CONTAINER" ollama pull "$MODEL"

echo ""
echo "Model installed: $MODEL"
echo "Open http://localhost:3000 and select the model."
