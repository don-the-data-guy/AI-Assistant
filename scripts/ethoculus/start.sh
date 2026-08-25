#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
COMPOSE_FILE="$ROOT_DIR/docker-compose.ethoculus.yml"

"$ROOT_DIR/scripts/ethoculus/doctor.sh"

echo ""
echo "Starting Ethoculus..."
docker compose -f "$COMPOSE_FILE" up -d

echo ""
echo "Ethoculus is starting."
echo "Open this in your browser:"
echo "http://localhost:3000"
echo ""
echo "Then pull the starter model:"
echo "./scripts/ethoculus/pull-model.sh qwen2.5:0.5b"
