# QA Report: BRIGHTNESS_100

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Device**: CPU int8
- **Date**: 2026-09-22
- **Excluded WAVs (both scores below 0.80)**: 0
- **Flagged WAVs**: 3

- **Cleanup policy**: move both files only if BOTH clean and noisy score below 0.80. Single-condition failures retain both recordings.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| BRIGHTNESS_100_s1_v3_clean.wav | Brightness level 100 percent | brightness level one hundred percent | 0.781 |
| BRIGHTNESS_100_s4_v1_clean.wav | Brightness 100 percent | Greatness 100% | 0.571 |
| BRIGHTNESS_100_s70_v2_noisy.wav | Adjust brightness to 100 percent | I just practice to 100% | 0.742 |
