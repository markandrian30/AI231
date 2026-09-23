# QA Report: TEMPERATURE_18

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 2
- **Excluded WAVs (both scores below 0.80)**: 2

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| TEMPERATURE_18_s74_v1_clean.wav | Temperature 18 degrees | 808 degrees | 0.545 |
| TEMPERATURE_18_s74_v1_noisy.wav | Temperature 18 degrees | 808 degrees | 0.545 |
