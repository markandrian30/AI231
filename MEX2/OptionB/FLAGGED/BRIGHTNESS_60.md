# QA Report: BRIGHTNESS_60

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
| BRIGHTNESS_60_s4_v1_clean.wav | Brightness 60 percent | Righteous 60% | 0.606 |
| BRIGHTNESS_60_s76_v2_clean.wav | Adjust brightness to 60 percent | I'll just brighten this to 60%. | 0.794 |
| BRIGHTNESS_60_s76_v2_noisy.wav | Adjust brightness to 60 percent | I'll just brighten this to 60%. | 0.794 |
| BRIGHTNESS_60_s76_v3_clean.wav | Brightness level 60 percent | Guidance level 60%. | 0.769 |
| BRIGHTNESS_60_s76_v3_noisy.wav | Brightness level 60 percent | Guidance level 60%. | 0.769 |
