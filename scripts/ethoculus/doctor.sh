#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
COMPOSE_FILE="$ROOT_DIR/docker-compose.ethoculus.yml"

echo "Ethoculus Doctor"
echo "================"
echo ""

echo "Checking Docker command..."
if ! command -v docker >/dev/null 2>&1; then
  echo "ERROR: Docker is not installed or not available in PATH."
  echo "Install Docker Desktop, then try again."
  exit 1
fi
echo "OK: Docker command found."
echo ""

echo "Checking Docker Desktop / Docker daemon..."
if ! docker info >/dev/null 2>&1; then
  echo "ERROR: Docker is installed, but the Docker daemon is not responding."
  echo ""
  echo "Try:"
  echo "  open -a Docker"
  echo ""
  echo "Then wait until Docker Desktop is fully running and rerun:"
  echo "  ./scripts/ethoculus/doctor.sh"
  exit 1
fi
echo "OK: Docker daemon is running."
echo ""

echo "Checking Docker Compose..."
if ! docker compose version >/dev/null 2>&1; then
  echo "ERROR: Docker Compose is not available."
  echo "Install or update Docker Desktop."
  exit 1
fi
docker compose version
echo ""

echo "Checking Ethoculus compose file..."
if [ ! -f "$COMPOSE_FILE" ]; then
  echo "ERROR: Missing docker-compose.ethoculus.yml at:"
  echo "$COMPOSE_FILE"
  exit 1
fi
echo "OK: Found docker-compose.ethoculus.yml."
echo ""

echo "Checking common ports..."
if command -v lsof >/dev/null 2>&1; then
  if lsof -i :3000 >/dev/null 2>&1; then
    echo "WARNING: Port 3000 is already in use. Open WebUI may fail to start."
  else
    echo "OK: Port 3000 appears available."
  fi

  if lsof -i :11434 >/dev/null 2>&1; then
    echo "WARNING: Port 11434 is already in use. Ollama may already be running."
  else
    echo "OK: Port 11434 appears available."
  fi
else
  echo "SKIP: lsof not available; cannot check ports."
fi
echo ""

echo "Disk space:"
df -h "$ROOT_DIR" || true
echo ""

echo "Ethoculus doctor check complete."
