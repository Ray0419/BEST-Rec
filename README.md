# BEST-Rec

BERT-Embedded Self-Attention Transformer Recommender (BEST-Rec): Tackling Sparsity and Cold-Starts in Large-Scale Recommender Systems.

# Amazon Reviews 2023 — Beauty Notebook

This repository contains a Jupyter notebook (`beauty.ipynb`) to explore the **Amazon Reviews 2023** dataset (Beauty subset).

---

## Data source (Point 4)

The raw dataset is publicly available on Hugging Face in the **`raw/`** folder:

**https://huggingface.co/datasets/McAuley-Lab/Amazon-Reviews-2023/tree/main**

Download the Beauty subset (Parquet files) and place them locally, e.g.:

```
data/raw/Beauty/
  ├─ part-000*.parquet
  └─ ...
```

Update the path in the first cell of `beauty.ipynb` if your layout differs.

---

## How to run

### Option A: Use `requirements.txt` (How to run Point 2)

From the project root:

```bash
# 1) Create and activate a virtual environment
python3 -m venv .venv
source .venv/bin/activate   # (Windows: .venv\Scripts\activate)

# 2) Upgrade pip and install dependencies
python -m pip install --upgrade pip wheel
pip install -r requirements.txt

# 3) Launch the notebook
jupyter lab    # or: jupyter notebook
```

Open `beauty.ipynb` and run the cells.

---

### Option B: Use the install scripts

If you have the helper scripts:

- Linux: `scripts/install_linux.sh`
- macOS: `scripts/install_mac.sh`

Make them executable and run:

```bash
chmod +x scripts/install_linux.sh scripts/install_mac.sh

# Choose one based on your OS:
./scripts/install_linux.sh
# or
./scripts/install_mac.sh

# Then start Jupyter
jupyter lab    # or: jupyter notebook
```

> These scripts create `.venv/`, install dependencies from `requirements.txt`, and print an activation hint when done.

---

## Suggested project layout

```
.
├─ beauty.ipynb
├─ requirements.txt
├─ scripts/
│  ├─ install_linux.sh
│  └─ install_mac.sh
└─ data/
   └─ raw/
      └─ Beauty/
         ├─ part-000*.parquet
         └─ ...
```

## Troubleshooting

- **`pyarrow` install issues**: upgrade pip first (`python -m pip install --upgrade pip`) and then reinstall.
- **Permission errors on scripts**: run `chmod +x scripts/*.sh`.
- **Notebook can’t find data**: verify the path you set in the first notebook cell matches where you saved the Parquet files (e.g., `data/raw/Beauty/`).
