# Reddit Sarcasm Dataset

The training CSVs are large (>100 MB) and are not tracked in Git. Download them locally before running notebooks that depend on them.

## Quick download (requires Kaggle account)

1) Install Kaggle CLI and configure your token:
```
pip install kaggle
mkdir -p ~/.kaggle
cp /path/to/kaggle.json ~/.kaggle/  # from your Kaggle account settings
chmod 600 ~/.kaggle/kaggle.json
```

2) Run the download script from the repo root:
```
bash scripts/download_reddit_sarcasm.sh
```

This will place `redditSarcasm/train-balanced-sarcasm.csv` in the correct folder. The compressed `train-balanced-sarc.csv.gz` will also be available if provided by the dataset.

If you prefer a smaller sample for quick experiments, downsample in your notebook (e.g., `df.sample(n=20000, random_state=42)`).

