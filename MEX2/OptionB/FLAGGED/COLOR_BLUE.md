# QA Report: COLOR_BLUE

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Device**: CPU int8
- **Date**: 2026-09-22
- **Excluded WAVs (both scores below 0.80)**: 2
- **Flagged WAVs**: 2

- **Cleanup policy**: move both files only if BOTH clean and noisy score below 0.80. Single-condition failures retain both recordings.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| COLOR_BLUE_s75_v2_clean.wav | Switch color to blue |  | 0.000 |
| COLOR_BLUE_s75_v2_noisy.wav | Switch color to blue |  | 0.000 |
