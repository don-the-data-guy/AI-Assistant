#!/usr/bin/env bash
# Stop the Ethoculus local stack. Downloaded models and chat history are kept.
set -euo pipefail
cd "$(dirname "$0")/../.."

docker compose -f docker-compose.ethoculus.yaml down
echo "Ethoculus stopped."
