#!/usr/bin/env bash
set -euo pipefail

# Download the Reddit sarcasm dataset from Kaggle into redditSarcasm/.
# Requires:
# - kaggle CLI installed (`pip install kaggle`)
# - Kaggle API token configured at ~/.kaggle/kaggle.json
#
# Usage:
#   bash scripts/download_reddit_sarcasm.sh

DATA_DIR="redditSarcasm"
ZIP_PATH="${DATA_DIR}/sarcasm.zip"
CSV_PATH="${DATA_DIR}/train-balanced-sarcasm.csv"

mkdir -p "${DATA_DIR}"

if [ -f "${CSV_PATH}" ]; then
  echo "Dataset already present at ${CSV_PATH}"
  exit 0
fi

echo "Downloading dataset with Kaggle CLI..."
kaggle datasets download -d danofer/sarcasm -p "${DATA_DIR}" --force

echo "Unzipping..."
unzip -o "${ZIP_PATH}" -d "${DATA_DIR}"

echo "Cleaning up..."
rm -f "${ZIP_PATH}"

echo "Done. CSV available at ${CSV_PATH}"

