# QA Report: BRIGHTNESS_20

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Device**: CPU int8
- **Date**: 2026-09-22
- **Excluded WAVs (both scores below 0.80)**: 2
- **Flagged WAVs**: 3

- **Cleanup policy**: move both files only if BOTH clean and noisy score below 0.80. Single-condition failures retain both recordings.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| BRIGHTNESS_20_s25_v1_clean.wav | Brightness 20 percent | Greatness, 20% | 0.545 |
| BRIGHTNESS_20_s75_v3_clean.wav | Brightness level 20 percent |  | 0.000 |
| BRIGHTNESS_20_s75_v3_noisy.wav | Brightness level 20 percent |  | 0.000 |
