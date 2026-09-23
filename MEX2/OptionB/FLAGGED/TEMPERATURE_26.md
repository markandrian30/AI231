# QA Report: TEMPERATURE_26

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 2
- **Excluded WAVs (both scores below 0.80)**: 2

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| TEMPERATURE_26_s78_v1_clean.wav | Temperature 26 degrees | and broach at 0.6 degrees. | 0.553 |
| TEMPERATURE_26_s78_v1_noisy.wav | Temperature 26 degrees | and broach at 26 degrees. | 0.609 |
