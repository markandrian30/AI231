# QA Report: COLOR_GREEN

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 4
- **Excluded WAVs (both scores below 0.80)**: 4

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| COLOR_GREEN_s4_v3_clean.wav | Set color to green | Siggler to green. | 0.706 |
| COLOR_GREEN_s4_v3_noisy.wav | Set color to green | Fit alert to green. | 0.722 |
| COLOR_GREEN_s74_v3_clean.wav | Set color to green | Set color to green set color to green | 0.655 |
| COLOR_GREEN_s74_v3_noisy.wav | Set color to green | Set color to green set color to green | 0.655 |
