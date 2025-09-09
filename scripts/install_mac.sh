#!/usr/bin/env bash
set -euo pipefail

# Ensure we’re in repo root
cd "$(dirname "${BASH_SOURCE[0]}")/.." || exit 1

# Use the system Python 3 (or your preferred Python 3)
python3 -m venv .venv
# shellcheck disable=SC1091
source .venv/bin/activate

python -m pip install --upgrade pip wheel
pip install -r requirements.txt

echo "✅ macOS setup complete. Activate with: source .venv/bin/activate"
