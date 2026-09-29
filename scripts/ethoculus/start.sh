#!/usr/bin/env bash
# Start the Ethoculus local stack.
set -euo pipefail
cd "$(dirname "$0")/../.."

if ! docker info >/dev/null 2>&1; then
  echo "Docker is not running. Open Docker Desktop, wait until it says it is running, then try again." >&2
  exit 1
fi

docker compose -f docker-compose.ethoculus.yaml up -d

echo ""
echo "Ethoculus is starting."
echo "Next: ./scripts/ethoculus/pull-model.sh qwen2.5:0.5b"
echo "Then open http://localhost:3000 (the first start can take a few minutes)."
