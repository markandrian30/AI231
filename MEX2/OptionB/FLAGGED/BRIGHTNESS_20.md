# QA Report: BRIGHTNESS_20

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 5
- **Excluded WAVs (both scores below 0.80)**: 4

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| BRIGHTNESS_20_s24_v1_clean.wav | Brightness 20 percent | Greatness, 20% | 0.545 |
| BRIGHTNESS_20_s75_v1_clean.wav | Brightness 20 percent |  | 0.000 |
| BRIGHTNESS_20_s75_v1_noisy.wav | Brightness 20 percent |  | 0.000 |
| BRIGHTNESS_20_s75_v3_clean.wav | Brightness level 20 percent |  | 0.000 |
| BRIGHTNESS_20_s75_v3_noisy.wav | Brightness level 20 percent |  | 0.000 |
