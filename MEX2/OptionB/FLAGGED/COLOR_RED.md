# QA Report: COLOR_RED

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Device**: CPU int8
- **Date**: 2026-09-22
- **Excluded WAVs (both scores below 0.80)**: 4
- **Flagged WAVs**: 5

- **Cleanup policy**: move both files only if BOTH clean and noisy score below 0.80. Single-condition failures retain both recordings.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| COLOR_RED_s46_v2_clean.wav | Switch color to red | pour to red. | 0.600 |
| COLOR_RED_s46_v2_noisy.wav | Switch color to red | floor to red. | 0.645 |
| COLOR_RED_s70_v1_clean.wav | Change color to red | Thanks for all of the red. | 0.545 |
| COLOR_RED_s70_v1_noisy.wav | Change color to red | Thanks for all of the red. | 0.545 |
| COLOR_RED_s71_v2_noisy.wav | Switch color to red | which call it a ray. | 0.579 |
