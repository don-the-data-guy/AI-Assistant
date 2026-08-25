#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
COMPOSE_FILE="$ROOT_DIR/docker-compose.ethoculus.yml"

echo "Stopping Ethoculus..."
docker compose -f "$COMPOSE_FILE" down

echo "Ethoculus stopped."
