#!/usr/bin/env bash
set -euo pipefail

# Ensure we’re in repo root
cd "$(dirname "${BASH_SOURCE[0]}")/.." || exit 1

python3 -m venv .venv
# shellcheck disable=SC1091
source .venv/bin/activate

python -m pip install --upgrade pip wheel
pip install -r requirements.txt

echo "✅ Linux setup complete. Activate with: source .venv/bin/activate"
