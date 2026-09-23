# QA Report: CREATE_REMINDER_DRINK_WATER

- **Files**: 600
- **Model**: small
- **Threshold**: 0.80
- **Flagged WAVs**: 4
- **Excluded WAVs (both scores below 0.80)**: 4

- **Cleanup policy**: move both files only when BOTH clean and noisy score below 0.80.

## Flagged

| file | expected | transcribed | score |
|---|---|---|---:|
| CREATE_REMINDER_DRINK_WATER_s69_v2_clean.wav | Remind me to drink water | so they might need to drink water. | 0.702 |
| CREATE_REMINDER_DRINK_WATER_s69_v2_noisy.wav | Remind me to drink water | It might mean to drink water. | 0.769 |
| CREATE_REMINDER_DRINK_WATER_s89_v1_clean.wav | Reminder drink water | I'm managing water. | 0.474 |
| CREATE_REMINDER_DRINK_WATER_s89_v1_noisy.wav | Reminder drink water | Mane de Angola. | 0.353 |
