#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

if [[ -x env/bin/python ]]; then
  PYTHON="env/bin/python"
else
  PYTHON="${PYTHON:-python}"
fi

GPU="$(nvidia-smi --query-gpu=index,memory.used --format=csv,noheader,nounits |
  sort -t, -k2,2n | head -n 1 | cut -d, -f1 | tr -d ' ')"

echo "Using one DGX GPU: $GPU"
CUDA_VISIBLE_DEVICES="$GPU" "$PYTHON" -m nbconvert \
  --to notebook \
  --execute \
  --inplace \
  --ExecutePreprocessor.kernel_name=a1231-mex1 \
  --ExecutePreprocessor.timeout=1800 \
  mnistclass.ipynb
